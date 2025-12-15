#!/bin/bash

HTML_DIR="raw_html"
PARSED_DIR="parsed_results"
SQL_FILE="parsed_results.sql"
LOG_FILE="parse.log"
DB_NAME="f1_2025"

# Refresh parsed results directory
rm -rf "$PARSED_DIR"
mkdir -p "$PARSED_DIR"

# Refresh SQL file
echo "USE $DB_NAME;" > "$SQL_FILE"

echo "--- Parsing ran at $(date) ---" >> "$LOG_FILE"

# Function to filter the data
parse_row() {
    local ROW="$1"
    local GP_ID="$2"

    ROW_SINGLE=$(echo "$ROW" | tr '\n' ' ')

    # Extract TDs into array
    TD=()
    while IFS= read -r cell; do
        TD+=("$cell")
    done < <(
        echo "$ROW_SINGLE" |
        sed -E 's/<\/td>/\n/g' |
        sed -E 's/.*<td[^>]*>//' |
        sed -E 's/<[^>]*>//g'
    )

    POSITION="${TD[0]}"
    CAR_NUM="${TD[2]}"
    DRIVER_FULL="${TD[3]}"
    TEAM="${TD[4]}"
    ENGINE="${TD[5]}"
    LAPS="${TD[6]}"
    TIME="${TD[7]}"
    GAP="${TD[8]:-0}"
    INT="${TD[9]:-0}"
    KMH="${TD[10]}"
    PITS="${TD[11]}"
    POINTS="${TD[13]:-0}"

    [[ -z "$DRIVER_FULL" || -z "$TEAM" ]] && return

    RETIREMENT=0
    case "${TD[12]^^}" in
        DNF|DNS|DSQ|RET)
        RETIREMENT="${TD[12]}"
        POSITION=0
        POINTS=0
        ;;
    esac

    # Clean integers
    [[ "$POSITION" != "0" ]] && POSITION=$(echo "$POSITION" | tr -cd '0-9')
    LAPS=$(echo "$LAPS" | tr -cd '0-9')
    KMH=$(echo "$KMH" | tr -cd '0-9.')
    PITS=$(echo "$PITS" | tr -cd '0-9')
    POINTS=$(echo "$POINTS" | tr -cd '0-9')
    GAP=$(echo "$GAP" | tr -cd '0-9.')
    INT=$(echo "$INT" | tr -cd '0-9.')

    # Replace empty integers with NULL
    [[ -z "$POSITION" ]] && POSITION=0
    [[ -z "$LAPS" ]] && LAPS=0
    [[ -z "$KMH" ]] && KMH=0
    [[ -z "$PITS" ]] && PITS=0
    [[ -z "$POINTS" ]] && POINTS=0
    [[ -z "$GAP" ]] && GAP=0
    [[ -z "$INT" ]] && INT=0

    DRIVER_FIRST=$(echo "$DRIVER_FULL" | awk '{print $1}')
    DRIVER_LAST=$(echo "$DRIVER_FULL" | awk '{print $2}')
    DRIVER="$DRIVER_FIRST $DRIVER_LAST"

    # Escape quotes
    DRIVER=$(echo "$DRIVER" | sed "s/'/''/g")
    TEAM=$(echo "$TEAM" | sed "s/'/''/g")
    TIME=$(echo "$TIME" | sed "s/'/''/g")
    GAP=$(echo "$GAP" | sed "s/'/''/g")
    KMH=$(echo "$KMH" | sed "s/'/''/g")
    INT=$(echo "$INT" | sed "s/'/''/g")

    # Write cleaned txt file for this GP
    GP_FILE="$PARSED_DIR/$GP_ID.txt"
    if [ ! -f "$GP_FILE" ]; then
        echo "$POSITION|$CAR_NUM|$DRIVER_FIRST|$DRIVER_LAST|$TEAM|$ENGINE|$LAPS|$TIME|$GAP|$INT|$KMH|$PITS|$POINTS|0|0" > "$GP_FILE"
    else
        echo "$POSITION|$CAR_NUM|$DRIVER_FIRST|$DRIVER_LAST|$TEAM|$ENGINE|$LAPS|$TIME|$GAP|$INT|$KMH|$PITS|$POINTS|0|0" >> "$GP_FILE"
    fi

    # SQL inserts
    {
        echo "INSERT IGNORE INTO drivers (name, car_num, team) VALUES ('$DRIVER', '$CAR_NUM', '$TEAM');"
        echo "INSERT IGNORE INTO constructors (team) VALUES ('$TEAM');"
        echo "INSERT IGNORE INTO race_results (gp_id, driver_id, constructor_id, position, laps, time, gap, kmh, pits, retirement, points, pen, reprim) VALUES ("
        echo "  '$GP_ID',"
        echo "  (SELECT driver_id FROM drivers WHERE car_num='$CAR_NUM'),"
        echo "  (SELECT constructor_id FROM constructors WHERE team='$TEAM'),"
        echo "  $POSITION, $LAPS, '$TIME', '$GAP', '$KMH', $PITS, $RETIREMENT, $POINTS, 0, 0"
        echo ");"
    } >> "$SQL_FILE"
}

# Loop over HTML files
for FILE in "$HTML_DIR"/*.html; do
  GP_ID=$(basename "$FILE" .html)
  echo "Parsing GP $GP_ID" >> "$LOG_FILE"

  echo "INSERT IGNORE INTO grand_prix (gp_id) VALUES ('$GP_ID');" >> "$SQL_FILE"

  ROW=""
  awk '/<tr valign="top">/,/<\/tr>/' "$FILE" | while read -r LINE; do
    ROW+="$LINE"
    if [[ "$LINE" == *"</tr>"* ]]; then
      parse_row "$ROW" "$GP_ID"
      ROW=""
    fi
  done
done

echo "Parsing complete. Cleaned files in $PARSED_DIR and SQL in $SQL_FILE."


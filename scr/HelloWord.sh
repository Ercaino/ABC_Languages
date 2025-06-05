#!/bin/bash

echo "Hello, World!"

# chmod +x HelloWord.sh
# ./HelloWord.sh

# bash HelloWord.sh


# Simple demo
#!/bin/bash

SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$DATE.tar.gz"

echo "Creating backup of $SOURCE_DIR..."

tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .

echo "Backup completed: $BACKUP_DIR/$BACKUP_NAME"
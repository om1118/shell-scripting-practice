# Backup Shell Script

A simple Bash script that creates a ZIP backup of a folder and saves it
in a destination folder with a timestamp in the filename.

## Script

```bash
src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip -r "$2/backup-$timestamp.zip" $1

echo "backup completed"
```

## Usage

1. Save the script as `backup.sh`
2. Make it executable:
```bash
   chmod +x backup.sh
```
3. Run the script with source and destination folders:
```bash
   ./backup.sh  
```

## Example

```bash
./backup.sh /home/user/documents /home/user/backups
```

This creates:
```
/home/user/backups/backup-2024-01-25.zip
```

## Explanation of Key Parts

| Part | Explanation |
|------|-------------|
| `src=$1` | Stores the first argument (source folder) in `src` |
| `dest=$2` | Stores the second argument (destination folder) in `dest` |
| `timestamp=$(date '+%Y-%m-%d')` | Gets today's date in `YYYY-MM-DD` format and stores it |
| `%Y` | 4-digit year (e.g. 2024) |
| `%m` | 2-digit month (e.g. 01) |
| `%d` | 2-digit day (e.g. 25) |
| `zip -r` | Creates a ZIP file recursively (includes all subfolders) |
| `"$2/backup-$timestamp.zip"` | The output ZIP file saved in the destination folder with timestamp |


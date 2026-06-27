What is Cron?

Cron is a time-based job scheduler in Linux/Unix systems used to automate tasks.
It allows you to run scripts or commands automatically at predefined times or intervals.

Crontab Syntax

* * * * * command
| | | | |
| | | | └── Day of week (0 - 7) (Sunday = 0 or 7)
| | | └──── Month (1 - 12)
| | └────── Day of month (1 - 31)
| └──────── Hour (0 - 23)
└────────── Minute (0 - 59)

Commands to Manage Cron


crontab -e   # Edit cron jobs
crontab -l   # List cron jobs
crontab -r   # Remove all cron jobs


Example Cron Command

* * * * * bash /home/ubuntu/shell-scripting-practice/09-backup/backup.sh /home/ubuntu/shell-scripting-practice /home/ubuntu/scripts_backup

Explanation

Time Schedule

* * * * *

Means run every minute

Command Breakdown

bash /home/ubuntu/shell-scripting-practice/09-backup/backup.sh /home/ubuntu/shell-scripting-practice /home/ubuntu/scripts_backup

bash- Runs the script using Bash shell
/home/ubuntu/.../backup.sh- Backup script path
/home/ubuntu/shell-scripting-practice- Source directory (what to backup)
/home/ubuntu/scripts_backup- Destination directory (where backup is stored)

What This Cron Job Does

Every minute:

Executes the backup.sh script
Takes files from:

/home/ubuntu/shell-scripting-practice

Creates a backup in:

/home/ubuntu/scripts_backup



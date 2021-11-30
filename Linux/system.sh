#!/bin/bash
#prints free memory to a file
free -h > ~/backups/freemem/free_mem.txt

#prints disk usage to a file
du -h > ~/backups/diskuse/disk_usage.txt

#lists open files
lsof /dev/null > ~/backups/openlist/open_list.txt

#prints file system disk space statistics to a file
df -h > ~/backups/freedisk/free_disk.txt


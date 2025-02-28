# shell-script_projects

# 1. Monitoring Free RAM Space and Disk Space in Linux

## Overview
This shell script monitors the available **RAM space** and **disk space** on a Linux system. It provides alerts if the available memory or disk space falls below a certain threshold.

## Features
- Checks available **free RAM** in MB.
- Checks **disk space usage** of the `xvda16` partition.
- Displays a **warning message** if:
  - Available **RAM** is below **500MB**.
  - **Disk usage** exceeds **80%**.

## Prerequisites
- A **Linux** system with **Bash** installed.
- `free` command to check RAM usage.
- `df` command to check disk usage.
- `awk`, `grep`, and `tr` utilities for text processing.

## Usage
### 1. Clone the Repository
```sh
# Using Git
git clone https://github.com/your-username/Monitoring_Free_Ram_Space_And_Disk_Space.git
cd Monitoring_Free_Ram_Space_And_Disk_Space
```

### 2. Make the Script Executable
```sh
chmod +x Monitoring_Free_Ram_Space_And_Disk_Space.sh
```

### 3. Run the Script
```sh
./Monitoring_Free_Ram_Space_And_Disk_Space.sh

### **Breakdown**:
1. **RAM Monitoring**:
   - `free -mt | grep "Total" | awk '{print $4}'` extracts the available free memory in MB.
   - If RAM is **less than 500MB**, a **warning** is displayed.

2. **Disk Space Monitoring**:
   - `df -H` lists disk usage.
   - `grep "xvda16" | awk '{print $5}' | tr -d '%'` extracts the disk usage percentage.
   - If disk usage is **80% or higher**, a **warning** is displayed.
```
#### 4. Output
```

RAM space is sufficient - 1024 MB
All good 45% used
```
OR
```
Warning, disk space is low
```

# 2. Archive Older Logs in Shell Scripting

## Overview

This project automates the process of archiving older logs in a specified directory. The script identifies files larger than 1MB, compresses them using `gzip`, and moves them to an `archive` folder within the same directory. A cron job is used to execute this script daily at a scheduled time.

I created a directory named `find_command`, where I added some files. The script scans this directory, and any files larger than 1MB are moved to the `archive` folder. The `archive` folder is created inside the `find_command` directory if it does not already exist.

## Steps Implemented in the Script

1. Provide the path of the directory.
2. Check if the directory exists.
3. Create an `archive` folder if it is not already present.
4. Find all files larger than 1MB.
5. Compress each file using `gzip`.
6. Move the compressed file to the `archive` folder.
7. Schedule a cron job to run the script daily at a specific time.

## Shell Script

Create a shell script file named `Archive_older_logs.sh` and write the following code in it:

- Check if the specified directory exists.
- Create an `archive` folder if it does not already exist.
- Find files larger than 1MB in the directory.
- Compress the identified files using `gzip`.
- Move the compressed files to the `archive` folder.

## Cron Job

To automate the execution of the script daily at a specified time, add the following entry to your crontab:

```bash
31 13 * * * /home/ubuntu/shell-script_projects/Archive_older_logs.sh
```

### Explanation of the Cron Job

- `31 13 * * *` → Runs the script at 13:31 (1:31 PM) every day (this is only an example; you can set the time according to your need).
- The script path is specified as `/home/ubuntu/shell-script_projects/Archive_older_logs.sh`.

## Requirements

- Linux
- Bash shell
- `gzip` command
- `cron` service enabled

## How to Use

1. Create a shell script file named `Archive_older_logs.sh`.
2. Write the necessary code inside the script.
3. Ensure that the script has executable permissions:
   ```bash
   chmod +x Archive_older_logs.sh
   ```
4. Manually run the script to verify functionality:
   ```bash
   ./Archive_older_logs.sh
   ```
5. Add the cron job to automate execution.

## Notes

- Ensure that the user executing the script has the necessary permissions for the directory.
- Modify the `BASE` variable in the script to point to the desired directory.
- The script only compresses files that are larger than 1MB.

## License

This project is open-source and available for modification as needed.

## Author
**NAMAN**  
GitHub: [Namaannn001](https://github.com/Namaannn001/)


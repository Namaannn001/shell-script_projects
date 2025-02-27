# shell-script_projects

# Monitoring Free RAM Space and Disk Space in Linux

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

## License
This project is licensed under the **MIT License**.

## Author
**NAMAN**  
GitHub: [Namaannn001](https://github.com/Namaannn001/)


# Open Source Audit: Git
**Author:** Akshat Sharma  
**Registration Number:** 24BEC10124  
**Course:** Open Source Software  

## Project Overview
This repository contains five Bash shell scripts developed as part of a capstone audit on the open-source version control system, **Git**. These scripts demonstrate system telemetry extraction, package inspection, disk/permission auditing, log analysis, and interactive user input within a Linux environment.

## Environment Setup & Prerequisites
To execute these scripts, you will need:
* A Linux environment (Ubuntu/Debian recommended).
* Standard administrative privileges (`sudo` access may be required for certain log files).
* The `git` package installed on the system. 

If Git is not installed, install it using:
`sudo apt update && sudo apt install git`

## Step-by-Step Execution Instructions

First, clone this repository to your local machine and navigate into the directory:
```bash
git clone [https://github.com/AkshatIsWired/oss-audit-24BEC10124.git](https://github.com/AkshatIsWired/oss-audit-24BEC10124.git)
cd oss-audit-24BEC10124
```

Next, grant execution permissions to all scripts:
```bash
chmod +x *.sh
```

### Script 1: System Identity Reporter
This script extracts and displays core system telemetry, including the kernel version, uptime, and OS distribution.
* **Run:** `./script1.sh`

### Script 2: FOSS Package Inspector
This script verifies if Git is installed on the system and extracts its version and maintainer metadata using `dpkg`.
* **Run:** `./script2.sh`

### Script 3: Disk and Permission Auditor
This script loops through critical system directories (e.g., `/etc`, `/var/log`) and the Git configuration directory, reporting their total size and access permissions.
* **Run:** `./script3.sh`

### Script 4: Automated Log File Analyzer
This script parses a target log file line-by-line, counting the occurrences of a specific keyword and printing the last 5 matches.
* **Run:** `./script4.sh /var/log/syslog error`
*(Note: You can replace `/var/log/syslog` with any valid log file path, and `error` with any search term).*

### Script 5: Open Source Manifesto Generator
This is an interactive script that prompts the user for three inputs regarding open-source philosophy and generates a customized `.txt` file with the results.
* **Run:** `./script5.sh`
* Follow the on-screen prompts. The output will be saved to a file named `manifesto_[username].txt` in the same directory.

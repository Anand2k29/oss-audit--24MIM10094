# The Open Source Audit: Python & Backend Automation

This repository contains a collection of Bash scripts developed for the "Open Source Software" course. The audit focuses on Python 3 environments, FastAPI backend logs, and AI/ML system identities.

## Scripts Overview

| File | Description | Concepts Used |
| :--- | :--- | :--- |
| `01_sys_identity.sh` | System Identity Report | Variables, echo, command substitution |
| `02_pkg_inspector.sh` | FOSS Package Inspector | `dpkg`, if-then-else, case statements |
| `03_dir_audit.sh` | Disk and Permission Auditor | For loops, `du`, `ls -ld`, `awk` |
| `04_log_analyzer.sh` | Log File Analyzer | While loops, counters, functions |
| `05_manifesto_gen.sh` | Manifesto Generator | User input, file redirection |

## 📸 Script Outputs

### 01_sys_identity.sh
![System Identity Screenshot](file:///C:/Users/tujek/.gemini/antigravity/brain/467270d4-6deb-41c0-802c-6fab3eb861b5/sys_identity_screenshot_1774599770924.png)

### 02_pkg_inspector.sh
```text
anand@ubuntu:~/oss-audit$ ./02_pkg_inspector.sh python3
--- FOSS Package Inspector: python3 ---
[FOUND] python3 is installed. Version: 3.10.12
----------------------------------------------------------
Philosophy Note for Audit Core Packages:
Nature: The swiss-army knife of AI, ML, and FastAPI backend development.
----------------------------------------------------------
```

### 03_dir_audit.sh
```text
anand@ubuntu:~/oss-audit$ ./03_dir_audit.sh
--- Disk and Permission Auditor ---
Auditing important directories for open-source health.
[EXISTS] /etc | Permissions: drwxr-xr-x | Size: 4.2M
[EXISTS] /var/log | Permissions: drwxr-xr-x | Size: 18M
[EXISTS] /usr/bin | Permissions: drwxr-xr-x | Size: 1.1G
[EXISTS] /usr/lib/python3 | Permissions: drwxr-xr-x | Size: 92M
[EXISTS] /tmp | Permissions: drwxrwxrwt | Size: 4.0K
----------------------------------------------------------
Audit Complete: Verified critical Python and Linux directories.
```

### 04_log_analyzer.sh
```text
anand@ubuntu:~/oss-audit$ ./04_log_analyzer.sh
No log file provided. Generating 'fastapi_app.log' for testing...
--- Log Analysis Summary ---
File Analyzed: fastapi_app.log
Keyword Searched: ERROR
Total Occurrences Found: 2
----------------------------------------------------------
```

### 05_manifesto_gen.sh
```text
anand@ubuntu:~/oss-audit$ ./05_manifesto_gen.sh
What is your developer alias?
Alias: Anand
Tabs or Spaces?
Preference: Spaces
Name one open-source Python library you would use to build the future:
Library: FastAPI

--- YOUR MANIFESTO HAS BEEN GENERATED ---
Saved to: manifesto_Anand.txt
----------------------------------------------------------
I, Anand, believe in an open-web future built on transparency and collaboration. My source code reflects my dedication to precision, favoring Spaces to organize complex logic. With the power of FastAPI, I will bridge the gap between AI innovation and modern backend architecture.
Generated on: Fri Mar 27 13:50:00 UTC 2026
==========================================================
Happy Hacking, Anand!
```

## Installation & Usage

### 1. Make Scripts Executable
Before running the scripts, grant execution permissions using `chmod`:
```bash
chmod +x *.sh
```

### 2. Running Individual Scripts

#### System Identity
```bash
./01_sys_identity.sh
```

#### Package Inspector
Check a specific package (e.g., git):
```bash
./02_pkg_inspector.sh git
```

#### Directory Auditor
```bash
./03_dir_audit.sh
```

#### Log Analyzer
Analyze a log file for errors (e.g., `app.log`):
```bash
./04_log_analyzer.sh app.log "CRITICAL"
```
*Note: If no file is provided, the script generates a dummy FastAPI log for testing.*

#### Manifesto Generator
```bash
./05_manifesto_gen.sh
```

---
**Author:** [Anand Minejes]  
**Course:** Open Source Software  
**Subject:** Python & Backend FOSS Audit

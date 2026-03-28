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
![System Identity](images/ss1.png)

### 02_pkg_inspector.sh
![Package Inspector](images/ss2.png)

### 03_dir_audit.sh
![Directory Audit](images/ss3.png)

### 04_log_analyzer.sh
![Log Analyzer](images/ss4.png)

### 05_manifesto_gen.sh
![Manifesto Generator](images/ss5.png)

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

# linux-system-toolkit
This repository contains a collection of scripts used to manage and monitor enterprise Linux environments (RHEL/Ubuntu).
Category: Security & Hardening
-user_audit.sh: A script that lists all users with sudo privileges, checks for accounts with empty passwords, and identifies users who haven't logged in for 90+ days.

-ssh_hardener.sh: Automates security best practices: disables root login, changes the default port, and enforces SSH Key authentication.

-firewall_config.sh: A script to quickly reset and configure ufw or firewalld with standard enterprise rules (allowing only SSH, HTTP, and HTTPS).

Category: Automation & Maintenance
-auto_patcher.sh: A script for RHEL/Ubuntu that checks for security updates, emails a list of pending patches to an admin, and (optionally) installs them.

-log_rotator_custom.sh: Finds log files larger than a specific size (e.g., 500MB), compresses them into .gz format, and moves them to an archive folder to save disk space.

-service_monitor.sh: Checks if critical services (like nginx, docker, or mysql) are running. If a service is down, it attempts to restart it and logs the event.

Category: Backup & Recovery
-db_backup_manager.sh: Automates a MySQL or PostgreSQL dump, timestamps the file, and moves it to a secondary mount point or cloud storage.

-config_backup.sh: A "Pre-change" script that copies critical config files (like /etc/nginx/, /etc/fstab, or /etc/ssh/) into a dated backup folder before you perform maintenance.

Category: Networking & IPAM (The Infoblox Alternative)
-ip_scanner.sh: A simple tool that pings a specific subnet and reports which IP addresses are currently active. (This demonstrates your IPAM/Networking logic).

-dns_lookup_tester.sh: A script that takes a list of domain names and tests them against specific DNS servers to verify resolution and latency.

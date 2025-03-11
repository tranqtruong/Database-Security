# Database Migration & Security Lab

## Overview
This repository contains a practical lab report on migrating and securing a SQL Server database. The lab demonstrates the following:

- **Detach & Attach** a database from Server A to Server B
- **Backup & Restore** a database between two servers
- **Encrypt the database** using Transparent Data Encryption (TDE)
- **Handle migration of an encrypted database**, including certificate transfer

The lab was conducted as part of the *Application Security & Database Security* course at *Posts and Telecommunications Institute of Technology (PTIT)*.

## Lab Details
### 1. Detach & Attach Database
- **Scenario:** Move the "Quản lý Giải bóng đá vô địch quốc gia V-League" database from Server A to Server B.
- **Steps:**
  1. Detach the database from Server A.
  2. Copy the MDF & LDF files to Server B.
  3. Attach the database to Server B.
  4. Verify success.

### 2. Backup & Restore Database
- **Scenario:** Backup the database on Server A and restore it on Server B.
- **Steps:**
  1. Perform a full database backup on Server A.
  2. Copy the backup file to Server B.
  3. Restore the database on Server B with appropriate file path adjustments.
  4. Verify success.

### 3. Encrypt Database with TDE
- **Scenario:** Enable TDE encryption for the database on Server A.
- **Steps:**
  1. Create a master key and a certificate.
  2. Enable TDE encryption on the database.
  3. Verify encryption status.

### 4. Migrate Encrypted Database (Detach & Attach)
- **Scenario:** Detach and attach an encrypted database between servers.
- **Issue:** Attach fails due to missing encryption certificate on Server B.
- **Solution:**
  1. Backup the encryption certificate from Server A.
  2. Copy the certificate to Server B.
  3. Restore the certificate and master key on Server B.
  4. Reattempt attaching the database.

### 5. Migrate Encrypted Database (Backup & Restore)
- **Scenario:** Restore an encrypted database on Server B.
- **Steps:**
  1. Backup the database on Server A.
  2. Copy the backup file to Server B.
  3. Restore the certificate and master key.
  4. Restore the database with encryption enabled.
  5. Verify success.

## Files Included
- `Report.pdf` - Detailed lab report with screenshots and explanations.
- `cau_c.sql` - SQL script for enabling TDE encryption.
- `cau_e.sql` - SQL script for handling certificate migration.
- `cau_f.sql` - SQL script for backup & restore of encrypted database.

## Skills Demonstrated
- SQL Server administration
- Database backup & restore operations
- Database security and encryption (TDE)
- Troubleshooting database migration issues
- Certificate management for secure database transfer

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/tranqtruong/Database-Security.git
   ```
2. Follow the steps outlined in the `Report.pdf`.
3. Execute the SQL scripts as needed.

## Contact
For any questions or clarifications, feel free to reach out!

---
**Author:** Trần Quốc Trượng  
**Course:** Application Security & Database Security  
**Institution:** Posts and Telecommunications Institute of Technology (PTIT)  


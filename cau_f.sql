--f) Thực hiện Backup và Restore CSDL quản lý “Quản lý Giải bóng đá vô địch quốc gia V League” trong Lab02 đã mã hóa TDE từ server A sang server B. 
BACKUP DATABASE [QLBongDa]
TO DISK = N'D:\BackUp\fileBackUp.bak';
GO

RESTORE DATABASE [QLBongDa]
  FROM DISK = N'D:\BackUp\fileBackUp.bak'
  WITH MOVE 'QLBongDa' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QLBongDa.mdf',
       MOVE 'QLBongDa_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QLBongDa_log.ldf';
GO
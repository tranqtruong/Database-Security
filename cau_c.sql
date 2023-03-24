/*---------------------------------------------------------- 
MASV: N18DCAT100
HO TEN: Trần Quốc Trượng
LAB: 05 
NGAY: 29/10/2021
----------------------------------------------------------*/ 
--CAC CAU LENH DE THUC HIEN MA HOA

--B1 tao master key duoc ma hoa boi service master key 
use master
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '123@';

--B2 Tao certificate duoc ma hoa boi DB master key
use master
go
CREATE CERTIFICATE TDECert 
WITH SUBJECT = 'Database_Encryption';
go

--B3 tao key ma hoa DTB (key dc ma hoa boi Cert)
USE QLBongDa;
GO
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE TDECert

--B4 Chọn DB name enable mã hóa
ALTER DATABASE QLBongDa
SET ENCRYPTION ON;
GO



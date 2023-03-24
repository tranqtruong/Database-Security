-- e) Nếu kết quả câu d là thất bại, mô tả các bước thực hiện để xử lý lỗi trên.

---Backup Certificate
use master
go
backup certificate TDECert to file = 'D:\SVA_Certificate_Backup.cer'
with private key(
file = 'D:\SVA_PK_Backup.pvk',
encryption by password = '123abc')


--select * from sys.symmetric_keys
USE master  
GO  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = '1234@';
GO


---server 2 restore certificate
use master
go
create certificate MySalaryCert
 from file = 'D:\2020\SVA_Certificate_Backup.cer'
 with private key
  ( file = 'D:\2020\SVA_PK_Backup.pvk'
  , decryption by password = '123abc'
   );
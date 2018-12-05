CREATE PROC Select_MyTable2
@email varchar(255)
AS
BEGIN

SELECT TOP 1 * FROM MyTable;

SELECT @@IDENTITY;

  EXEC('USE AuthDB; SELECT id FROM user WHERE email = ''' + @email + ''' ;'); -- Noncompliant could inject code using @email

  declare @string varchar(max) = 'SELECT * FROM MyTable WHERE '


SELECT @STRING += @email

EXEC ( @STRING)

END
/*
@badstring varchar(max) --'1=1 ;DROP TABLE MyTable'
AS
BEGIN

declare @string varchar(max) = 'SELECT * FROM MyTable WHERE '


SELECT @STRING += @badstring

EXEC ( @STRING)

*/

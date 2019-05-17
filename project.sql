CREATE TABLE file(/path VARCHAR(255),file varchar(255));

SET @cmd = 'dir ' + @path + '*.csv /b'
    INSERT INTO  files(file)
    EXEC Master..xp_cmdShell @cmd
    UPDATE files SET WHICHPATH = @path where path is null

For this challenge, I would have used a forEach loop container in the SSIS package and then loop through the csv files. I would
use the Data Flow task and then write expressions on Connection Manager. I would use the Flat File Source in SSIS to read
data from the files and load them onto the SQL Server Table using the OLE Database Destination.

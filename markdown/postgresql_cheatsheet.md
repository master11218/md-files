# PostgreSQL Cheat Sheet

## LOGIN
At the command line:

    psql template1

## SHOW COMMANDS
**mysql:** `SHOW TABLES`  
**postgresql:** `\d`  
**postgresql:** `SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';`  

**mysql:** `SHOW DATABASES`  
**postgresql:** `\l`  
**postgresql:** `SELECT datname FROM pg_database;`  

**mysql:** `SHOW COLUMNS`  
**postgresql:** `\d table`  
**postgresql:** `SELECT column_name FROM information_schema.columns WHERE table_name ='table';`  

  
## CREATE DATABASE
If logged into the interactive psql prompt:

    CREATE DATABASE name;

At the command line:

    createdb dbname

Sometimes you want to create a database for someone else. That role should become the owner of the new database, so he can configure and manage it himself. To achieve that, use one of the following commands:

    # Logged in
    CREATE DATABASE dbname OWNER rolename;

    # Command Line
    createdb -O rolename dbname
    
More info: [http://www.postgresql.org/docs/8.1/static/manage-ag-createdb.html](http://www.postgresql.org/docs/8.1/static/manage-ag-createdb.html)

  
## BACKUP AND RESTORE

From: [The Geek Stuff](http://www.thegeekstuff.com/2009/01/how-to-backup-and-restore-postgres-database-using-pg_dump-and-psql/)

Backup:

    pg_dump -U {user-name} {source_db} -f {dumpfilename.sql}

Restore: 

    psql -U {user-name} -d {desintation_db}-f {dumpfilename.sql}
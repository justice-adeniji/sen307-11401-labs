PS C:\Users\justi> mysql --version
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.46 for Win64 on x86_64 (MySQL Community Server - GPL)
PS C:\Users\justi> mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE demo_test;
Query OK, 1 row affected (0.02 sec)

mysql> mysql demo_test
    ->
    ->
    ->
    -> j
    ->
    -> select * from demo;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql demo_test



j

select * from demo' at line 1
mysql> demo_test;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'demo_test' at line 1
mysql> mysql demo_test;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql demo_test' at line 1
mysql> DROP DATABASE demo_test;
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW DATABASE
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> CREATE DATABASE SEN307_11401;
Query OK, 1 row affected (0.02 sec)

mysql> drop DATABASE SEN307_11401;
Query OK, 0 rows affected (0.01 sec)

mysql> drop DATABASE sen307_11401;
ERROR 1008 (HY000): Can't drop database 'sen307_11401'; database doesn't exist
mysql> CREATE DATABASE sen307_11401;
Query OK, 1 row affected (0.01 sec)

mysql> USE sen307_11401;
Database changed
mysql> SELECT DATABASE();
+--------------+
| DATABASE()   |
+--------------+
| sen307_11401 |
+--------------+
1 row in set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sen307_11401       |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> SELECT VERSION();
+-----------+
| VERSION() |
+-----------+
| 8.0.46    |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT CURRENT_USER();
+----------------+
| CURRENT_USER() |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2026-10-26 11:50:23 |
+---------------------+
1 row in set (0.01 sec)

mysql> STATUS;
--------------
C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.46 for Win64 on x86_64 (MySQL Community Server - GPL)

Connection id:          10
Current database:       sen307_11401
Current user:           root@localhost
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Using delimiter:        ;
Server version:         8.0.46 MySQL Community Server - GPL
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Binary data as:         Hexadecimal
Uptime:                 25 min 56 sec

Threads: 4  Questions: 70  Slow queries: 0  Opens: 189  Flush tables: 3  Open tables: 108  Queries per second avg: 0.044
--------------

mysql> SHOW VARIABLES LIKE 'port';
+---------------+-------+
| Variable_name | Value |
+---------------+-------+
| port          | 3306  |
+---------------+-------+
1 row in set (0.01 sec)

mysql> show tables
    -> ;
Empty set (0.00 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql>
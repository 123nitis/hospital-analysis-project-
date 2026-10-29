MySQL Shell 8.0.35

Copyright (c) 2016, 2023, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its affiliates.
Other names may be trademarks of their respective owners.

Type '\help' or '\?' for help; '\quit' to exit.
 MySQL  JS > \connect root@localhost:3306
Creating a session to 'root@localhost:3306'
Fetching schema names for auto-completion... Press ^C to stop.
Your MySQL connection id is 9
Server version: 8.0.35 MySQL Community Server - GPL
No default schema selected; type \use <schema> to set one.
 MySQL  localhost:3306 ssl  JS > \sql
Switching to SQL mode... Commands end with ;
Fetching global names for auto-completion... Press ^C to stop.
 MySQL  localhost:3306 ssl  SQL > CREATE DATABASE MediTrack;
Query OK, 1 row affected (0.2485 sec)
 MySQL  localhost:3306 ssl  SQL > use meditrack;
Default schema set to `meditrack`.
Fetching global names, object names from `meditrack` for auto-completion... Press ^C to stop.
 MySQL  localhost:3306 ssl  meditrack  SQL > REATE TABLE Patients (
                                          ->     Patient_ID INT PRIMARY KEY,
                                          ->     Name VARCHAR(100),
                                          ->     Age INT,
                                          ->     Gender VARCHAR(10),
                                          ->     Contact VARCHAR(15),
                                          ->     Email VARCHAR(100),
                                          ->     Address VARCHAR(100)
                                          ->   );
ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'REATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100),
  ' at line 1
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE TABLE Patients (     Patient_ID INT PRIMARY KEY,     Name VARCHAR(100),     Age INT,     Gender VARCHAR(10),     Contact VARCHAR(15),     Email VARCHAR(100),     Address VARCHAR(100)   );
Query OK, 0 rows affected (0.1599 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > INSERT INTO Patients VALUES
                                          -> (1, "Rohit Sharma", 34, "M", "9831000001", "rohit.sharma@gmail.com", "Kolkata"), (2, "Simran Kaur", 29, "F", "9831000002", "simran.kaur@yahoo.com", "Delhi"),
                                          -> (3, "Amit Ghosh", 45, "M", "9831000003", "amit.ghosh@gmail.com", "Mumbai"), (4, "Nisha Patel", 51, "F", "9831000004", "nisha.patel@hotmail.com", "Ahmedabad"),
                                          -> (5, "Suresh Reddy", 60, "M", "9831000005", "suresh.reddy@gmail.com", "Hyderabad"), (6, "Meera Nair", 38, "F", "9831000006", "meera.nair@yahoo.com", "Chennai"),
                                          -> (7, "Vikas Yadav", 27, "M", "9831000007", "vikas.yadav@outlook.com", "Lucknow"), (8, "Anjali Gupta", 33, "F", "9831000008", "anjali.gupta@gmail.com", "Jaipur"),
                                          -> (9, "Rajesh Kumar", 55, "M", "9831000009", "rajesh.kumar@yahoo.com", "Pune"), (10, "Pooja Singh", 41, "F", "9831000010", "pooja.singh@gmail.com", "Bhopal"),
                                          -> (11, "Sanjay Verma", 48, "M", "9831000011", "sanjay.verma@outlook.com", "Kolkata"), (12, "Kiran Das", 36, "F","9831000012", "kiran.das@gmail.com", "Delhi"),
                                          -> (13, "Manoj Tiwari", 29, "M", "9831000013", "manoj.tiwari@yahoo.com", "Mumbai"), (14, "Ritu Chatterjee", 44, "F", "9831000014", "ritu.chatterjee@gmail.com", "Kolkata"),
                                          -> (15, "Deepak Joshi", 52, "M", "9831000015", "deepak.joshi@outlook.com", "Ahmedabad"), (16, "Swati Bose", 31, "F", "9831000016", "swati.bose@gmail.com", "Hyderabad"),
                                          -> (17, "Arvind Rao", 39, "M", "9831000017", "arvind.rao@yahoo.com", "Chennai"), (18, "Nandini Sen", 26, "F", "9831000018", "nandini.sen@gmail.com", "Lucknow"),
                                          -> (19, "Harish Chandra", 58, "M", "9831000019", "harish.chandra@outlook.com", "Jaipur"), (20, "Lata Mishra", 47,"F", "9831000020", "lata.mishra@gmail.com", "Pune");
Query OK, 20 rows affected (0.0530 sec)

Records: 20  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > desc patients;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Patient_ID | int          | NO   | PRI | NULL    |       |
| Name       | varchar(100) | YES  |     | NULL    |       |
| Age        | int          | YES  |     | NULL    |       |
| Gender     | varchar(10)  | YES  |     | NULL    |       |
| Contact    | varchar(15)  | YES  |     | NULL    |       |
| Email      | varchar(100) | YES  |     | NULL    |       |
| Address    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.0719 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > select * from patients;
+------------+-----------------+-----+--------+------------+----------------------------+-----------+
| Patient_ID | Name            | Age | Gender | Contact    | Email                      | Address   |
+------------+-----------------+-----+--------+------------+----------------------------+-----------+
|          1 | Rohit Sharma    |  34 | M      | 9831000001 | rohit.sharma@gmail.com     | Kolkata   |
|          2 | Simran Kaur     |  29 | F      | 9831000002 | simran.kaur@yahoo.com      | Delhi     |
|          3 | Amit Ghosh      |  45 | M      | 9831000003 | amit.ghosh@gmail.com       | Mumbai    |
|          4 | Nisha Patel     |  51 | F      | 9831000004 | nisha.patel@hotmail.com    | Ahmedabad |
|          5 | Suresh Reddy    |  60 | M      | 9831000005 | suresh.reddy@gmail.com     | Hyderabad |
|          6 | Meera Nair      |  38 | F      | 9831000006 | meera.nair@yahoo.com       | Chennai   |
|          7 | Vikas Yadav     |  27 | M      | 9831000007 | vikas.yadav@outlook.com    | Lucknow   |
|          8 | Anjali Gupta    |  33 | F      | 9831000008 | anjali.gupta@gmail.com     | Jaipur    |
|          9 | Rajesh Kumar    |  55 | M      | 9831000009 | rajesh.kumar@yahoo.com     | Pune      |
|         10 | Pooja Singh     |  41 | F      | 9831000010 | pooja.singh@gmail.com      | Bhopal    |
|         11 | Sanjay Verma    |  48 | M      | 9831000011 | sanjay.verma@outlook.com   | Kolkata   |
|         12 | Kiran Das       |  36 | F      | 9831000012 | kiran.das@gmail.com        | Delhi     |
|         13 | Manoj Tiwari    |  29 | M      | 9831000013 | manoj.tiwari@yahoo.com     | Mumbai    |
|         14 | Ritu Chatterjee |  44 | F      | 9831000014 | ritu.chatterjee@gmail.com  | Kolkata   |
|         15 | Deepak Joshi    |  52 | M      | 9831000015 | deepak.joshi@outlook.com   | Ahmedabad |
|         16 | Swati Bose      |  31 | F      | 9831000016 | swati.bose@gmail.com       | Hyderabad |
|         17 | Arvind Rao      |  39 | M      | 9831000017 | arvind.rao@yahoo.com       | Chennai   |
|         18 | Nandini Sen     |  26 | F      | 9831000018 | nandini.sen@gmail.com      | Lucknow   |
|         19 | Harish Chandra  |  58 | M      | 9831000019 | harish.chandra@outlook.com | Jaipur    |
|         20 | Lata Mishra     |  47 | F      | 9831000020 | lata.mishra@gmail.com      | Pune      |
+------------+-----------------+-----+--------+------------+----------------------------+-----------+
20 rows in set (0.0021 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >  CREATE TABLE Doctors (
                                          ->     Doctor_ID INT PRIMARY KEY,
                                          ->     Name VARCHAR(100),
                                          ->     Specialization VARCHAR(50),
                                          ->     Fee DECIMAL(10, 2),
                                          ->     Experience_Years INT
                                          ->   );
Query OK, 0 rows affected (0.0420 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > NSERT INTO Doctors VALUES
                                          -> (201, "Dr. Rohan Mehta", "Cardiology", "800.00", 12), (202, "Dr. Ananya Roy", "Dermatology", "500.00", 8),
                                          -> (203, "Dr. Vikram Singh", "Orthopedics", "700.00", 15), (204, "Dr. Priya Nair", "Pediatrics", "450.00", 10),
                                          -> (205, "Dr. Arjun Kapoor", "Neurology", "900.00", 18), (206, "Dr. Sneha Iyer", "Gynecology", "600.00", 9),
                                          -> (207, "Dr. Karan Malhotra", "ENT", "400.00", 7), (208, "Dr. Divya Menon", "Ophthalmology", "550.00", 11),
                                          -> (209, "Dr. Rahul Verma", "General Medicine", "300.00", 6), (210, "Dr. Neha Joshi", "Psychiatry", "650.00", 13),

                                          -> (211, "Dr. Sameer Khan", "Urology", "750.00", 14), (212, "Dr. Pooja Desai", "Endocrinology", "700.00", 10),
                                          -> (213, "Dr. Aditya Rao", "Gastroenterology", "800.00", 16), (214, "Dr. Kavita Pillai", "Oncology", "1000.00", 20),
                                          -> (215, "Dr. Manish Agarwal", "Nephrology", "850.00", 17);
ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NSERT INTO Doctors VALUES
(201, "Dr. Rohan Mehta", "Cardiology", "800.00", 12), ' at line 1
 MySQL  localhost:3306 ssl  meditrack  SQL >  INSERT INTO Doctors VALUES
                                          -> (201, "Dr. Rohan Mehta", "Cardiology", "800.00", 12), (202, "Dr. Ananya Roy", "Dermatology", "500.00", 8),
                                          -> (203, "Dr. Vikram Singh", "Orthopedics", "700.00", 15), (204, "Dr. Priya Nair", "Pediatrics", "450.00", 10),
                                          -> (205, "Dr. Arjun Kapoor", "Neurology", "900.00", 18), (206, "Dr. Sneha Iyer", "Gynecology", "600.00", 9),
                                          -> (207, "Dr. Karan Malhotra", "ENT", "400.00", 7), (208, "Dr. Divya Menon", "Ophthalmology", "550.00", 11),
                                          -> (209, "Dr. Rahul Verma", "General Medicine", "300.00", 6), (210, "Dr. Neha Joshi", "Psychiatry", "650.00", 13),

                                          -> (211, "Dr. Sameer Khan", "Urology", "750.00", 14), (212, "Dr. Pooja Desai", "Endocrinology", "700.00", 10),
                                          -> (213, "Dr. Aditya Rao", "Gastroenterology", "800.00", 16), (214, "Dr. Kavita Pillai", "Oncology", "1000.00", 20),
                                          -> (215, "Dr. Manish Agarwal", "Nephrology", "850.00", 17);
Query OK, 15 rows affected (0.0093 sec)

Records: 15  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > desc doctors;
+------------------+---------------+------+-----+---------+-------+
| Field            | Type          | Null | Key | Default | Extra |
+------------------+---------------+------+-----+---------+-------+
| Doctor_ID        | int           | NO   | PRI | NULL    |       |
| Name             | varchar(100)  | YES  |     | NULL    |       |
| Specialization   | varchar(50)   | YES  |     | NULL    |       |
| Fee              | decimal(10,2) | YES  |     | NULL    |       |
| Experience_Years | int           | YES  |     | NULL    |       |
+------------------+---------------+------+-----+---------+-------+
5 rows in set (0.0035 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > select*from doctors;
+-----------+--------------------+------------------+---------+------------------+
| Doctor_ID | Name               | Specialization   | Fee     | Experience_Years |
+-----------+--------------------+------------------+---------+------------------+
|       201 | Dr. Rohan Mehta    | Cardiology       |  800.00 |               12 |
|       202 | Dr. Ananya Roy     | Dermatology      |  500.00 |                8 |
|       203 | Dr. Vikram Singh   | Orthopedics      |  700.00 |               15 |
|       204 | Dr. Priya Nair     | Pediatrics       |  450.00 |               10 |
|       205 | Dr. Arjun Kapoor   | Neurology        |  900.00 |               18 |
|       206 | Dr. Sneha Iyer     | Gynecology       |  600.00 |                9 |
|       207 | Dr. Karan Malhotra | ENT              |  400.00 |                7 |
|       208 | Dr. Divya Menon    | Ophthalmology    |  550.00 |               11 |
|       209 | Dr. Rahul Verma    | General Medicine |  300.00 |                6 |
|       210 | Dr. Neha Joshi     | Psychiatry       |  650.00 |               13 |
|       211 | Dr. Sameer Khan    | Urology          |  750.00 |               14 |
|       212 | Dr. Pooja Desai    | Endocrinology    |  700.00 |               10 |
|       213 | Dr. Aditya Rao     | Gastroenterology |  800.00 |               16 |
|       214 | Dr. Kavita Pillai  | Oncology         | 1000.00 |               20 |
|       215 | Dr. Manish Agarwal | Nephrology       |  850.00 |               17 |
+-----------+--------------------+------------------+---------+------------------+
15 rows in set (0.0019 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >  CREATE TABLE Appointments (
                                          ->     Appointment_ID INT PRIMARY KEY,
                                          ->     Patient_ID INT,
                                          ->     Doctor_ID INT,
                                          ->     Appointment_Date DATE,
                                          ->     Status VARCHAR(20),
                                          ->     FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
                                          ->     FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
                                          ->   );
Query OK, 0 rows affected (0.0888 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >  INSERT INTO Appointments VALUES
                                          -> (3001, 1, 201, "2024-01-05", "Completed"), (3002, 3, 205, "2024-01-06", "Completed"),
                                          -> (3003, 5, 203, "2024-01-07", "Completed"), (3004, 7, 209, "2024-01-08", "Completed"),
                                          -> (3005, 10, 214, "2024-01-09", "Completed"), (3006, 2, 206, "2024-01-10", "Completed"),
                                          -> (3007, 4, 202, "2024-01-11", "Completed"), (3008, 6, 208, "2024-01-12", "Completed"),
                                          -> (3009, 8, 213, "2024-01-13", "Completed"), (3010, 9, 210, "2024-01-14", "Completed");
Query OK, 10 rows affected (0.0164 sec)

Records: 10  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > desc appointments;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| Appointment_ID   | int         | NO   | PRI | NULL    |       |
| Patient_ID       | int         | YES  | MUL | NULL    |       |
| Doctor_ID        | int         | YES  | MUL | NULL    |       |
| Appointment_Date | date        | YES  |     | NULL    |       |
| Status           | varchar(20) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
5 rows in set (0.0039 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > select * from appointments;
+----------------+------------+-----------+------------------+-----------+
| Appointment_ID | Patient_ID | Doctor_ID | Appointment_Date | Status    |
+----------------+------------+-----------+------------------+-----------+
|           3001 |          1 |       201 | 2024-01-05       | Completed |
|           3002 |          3 |       205 | 2024-01-06       | Completed |
|           3003 |          5 |       203 | 2024-01-07       | Completed |
|           3004 |          7 |       209 | 2024-01-08       | Completed |
|           3005 |         10 |       214 | 2024-01-09       | Completed |
|           3006 |          2 |       206 | 2024-01-10       | Completed |
|           3007 |          4 |       202 | 2024-01-11       | Completed |
|           3008 |          6 |       208 | 2024-01-12       | Completed |
|           3009 |          8 |       213 | 2024-01-13       | Completed |
|           3010 |          9 |       210 | 2024-01-14       | Completed |
+----------------+------------+-----------+------------------+-----------+
10 rows in set (0.0016 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >  CREATE TABLE Prescriptions (
                                          ->     Prescription_ID INT PRIMARY KEY,
                                          ->     Appointment_ID INT,
                                          ->     Medicine VARCHAR(100),
                                          ->     Dosage VARCHAR(20),
                                          ->     Duration_Days INT,
                                          ->     FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID)
                                          ->   );
Query OK, 0 rows affected (0.0692 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > INSERT INTO Prescriptions VALUES
                                          -> (5001, 3001, "Aspirin", "75mg", 30), (5002, 3001, "Atorvastatin", "20mg", 30),
                                          -> (5003, 3002, "Levetiracetam", "500mg", 60), (5004, 3002, "Gabapentin", "300mg", 30),
                                          -> (5005, 3003, "Ibuprofen", "400mg", 10), (5006, 3003, "Calcium", "500mg", 30),
                                          -> (5007, 3004, "Paracetamol", "500mg", 5), (5008, 3005, "Tamoxifen", "20mg", 90),
                                          -> (5009, 3006, "Folic Acid", "5mg", 30), (5010, 3007, "Cetirizine", "10mg", 15),
                                          -> (5011, 3008, "Timolol Eye Drops", "0.5%", 30), (5012, 3009, "Omeprazole", "20mg", 14),
                                          -> (5013, 3010, "Sertraline", "50mg", 60);
Query OK, 13 rows affected (0.0085 sec)

Records: 13  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > desc prescriptions;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| Prescription_ID | int          | NO   | PRI | NULL    |       |
| Appointment_ID  | int          | YES  | MUL | NULL    |       |
| Medicine        | varchar(100) | YES  |     | NULL    |       |
| Dosage          | varchar(20)  | YES  |     | NULL    |       |
| Duration_Days   | int          | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.0026 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > select * from prescription;
ERROR: 1146 (42S02): Table 'meditrack.prescription' doesn't exist
 MySQL  localhost:3306 ssl  meditrack  SQL > select * from  prescriptions;
+-----------------+----------------+-------------------+--------+---------------+
| Prescription_ID | Appointment_ID | Medicine          | Dosage | Duration_Days |
+-----------------+----------------+-------------------+--------+---------------+
|            5001 |           3001 | Aspirin           | 75mg   |            30 |
|            5002 |           3001 | Atorvastatin      | 20mg   |            30 |
|            5003 |           3002 | Levetiracetam     | 500mg  |            60 |
|            5004 |           3002 | Gabapentin        | 300mg  |            30 |
|            5005 |           3003 | Ibuprofen         | 400mg  |            10 |
|            5006 |           3003 | Calcium           | 500mg  |            30 |
|            5007 |           3004 | Paracetamol       | 500mg  |             5 |
|            5008 |           3005 | Tamoxifen         | 20mg   |            90 |
|            5009 |           3006 | Folic Acid        | 5mg    |            30 |
|            5010 |           3007 | Cetirizine        | 10mg   |            15 |
|            5011 |           3008 | Timolol Eye Drops | 0.5%   |            30 |
|            5012 |           3009 | Omeprazole        | 20mg   |            14 |
|            5013 |           3010 | Sertraline        | 50mg   |            60 |
+-----------------+----------------+-------------------+--------+---------------+
13 rows in set (0.0008 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE TABLE Billing (
                                          ->     Bill_ID INT PRIMARY KEY,
                                          ->     Appointment_ID INT,
                                          ->     Amount DECIMAL(10, 2),
                                          ->     Payment_Method VARCHAR(50),
                                          ->     Payment_Status VARCHAR(20),
                                          ->     FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID)
                                          ->   );
Query OK, 0 rows affected (0.0490 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >  INSERT INTO Billing VALUES
                                          -> (4001, 3001, "800.00", "Credit Card", "Paid"), (4002, 3002, "900.00", "Credit Card", "Paid"),
                                          -> (4003, 3003, "700.00", "Cash", "Paid"), (4004, 3004, "300.00", "Debit Card", "Paid"),
                                          -> (4005, 3005, "1000.00", "Credit Card", "Paid"), (4006, 3006, "600.00", "UPI", "Paid"),
                                          -> (4007, 3007, "500.00", "Cash", "Paid"), (4008, 3008, "550.00", "Debit Card", "Paid"),
                                          -> (4009, 3009, "800.00", "Credit Card", "Paid"), (4010, 3010, "650.00", "UPI", "Paid");
Query OK, 10 rows affected (0.0096 sec)

Records: 10  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM Appointments WHERE Appointment_Date > '2024-01-08';
+----------------+------------+-----------+------------------+-----------+
| Appointment_ID | Patient_ID | Doctor_ID | Appointment_Date | Status    |
+----------------+------------+-----------+------------------+-----------+
|           3005 |         10 |       214 | 2024-01-09       | Completed |
|           3006 |          2 |       206 | 2024-01-10       | Completed |
|           3007 |          4 |       202 | 2024-01-11       | Completed |
|           3008 |          6 |       208 | 2024-01-12       | Completed |
|           3009 |          8 |       213 | 2024-01-13       | Completed |
|           3010 |          9 |       210 | 2024-01-14       | Completed |
+----------------+------------+-----------+------------------+-----------+
6 rows in set (0.0053 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM Billing WHERE Payment_Method = 'Credit Card';
+---------+----------------+---------+----------------+----------------+
| Bill_ID | Appointment_ID | Amount  | Payment_Method | Payment_Status |
+---------+----------------+---------+----------------+----------------+
|    4001 |           3001 |  800.00 | Credit Card    | Paid           |
|    4002 |           3002 |  900.00 | Credit Card    | Paid           |
|    4005 |           3005 | 1000.00 | Credit Card    | Paid           |
|    4009 |           3009 |  800.00 | Credit Card    | Paid           |
+---------+----------------+---------+----------------+----------------+
4 rows in set (0.0021 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM Doctors ORDER BY Fee DESC LIMIT 5;
+-----------+--------------------+------------------+---------+------------------+
| Doctor_ID | Name               | Specialization   | Fee     | Experience_Years |
+-----------+--------------------+------------------+---------+------------------+
|       214 | Dr. Kavita Pillai  | Oncology         | 1000.00 |               20 |
|       205 | Dr. Arjun Kapoor   | Neurology        |  900.00 |               18 |
|       215 | Dr. Manish Agarwal | Nephrology       |  850.00 |               17 |
|       201 | Dr. Rohan Mehta    | Cardiology       |  800.00 |               12 |
|       213 | Dr. Aditya Rao     | Gastroenterology |  800.00 |               16 |
+-----------+--------------------+------------------+---------+------------------+
5 rows in set (0.0043 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM Appointments ORDER BY Appointment_Date DESC LIMIT 3;
+----------------+------------+-----------+------------------+-----------+
| Appointment_ID | Patient_ID | Doctor_ID | Appointment_Date | Status    |
+----------------+------------+-----------+------------------+-----------+
|           3010 |          9 |       210 | 2024-01-14       | Completed |
|           3009 |          8 |       213 | 2024-01-13       | Completed |
|           3008 |          6 |       208 | 2024-01-12       | Completed |
+----------------+------------+-----------+------------------+-----------+
3 rows in set (0.0009 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT pr.Medicine FROM Prescriptions pr
                                          ->   JOIN Appointments a ON pr.Appointment_ID = a.Appointment_ID
                                          ->   JOIN Patients p ON a.Patient_ID = p.Patient_ID
                                          ->   WHERE p.Name = 'Rohit Sharma';
+--------------+
| Medicine     |
+--------------+
| Aspirin      |
| Atorvastatin |
+--------------+
2 rows in set (0.0057 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM Billing WHERE Amount > (SELECT AVG(Amount) FROM Billing);
+---------+----------------+---------+----------------+----------------+
| Bill_ID | Appointment_ID | Amount  | Payment_Method | Payment_Status |
+---------+----------------+---------+----------------+----------------+
|    4001 |           3001 |  800.00 | Credit Card    | Paid           |
|    4002 |           3002 |  900.00 | Credit Card    | Paid           |
|    4003 |           3003 |  700.00 | Cash           | Paid           |
|    4005 |           3005 | 1000.00 | Credit Card    | Paid           |
|    4009 |           3009 |  800.00 | Credit Card    | Paid           |
+---------+----------------+---------+----------------+----------------+
5 rows in set (0.0090 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Patient_ID, COUNT(*) AS Total_Appointments FROM Appointments GROUP BY Patient_ID;
+------------+--------------------+
| Patient_ID | Total_Appointments |
+------------+--------------------+
|          1 |                  1 |
|          2 |                  1 |
|          3 |                  1 |
|          4 |                  1 |
|          5 |                  1 |
|          6 |                  1 |
|          7 |                  1 |
|          8 |                  1 |
|          9 |                  1 |
|         10 |                  1 |
+------------+--------------------+
10 rows in set (0.0041 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Specialization, AVG(Fee) AS Avg_Fee FROM Doctors GROUP BY Specialization;
+------------------+-------------+
| Specialization   | Avg_Fee     |
+------------------+-------------+
| Cardiology       |  800.000000 |
| Dermatology      |  500.000000 |
| Orthopedics      |  700.000000 |
| Pediatrics       |  450.000000 |
| Neurology        |  900.000000 |
| Gynecology       |  600.000000 |
| ENT              |  400.000000 |
| Ophthalmology    |  550.000000 |
| General Medicine |  300.000000 |
| Psychiatry       |  650.000000 |
| Urology          |  750.000000 |
| Endocrinology    |  700.000000 |
| Gastroenterology |  800.000000 |
| Oncology         | 1000.000000 |
| Nephrology       |  850.000000 |
+------------------+-------------+
15 rows in set (0.0036 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT COUNT(*) AS Completed_Appointments FROM Appointments WHERE Status = 'Completed';
+------------------------+
| Completed_Appointments |
+------------------------+
|                     10 |
+------------------------+
1 row in set (0.0009 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT a.Patient_ID, SUM(b.Amount) AS Total_Spent
                                          ->   FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY a.Patient_ID ORDER BY Total_Spent DESC LIMIT 1;
+------------+-------------+
| Patient_ID | Total_Spent |
+------------+-------------+
|         10 |     1000.00 |
+------------+-------------+
1 row in set (0.0018 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Name FROM Doctors
                                          ->   WHERE Doctor_ID NOT IN (SELECT DISTINCT Doctor_ID FROM Appointments);
+--------------------+
| Name               |
+--------------------+
| Dr. Priya Nair     |
| Dr. Karan Malhotra |
| Dr. Sameer Khan    |
| Dr. Pooja Desai    |
| Dr. Manish Agarwal |
+--------------------+
5 rows in set (0.0029 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT a.Appointment_Date, SUM(b.Amount) OVER (ORDER BY a.Appointment_Date) AS Cumulative_Revenue
                                          ->   FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID;
+------------------+--------------------+
| Appointment_Date | Cumulative_Revenue |
+------------------+--------------------+
| 2024-01-05       |             800.00 |
| 2024-01-06       |            1700.00 |
| 2024-01-07       |            2400.00 |
| 2024-01-08       |            2700.00 |
| 2024-01-09       |            3700.00 |
| 2024-01-10       |            4300.00 |
| 2024-01-11       |            4800.00 |
| 2024-01-12       |            5350.00 |
| 2024-01-13       |            6150.00 |
| 2024-01-14       |            6800.00 |
+------------------+--------------------+
10 rows in set (0.0048 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Payment_Method, SUM(Amount) AS Total_Revenue FROM Billing GROUP BY Payment_Method;SELECT Payment_Method, SUM(Amount) AS Total_Revenue FROM Billing GROUP BY Payment_Method;
+----------------+---------------+
| Payment_Method | Total_Revenue |
+----------------+---------------+
| Credit Card    |       3500.00 |
| Cash           |       1200.00 |
| Debit Card     |        850.00 |
| UPI            |       1250.00 |
+----------------+---------------+
4 rows in set (0.0009 sec)
+----------------+---------------+
| Payment_Method | Total_Revenue |
+----------------+---------------+
| Credit Card    |       3500.00 |
| Cash           |       1200.00 |
| Debit Card     |        850.00 |
| UPI            |       1250.00 |
+----------------+---------------+
4 rows in set (0.0018 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT a.Patient_ID, SUM(b.Amount) AS Total_Billed
                                          ->   FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY a.Patient_ID;
+------------+--------------+
| Patient_ID | Total_Billed |
+------------+--------------+
|          1 |       800.00 |
|          2 |       600.00 |
|          3 |       900.00 |
|          4 |       500.00 |
|          5 |       700.00 |
|          6 |       550.00 |
|          7 |       300.00 |
|          8 |       800.00 |
|          9 |       650.00 |
|         10 |      1000.00 |
+------------+--------------+
10 rows in set (0.0017 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Appointment_ID FROM Prescriptions
                                          ->   GROUP BY Appointment_ID HAVING COUNT(Prescription_ID) > 1;
+----------------+
| Appointment_ID |
+----------------+
|           3001 |
|           3002 |
|           3003 |
+----------------+
3 rows in set (0.0017 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT DISTINCT p.Name FROM Patients p
                                          ->   JOIN Appointments a ON p.Patient_ID = a.Patient_ID
                                          ->   JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   WHERE b.Payment_Method = 'UPI';
+--------------+
| Name         |
+--------------+
| Simran Kaur  |
| Rajesh Kumar |
+--------------+
2 rows in set (0.0013 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT MONTH(a.Appointment_Date) AS Month, AVG(b.Amount) AS Avg_Amount
                                          ->   FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY Month;
+-------+------------+
| Month | Avg_Amount |
+-------+------------+
|     1 | 680.000000 |
+-------+------------+
1 row in set (0.0020 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT d.Specialization, SUM(b.Amount) AS Total_Revenue
                                          ->   FROM Doctors d JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
                                          ->   JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY d.Specialization ORDER BY Total_Revenue DESC LIMIT 1;
+----------------+---------------+
| Specialization | Total_Revenue |
+----------------+---------------+
| Oncology       |       1000.00 |
+----------------+---------------+
1 row in set (0.0011 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT a.Patient_ID, SUM(b.Amount) AS Total_Spent
                                          ->   FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY a.Patient_ID ORDER BY Total_Spent DESC LIMIT 3;
+------------+-------------+
| Patient_ID | Total_Spent |
+------------+-------------+
|         10 |     1000.00 |
|          3 |      900.00 |
|          1 |      800.00 |
+------------+-------------+
3 rows in set (0.0012 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Payment_Method, COUNT(*) AS Transaction_Count FROM Billing
                                          ->   GROUP BY Payment_Method ORDER BY Transaction_Count DESC LIMIT 1;
+----------------+-------------------+
| Payment_Method | Transaction_Count |
+----------------+-------------------+
| Credit Card    |                 4 |
+----------------+-------------------+
1 row in set (0.0011 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT d.Specialization, SUM(b.Amount) AS Total_Revenue
                                          ->   FROM Doctors d JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
                                          ->   JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
                                          ->   GROUP BY d.Specialization;
+------------------+---------------+
| Specialization   | Total_Revenue |
+------------------+---------------+
| Cardiology       |        800.00 |
| Dermatology      |        500.00 |
| Orthopedics      |        700.00 |
| Neurology        |        900.00 |
| Gynecology       |        600.00 |
| Ophthalmology    |        550.00 |
| General Medicine |        300.00 |
| Psychiatry       |        650.00 |
| Gastroenterology |        800.00 |
| Oncology         |       1000.00 |
+------------------+---------------+
10 rows in set (0.0012 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT Specialization, MAX(Fee) AS Max_Fee FROM Doctors GROUP BY Specialization;
+------------------+---------+
| Specialization   | Max_Fee |
+------------------+---------+
| Cardiology       |  800.00 |
| Dermatology      |  500.00 |
| Orthopedics      |  700.00 |
| Pediatrics       |  450.00 |
| Neurology        |  900.00 |
| Gynecology       |  600.00 |
| ENT              |  400.00 |
| Ophthalmology    |  550.00 |
| General Medicine |  300.00 |
| Psychiatry       |  650.00 |
| Urology          |  750.00 |
| Endocrinology    |  700.00 |
| Gastroenterology |  800.00 |
| Oncology         | 1000.00 |
| Nephrology       |  850.00 |
+------------------+---------+
15 rows in set (0.0010 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE INDEX idx_patient_id ON Appointments(Patient_ID);
Query OK, 0 rows affected (0.1255 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > DESC Appointments;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| Appointment_ID   | int         | NO   | PRI | NULL    |       |
| Patient_ID       | int         | YES  | MUL | NULL    |       |
| Doctor_ID        | int         | YES  | MUL | NULL    |       |
| Appointment_Date | date        | YES  |     | NULL    |       |
| Status           | varchar(20) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
5 rows in set (0.0020 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE UNIQUE INDEX idx_email ON Patients(Email);
Query OK, 0 rows affected (0.0566 sec)

Records: 0  Duplicates: 0  Warnings: 0
 MySQL  localhost:3306 ssl  meditrack  SQL > DESC Patients;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Patient_ID | int          | NO   | PRI | NULL    |       |
| Name       | varchar(100) | YES  |     | NULL    |       |
| Age        | int          | YES  |     | NULL    |       |
| Gender     | varchar(10)  | YES  |     | NULL    |       |
| Contact    | varchar(15)  | YES  |     | NULL    |       |
| Email      | varchar(100) | YES  | UNI | NULL    |       |
| Address    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.0021 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE VIEW HighValueBills AS
                                          ->   SELECT * FROM Billing WHERE Amount > 700;
Query OK, 0 rows affected (0.0145 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM HighValueBills;
+---------+----------------+---------+----------------+----------------+
| Bill_ID | Appointment_ID | Amount  | Payment_Method | Payment_Status |
+---------+----------------+---------+----------------+----------------+
|    4001 |           3001 |  800.00 | Credit Card    | Paid           |
|    4002 |           3002 |  900.00 | Credit Card    | Paid           |
|    4005 |           3005 | 1000.00 | Credit Card    | Paid           |
|    4009 |           3009 |  800.00 | Credit Card    | Paid           |
+---------+----------------+---------+----------------+----------------+
4 rows in set (0.0098 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL > CREATE VIEW RevenueSummary AS
                                          ->   SELECT Payment_Method, SUM(Amount) AS Total_Revenue
                                          ->   FROM Billing GROUP BY Payment_Method;
Query OK, 0 rows affected (0.0168 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >
 MySQL  localhost:3306 ssl  meditrack  SQL > SELECT * FROM RevenueSummary;
+----------------+---------------+
| Payment_Method | Total_Revenue |
+----------------+---------------+
| Credit Card    |       3500.00 |
| Cash           |       1200.00 |
| Debit Card     |        850.00 |
| UPI            |       1250.00 |
+----------------+---------------+
4 rows in set (0.0035 sec)
 MySQL  localhost:3306 ssl  meditrack  SQL >

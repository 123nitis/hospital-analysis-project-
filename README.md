# MediTrack

A MySQL database for managing a small clinic: patients, doctors, appointments, prescriptions and billing. It includes the schema, sample data, a set of analytical queries, indexes and views, plus ER diagrams of the design.

## Tech stack

- MySQL 8.0.35 (MySQL Shell in SQL mode)

## Database schema

The `MediTrack` database has five tables.

| Table | Purpose | Primary key | Foreign keys |
|-------|---------|-------------|--------------|
| `Patients` | Patient details | `Patient_ID` | - |
| `Doctors` | Doctor details and consultation fee | `Doctor_ID` | - |
| `Appointments` | Which patient saw which doctor, and when | `Appointment_ID` | `Patient_ID`, `Doctor_ID` |
| `Prescriptions` | Medicines prescribed during an appointment | `Prescription_ID` | `Appointment_ID` |
| `Billing` | Payment for an appointment | `Bill_ID` | `Appointment_ID` |

### Columns

**Patients**: `Patient_ID` INT, `Name` VARCHAR(100), `Age` INT, `Gender` VARCHAR(10), `Contact` VARCHAR(15), `Email` VARCHAR(100) (unique), `Address` VARCHAR(100)

**Doctors**: `Doctor_ID` INT, `Name` VARCHAR(100), `Specialization` VARCHAR(50), `Fee` DECIMAL(10,2), `Experience_Years` INT

**Appointments**: `Appointment_ID` INT, `Patient_ID` INT, `Doctor_ID` INT, `Appointment_Date` DATE, `Status` VARCHAR(20)

**Prescriptions**: `Prescription_ID` INT, `Appointment_ID` INT, `Medicine` VARCHAR(100), `Dosage` VARCHAR(20), `Duration_Days` INT

**Billing**: `Bill_ID` INT, `Appointment_ID` INT, `Amount` DECIMAL(10,2), `Payment_Method` VARCHAR(50), `Payment_Status` VARCHAR(20)

### Relationships

- One patient can have many appointments.
- One doctor can have many appointments.
- One appointment can have many prescriptions.
- One appointment can have bills (one per appointment in the sample data).

See [`MediTrack_ER_Diagrams.pdf`](MediTrack_ER_Diagrams.pdf) for the ER diagrams: page 1 uses table (crow's foot) notation and page 2 uses shape (Chen) notation.

## Sample data

| Table | Rows |
|-------|------|
| Patients | 20 |
| Doctors | 15 |
| Appointments | 10 |
| Prescriptions | 13 |
| Billing | 10 |

## Indexes and views

| Object | Definition |
|--------|-----------|
| `idx_patient_id` | Index on `Appointments(Patient_ID)` |
| `idx_email` | Unique index on `Patients(Email)` |
| `HighValueBills` | View: bills with `Amount > 700` |
| `RevenueSummary` | View: total revenue per payment method |

## Example queries

`meditrack.sql` covers a range of SQL concepts, including:

- Filtering and sorting (`WHERE`, `ORDER BY`, `LIMIT`)
- Joins across three or four tables
- Aggregation (`SUM`, `AVG`, `MAX`, `COUNT`) with `GROUP BY` and `HAVING`
- Subqueries (`NOT IN`, comparison against `AVG`)
- Window functions (cumulative revenue with `SUM() OVER`)
- Views and indexes

Some of the questions answered:

- Which medicines were prescribed to a given patient?
- Which patient spent the most, and who are the top three?
- Which doctors have no appointments?
- What is the total revenue per payment method and per specialization?
- Which appointments have more than one prescription?

## Getting started

1. Install MySQL 8.x and start the server.
2. Clone this repository:
   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
   ```
3. Open MySQL Shell or the `mysql` client and connect:
   ```bash
   mysql -u root -p
   ```
4. Create the database and tables, insert the data, then run the queries from `meditrack.sql`:
   ```sql
   CREATE DATABASE MediTrack;
   USE MediTrack;
   ```

> **Note:** `meditrack.sql` is a recorded MySQL Shell session, so it also contains prompts, query output and a few mistyped commands (for example `REATE TABLE` and `NSERT INTO`) that failed and were retyped correctly. Copy the statements one at a time, or clean the file into a plain script before running it as a whole.

## Project structure

```
.
├── README.md
├── .gitignore
├── meditrack.sql                 # Schema, data, queries, indexes and views
└── MediTrack_ER_Diagrams.pdf     # ER diagrams (crow's foot and Chen notation)
```

## Possible improvements

- Add `NOT NULL` constraints and `CHECK` constraints (for example on `Age` and `Amount`).
- Enforce one bill per appointment with a `UNIQUE` constraint on `Billing.Appointment_ID`.
- Add `ON DELETE` rules to the foreign keys.
- Add more appointments and a `Cancelled` or `Scheduled` status to the sample data.

## Disclaimer

All patient, doctor and billing data in this repository is made up for learning purposes.

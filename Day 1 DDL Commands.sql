CREATE DATABASE City_Hospital;
USE City_Hospital;
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Age INT,
    Gender ENUM('M','F'),
    AdmissionDate DATE
);
ALTER TABLE Patients
ADD DoctorAssigned VARCHAR(50);
ALTER TABLE Patients
MODIFY PatientName VARCHAR(100);
RENAME TABLE Patients TO Patient_Info;
 TRUNCATE TABLE Patient_Info;
 DROP TABLE Patient_Info;

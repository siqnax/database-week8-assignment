 -- Question 1:
-- Database: Clinic Booking System 

-- Drop existing tables (if any) for clean setup
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Patients;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Specializations;

-- Table: Specializations
CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Table: Doctors
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    specialization_id INT NOT NULL,
    FOREIGN KEY (specialization_id) REFERENCES Specializations(specialization_id)
);

-- Table: Patients
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE
);

-- Table: Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    reason TEXT,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    CONSTRAINT uc_appointment UNIQUE (doctor_id, appointment_date, appointment_time)
);

-- Sample data

-- Specializations
INSERT INTO Specializations (name) VALUES
('Cardiology'),
('Pediatrics'),
('Dermatology'),
('General Medicine');

-- Doctors
INSERT INTO Doctors (full_name, email, phone, specialization_id) VALUES
('Dr. John Smith', 'john.smith@clinic.com', '1234567890', 1),
('Dr. Emily Green', 'emily.green@clinic.com', '1234567891', 2),
('Dr. Mike Brown', 'mike.brown@clinic.com', '1234567892', 3);

-- Patients
INSERT INTO Patients (full_name, date_of_birth, gender, email, phone) VALUES
('Alice Johnson', '1990-04-12', 'Female', 'alice.johnson@example.com', '5551112222'),
('Bob Williams', '1985-11-23', 'Male', 'bob.williams@example.com', '5553334444');

-- Appointments
INSERT INTO Appointments (doctor_id, patient_id, appointment_date, appointment_time, reason) VALUES
(1, 1, '2025-05-10', '09:00:00', 'Routine check-up'),
(2, 2, '2025-05-11', '10:30:00', 'Child cough and fever');











 

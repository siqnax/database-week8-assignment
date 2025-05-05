# database-week8-assignment



## QUESTION 1:
# Clinic Booking System

## 📋 Project Description

The **Clinic Booking System** is a relational database designed to manage and track appointments, doctors, patients, and related data for a medical clinic. This database provides a structured way to store and query clinic operations including:

- Patient records  
- Doctor profiles and specialties  
- Appointment scheduling  
- Treatment details  
- Contact and billing information  

## 📦 Technologies Used

- MySQL  
- SQL (DDL and DML)  
- Compatible with MySQL Workbench, and MySQL CLI

## 🛠️ Setup Instructions

To run this project:

### 1. Prerequisites

Ensure you have one of the following installed:
- **MySQL Server** (local or remote)
- **MySQL Workbench** (GUI) or
- **phpMyAdmin** (via XAMPP/WAMP) or
- **Command-line MySQL Client**

### 2. Importing the SQL File

#### Option A: Using MySQL Workbench
1. Open MySQL Workbench.
2. Connect to your MySQL Server.
3. Create a new schema (optional).
4. Open the `.sql` file (`clinic_booking.sql`).
5. Run the SQL script.

#### Option B: Using phpMyAdmin
1. Open `phpMyAdmin`.
2. Select or create a new database.
3. Click **Import**.
4. Choose `clinic_booking.sql` file.
5. Click **Go** to execute.

#### Option C: Using Command Line
```bash
mysql -u your_username -p your_database_name < clinic_booking.sql
```











# Question 2:


# Task Manager API

A simple CRUD API built with Node.js, Express, and MySQL for managing tasks. This project demonstrates how to connect a RESTful API to a MySQL database with full CRUD functionality.

---

## 📦 Features

- Create, Read, Update, Delete tasks
- Relational MySQL database
- RESTful API built with Express
- Organized folder structure
- Environment-based MySQL configuration

---

## 🗃️ Database Schema

**Database Name:** `taskmanager`

### Tables:

#### `users`

| Column     | Type        | Constraints          |
|------------|-------------|----------------------|
| id         | INT         | PRIMARY KEY, AUTO_INCREMENT |
| name       | VARCHAR(100)| NOT NULL             |
| email      | VARCHAR(100)| UNIQUE, NOT NULL     |

#### `tasks`

| Column     | Type         | Constraints          |
|------------|--------------|----------------------|
| id         | INT          | PRIMARY KEY, AUTO_INCREMENT |
| title      | VARCHAR(255) | NOT NULL             |
| description| TEXT         |                      |
| status     | VARCHAR(50)  | DEFAULT 'pending'    |
| user_id    | INT          | FOREIGN KEY (`users`.`id`) |

---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/task-manager-api.git
cd task-manager-api
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Configure Environment Variables

Create a `.env` file:

```env
DB_HOST=localhost
DB_USER=root (User name)
DB_PASSWORD=1234 (yourpassword)
DB_NAME=taskmanager
PORT=3000
```

### 4. Import the Database

Use the provided SQL file to set up your database:

```bash
mysql -u root -p taskmanager < db/schema.sql
```

### 5. Run the Server

```bash
npm start
```

The API will run at: `http://localhost:3000`

---

## 🔧 API Endpoints

### Users

- `GET /users`
- `POST /users`
- `GET /users/:id`
- `PUT /users/:id`
- `DELETE /users/:id`

### Tasks

- `GET /tasks`
- `POST /tasks`
- `GET /tasks/:id`
- `PUT /tasks/:id`
- `DELETE /tasks/:id`

---

## 📫 Contact

For feedback or issues, feel free to [open an issue](https://github.com/siqnax/task-manager-api/issues).

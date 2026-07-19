# Garden Database System

## Project Title

Garden Database System

## Description

The Garden Database System is a relational database project developed using MySQL and MySQL Workbench. The purpose of the project is to manage and track a home garden located in Limpopo, South Africa.

The database stores information about vegetables, fruits, and herbs, including planting dates, watering schedules, harvest records, expenses, and garden locations. This project demonstrates practical SQL and database management skills through the implementation of tables, relationships, and analytical queries.

## Technologies Used

* MySQL
* MySQL Workbench
* SQL
* GitHub

## Database Tables

### Plants

Stores information about all plants in the garden.

* PlantID
* Name
* Type
* DatePlanted

### Watering

Stores watering records for plants.

* WaterID
* PlantID
* WaterDate
* Status

### Harvest

Stores harvest information.

* HarvestID
* PlantID
* HarvestDate
* Quantity
* Unit

### Expenses

Tracks gardening expenses.

* ExpenseID
* Item
* Cost
* PurchaseDate

### GardenLocation

Stores the location of each plant within the garden.

* LocationID
* PlantID
* Area

## Key Questions Answered by the Database

* How many plants are in the garden?
* How many vegetables, fruits, and herbs are there?
* Which plants need watering?
* Which plants have been harvested?
* What is the total amount spent on the garden?
* Where is each plant located?
* Which plants are located in the orchard?
* Which fruits were planted before 2026?
* Which plants were skipped during watering?
* What is the total harvest quantity?

## Sample Queries

### Count Plants by Type

```sql
SELECT Type, COUNT(*) AS NumberOfPlants
FROM Plants
GROUP BY Type;
```

### Find Plants That Need Water

```sql
SELECT p.Name, w.Status
FROM Plants p
JOIN Watering w
ON p.PlantID = w.PlantID
WHERE w.Status = 'Needs Water';
```

### Calculate Total Expenses

```sql
SELECT SUM(Cost) AS TotalSpent
FROM Expenses;
```

### Display Plant Locations

```sql
SELECT p.Name, g.Area
FROM Plants p
JOIN GardenLocation g
ON p.PlantID = g.PlantID;
```

## Screenshots

Screenshots of the following queries are included in the `screenshots` folder:

* Count plants by type
* Plants that need water
* Total expenses
* Plant locations
* Multiple table JOIN query

## Skills Demonstrated

This project demonstrates the following SQL and database skills:

* Database Design
* Relational Database Management
* CREATE TABLE
* INSERT INTO
* SELECT Statements
* WHERE Clauses
* ORDER BY
* GROUP BY
* Aggregate Functions (`COUNT`, `SUM`)
* INNER JOIN
* Multi-table JOINs
* Data Analysis using SQL
* Database Documentation
* Version Control using GitHub

## Installation

1. Clone the repository.
2. Open MySQL Workbench.
3. Run `create_tables.sql`.
4. Run `insert_data.sql`.
5. Run `queries.sql`.
6. View the results and screenshots.

## Author

Pfunzo Maba

## Future Improvements

* Build a web interface using HTML, CSS, and JavaScript.
* Develop a dashboard for visualizing garden statistics.
* Deploy the application online.

-- Plants queries
SELECT * FROM Plants;

SELECT * FROM Plants
WHERE Type = 'Fruit';

SELECT COUNT(*) AS TotalPlants
FROM Plants;

SELECT Type, COUNT(*) AS NumberOfPlants
FROM Plants
GROUP BY Type;

SELECT Name
FROM Plants
ORDER BY Name;

SELECT Name, DatePlanted
FROM Plants
ORDER BY DatePlanted DESC;

-- Watering Queries
SELECT * FROM Watering;

SELECT p.Name, w.Status
FROM Plants p
JOIN Watering w
ON p.PlantID = w.PlantID
WHERE w.Status = 'Needs Water';

SELECT p.Name
FROM Plants p
JOIN Watering w
ON p.PlantID = w.PlantID
WHERE w.Status = 'Skipped';

-- Harvest Queries
SELECT * FROM Harvest;

SELECT p.Name, h.Quantity, h.Unit
FROM Plants p
JOIN Harvest h
ON p.PlantID = h.PlantID;

SELECT SUM(Quantity)
FROM Harvest;

-- Expense Queries
SELECT * FROM Expenses;

SELECT SUM(Cost) AS TotalSpent
FROM Expenses;

SELECT *
FROM Expenses
ORDER BY Cost DESC
LIMIT 1;

-- Garden Location Queries

-- where each plant is located
SELECT p.Name, g.Area
FROM Plants p
JOIN GardenLocation g
ON p.PlantID = g.PlantID;

-- Show all plants in the Orchard
SELECT p.Name
FROM Plants p
JOIN GardenLocation g
ON p.PlantID = g.PlantID
WHERE g.Area = 'Orchard';


-- Show plants, their location, and watering status
SELECT p.Name, g.Area, w.Status
FROM Plants p
JOIN GardenLocation g
ON p.PlantID = g.PlantID
JOIN Watering w
ON p.PlantID = w.PlantID;

SELECT Name
FROM Plants
WHERE Type = 'Fruit'
AND DatePlanted < '2026-01-01';
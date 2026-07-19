
CREATE TABLE Plants (
    PlantID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Type VARCHAR(20) NOT NULL,      -- Vegetable, Fruit or herb
    DatePlanted DATE NOT NULL
);

CREATE TABLE Watering (
    WaterID INT PRIMARY KEY,
    PlantID INT NOT NULL,
    WaterDate DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (PlantID) REFERENCES Plants(PlantID)
);

CREATE TABLE Harvest (
    HarvestID INT PRIMARY KEY,
    PlantID INT NOT NULL,
    HarvestDate DATE NOT NULL,
    Quantity DECIMAL(5,2),
    Unit VARCHAR(10),
    FOREIGN KEY (PlantID) REFERENCES Plants(PlantID)
);

CREATE TABLE Expenses (
    ExpenseID INT PRIMARY KEY,
    Item VARCHAR(100) NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    PurchaseDate DATE NOT NULL
);

CREATE TABLE GardenLocation (
    LocationID INT PRIMARY KEY,
    PlantID INT NOT NULL,
    Area VARCHAR(50) NOT NULL,
    FOREIGN KEY (PlantID) REFERENCES Plants(PlantID)
);


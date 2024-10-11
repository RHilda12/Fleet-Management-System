--Creating Entities
--Vehicles
CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
	license_plate VARCHAR(10) NOT NULL
);

--Drivers'
CREATE TABLE Drivers (
    driver_id INT  PRIMARY KEY,
	vehicle_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    license_number VARCHAR(15) NOT NULL,
	FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

--Maintenance Records
CREATE TABLE Maintenance_records (
    record_id INT  PRIMARY KEY,
    vehicle_id INT NOT NULL,
    maintenance_type VARCHAR NOT NULL,
	date DATE NOT NULL,
	cost DECIMAL(10,2) NOT NULL,
    description CHAR(100) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

--Parts 
CREATE TABLE Parts (
    part_id INT  PRIMARY KEY,
	vehicle_id INT NOT NULL,
    name VARCHAR NOT NULL,
    description CHAR NOT NULL,
	date DATE NOT NULL,
	unit_price DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

--FuelLogs
CREATE TABLE Fuel_logs (
    log_id INT  PRIMARY KEY,
    vehicle_id INT NOT NULL,
	date DATE NOT NULL,
	milleage INT NOT NULL,
	fuel_type VARCHAR NOT NULL,
	quantity DECIMAL NOT NULL,
	location_id INT NOT NULL,
	FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id),
	FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

--ServiceHistory
CREATE TABLE Service_history (
    service_id INT  PRIMARY KEY,
    vehicle_id INT NOT NULL,
	service_type VARCHAR, 
	date DATE NOT NULL,
	description CHAR NOT NULL,
	FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
);

--Location Table
CREATE TABLE Locations (
    location_id INT  PRIMARY KEY,
    name VARCHAR NOT NULL,
	address CHAR NOT NULL, 
	type VARCHAR NOT NULL
);





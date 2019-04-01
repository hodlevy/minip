CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (cityName)
);

CREATE TABLE area
(
  areaId INT NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  state VARCHAR(20) NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaId),
  FOREIGN KEY (cityName) REFERENCES city(cityName)
);

CREATE TABLE branch
(
  branchId INT NOT NULL,
  branchName VARCHAR(20) NOT NULL,
  numOfTheatres INT NOT NULL,
  address VARCHAR(40) NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (branchId),
  FOREIGN KEY (cityName) REFERENCES city(cityName)
);

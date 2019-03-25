CREATE TABLE city
(
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (cityName)
);

CREATE TABLE agent
(
  agentId NUMERIC(3) NOT NULL,
  agentName VARCHAR(20) NOT NULL,
  Rating NUMERIC(2) NOT NULL,
  HireYear NUMERIC(4) NOT NULL,
  BossId NUMERIC(9) NOT NULL,
  salary FLOAT NOT NULL,
  PRIMARY KEY (agentId)
);

CREATE TABLE client
(
  clientId NUMERIC(9) NOT NULL,
  clientName VARCHAR(20) NOT NULL,
  PhoneNr VARCHAR(10) NOT NULL,
  Address VARCHAR(25) NOT NULL,
  PRIMARY KEY (clientId)
);

CREATE TABLE schedule
(
  meetingTime DATE NOT NULL,
  PRIMARY KEY (meetingTime)
);

CREATE TABLE Relationship
(
  cityName VARCHAR(20) NOT NULL,
  clientId NUMERIC(9) NOT NULL,
  PRIMARY KEY (cityName, clientId),
  FOREIGN KEY (cityName) REFERENCES city(cityName),
  FOREIGN KEY (clientId) REFERENCES client(clientId)
);

CREATE TABLE Relationship
(
  clientId NUMERIC(9) NOT NULL,
  agentId NUMERIC(3) NOT NULL,
  PRIMARY KEY (clientId, agentId),
  FOREIGN KEY (clientId) REFERENCES client(clientId),
  FOREIGN KEY (agentId) REFERENCES agent(agentId)
);

CREATE TABLE Relationship
(
  meetingTime DATE NOT NULL,
  clientId NUMERIC(9) NOT NULL,
  PRIMARY KEY (meetingTime, clientId),
  FOREIGN KEY (meetingTime) REFERENCES schedule(meetingTime),
  FOREIGN KEY (clientId) REFERENCES client(clientId)
);

CREATE TABLE Relationship
(
  meetingTime DATE NOT NULL,
  agentId NUMERIC(3) NOT NULL,
  PRIMARY KEY (meetingTime, agentId),
  FOREIGN KEY (meetingTime) REFERENCES schedule(meetingTime),
  FOREIGN KEY (agentId) REFERENCES agent(agentId)
);

CREATE TABLE area
(
  areaId NUMERIC(3) NOT NULL,
  areaName VARCHAR(20) NOT NULL,
  cityName VARCHAR(20) NOT NULL,
  PRIMARY KEY (areaId),
  FOREIGN KEY (cityName) REFERENCES city(cityName)
);

CREATE TABLE Relationship
(
  agentId NUMERIC(3) NOT NULL,
  areaId NUMERIC(3) NOT NULL,
  PRIMARY KEY (agentId, areaId),
  FOREIGN KEY (agentId) REFERENCES agent(agentId),
  FOREIGN KEY (areaId) REFERENCES area(areaId)
);
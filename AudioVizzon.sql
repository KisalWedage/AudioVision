CREATE DATABASE AUDIOVIZZON;
USE AUDIOVIZZON;
CREATE TABLE w1742101_Device(
	w1742101_deviceCatalogId VARCHAR(10),
    w1742101_deviceCatalogName VARCHAR(30),
    w1742101_deviceDescrip VARCHAR(50),
    w1742101_availabilityStatus VARCHAR(20),
    CONSTRAINT pk_w1742101_Device_w1742101_deviceCatalogId PRIMARY KEY (w1742101_deviceCatalogId)
);
DROP TABLE w1742101_Device;

CREATE TABLE w1742101_Visual_Device(
	w1742101_deviceCatalogId VARCHAR(10),
    w1742101_deviceCatalogName VARCHAR(30),
    w1742101_deviceDescrip VARCHAR(50),
    w1742101_availabilityStatus VARCHAR(20),
    w1742101_lensSerialNb VARCHAR(30) UNIQUE,
    w1742101_frameFlag BOOLEAN,
    w1742101_lensFlag BOOLEAN,
    w1742101_frBrand VARCHAR(15),
    w1742101_frModel VARCHAR(15),
    w1742101_lensVisionType VARCHAR(10),
    w1742101_lensTint VARCHAR(10),
    w1742101_lensThinnessLevel VARCHAR(15),
    CONSTRAINT fk_w1742101_Visual_Device_w1742101_deviceCatalogId FOREIGN KEY (w1742101_deviceCatalogId) REFERENCES w1742101_Device(w1742101_deviceCatalogId)
);

DROP TABLE w1742101_Visual_Device;

CREATE TABLE w1742101_Hearing_Device(
	w1742101_deviceCatalogId VARCHAR(10),
    w1742101_deviceCatalogName VARCHAR(30),
    w1742101_deviceDescrip VARCHAR(50),
    w1742101_availabilityStatus VARCHAR(20),
    w1742101_hdBrand VARCHAR(15),
    w1742101_hdModel VARCHAR(15),
    CONSTRAINT fk_w1742101_Hearing_Device_w1742101_deviceCatalogId FOREIGN KEY (w1742101_deviceCatalogId) REFERENCES w1742101_Device(w1742101_deviceCatalogId)
);
DROP TABLE w1742101_Hearing_Device;
select * from w1742101_device;
select * from  w1742101_Visual_Device;
select * from  w1742101_Hearing_Device;

delete  from w1742101_device;
delete  from w1742101_Visual_Device;
delete  from w1742101_Hearing_Device;

SHOW TABLES;

INSERT INTO w1742101_device VALUES ("Empo324","Emporio Armani","Brand new grey and blue ultra-light frame, latest trend in 2019","in stock");
INSERT INTO w1742101_Visual_Device VALUES ("Empo324","opto456321987",1,1,"Ray band","ray451","Single vision for short-sightedness","clear","ultra-thin");

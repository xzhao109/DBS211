--S1

CREATE TABLE
  users (
    userid VARCHAR(4) PRIMARY key,
    lastname VARCHAR(30) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    email VARCHAR(35) NOT NULL UNIQUE,
    city VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    birthday DATE NOT NULL,
    phone INT NOT NULL UNIQUE
  );

CREATE TABLE
  destination (
    destinationid VARCHAR(5) PRIMARY key,
    destinationname VARCHAR(100) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    location VARCHAR(30) NOT NULL
  );

CREATE TABLE
  attraction (
    attractionid VARCHAR(5) PRIMARY key,
    destinationid VARCHAR(5) NOT NULL,
    attractionname VARCHAR(100) NOT NULL,
    attractiondesc VARCHAR(1000) NOT NULL,
    CONSTRAINT attraction_fk FOREIGN key (destinationid) REFERENCES destination
  );

CREATE TABLE
  transporttype (
    transporttype VARCHAR(15) PRIMARY key,
    attractionid VARCHAR(5) NOT NULL,
    ticketfare INT NOT NULL,
    traveltime DATE NOT NULL,
    CONSTRAINT transporttype_fk FOREIGN key (attractionid) REFERENCES attraction
  );

CREATE TABLE
  attractionreview (
    attractionid VARCHAR(5),
    userid VARCHAR(4),
    dislikes INT NOT NULL,
    likes INT NOT NULL,
    PRIMARY key (attractionid, userid),
    CONSTRAINT attractionreview_fk FOREIGN key (attractionid) REFERENCES attraction,
    CONSTRAINT attractionreview_fk2 FOREIGN key (userid) REFERENCES users
  );
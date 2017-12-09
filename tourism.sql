-- Task 1
CREATE TABLE ROUTE
  (
    ROUTE_ID   NUMBER NOT NULL,
    ROUTE_NAME VARCHAR2(60) NOT NULL,
    START_NAME VARCHAR2(60) NOT NULL,
    END_NAME   VARCHAR2(60) NOT NULL,
    ROUTE_LENGTH     NUMBER NOT NULL
  );

ALTER TABLE ROUTE
   ADD (CONSTRAINT ROUTE_ID_PK PRIMARY KEY (ROUTE_ID));
   
CREATE TABLE BUS
  (
    BUS_ID   NUMBER NOT NULL,
    BUS_NUMBER VARCHAR2(60) NOT NULL,
    BUS_NAME VARCHAR2(60) NOT NULL,
    MILEAGE NUMBER NOT NULL
  );

ALTER TABLE BUS
   ADD (CONSTRAINT BUS_ID_PK PRIMARY KEY (BUS_ID));
   
CREATE TABLE WORKER
  (
    WORKER_ID   NUMBER NOT NULL,
    WORKER_NAME VARCHAR2(60) NOT NULL,
    WORKER_NUMBER VARCHAR2(60) NOT NULL,
    WORKER_EXPEIRENCE NUMBER NOT NULL,
    WORKER_CATEGORY VARCHAR2(60) NOT NULL,
    WORKER_ADDRESS VARCHAR2(60) NOT NULL,
    WORKER_BYEAR NUMBER NOT NULL,
    WORKER_BUS_ID NUMBER NOT NULL
  );

ALTER TABLE WORKER
   ADD (CONSTRAINT WORKER_ID_PK PRIMARY KEY (WORKER_ID));
   
CREATE TABLE TRIP
  (
    TRIP_ID   NUMBER NOT NULL,
    TRIP_BUS_ID   NUMBER NOT NULL,
    TRIP_ROUTE_ID   NUMBER NOT NULL,
    START_DATE   DATE NOT NULL,
    END_DATE   DATE NOT NULL,
    PASSENGER_COUNT   NUMBER NOT NULL,
    TICKET_PRICE   NUMBER(10,2) NOT NULL
  );

ALTER TABLE TRIP
   ADD (CONSTRAINT TRIP_ID_PK PRIMARY KEY (TRIP_ID));

ALTER TABLE WORKER
ADD (CONSTRAINT WORKER_BUS_FK_CNUM FOREIGN KEY (WORKER_BUS_ID) REFERENCES BUS (BUS_ID) ON DELETE CASCADE);

ALTER TABLE TRIP
ADD (CONSTRAINT TRIP_BUS_FK_CNUM FOREIGN KEY (TRIP_BUS_ID) REFERENCES BUS (BUS_ID) ON DELETE CASCADE);

ALTER TABLE TRIP
ADD (CONSTRAINT TRIP_ROUTE_FK_CNUM FOREIGN KEY (TRIP_ROUTE_ID) REFERENCES ROUTE (ROUTE_ID) ON DELETE CASCADE);

-- Task 3
INSERT INTO ROUTE(ROUTE_ID, ROUTE_NAME, START_NAME, END_NAME, ROUTE_LENGTH)
  VALUES('1', 'High mountain', 'Great Plate', 'Deep River', '111');
INSERT INTO ROUTE(ROUTE_ID, ROUTE_NAME, START_NAME, END_NAME, ROUTE_LENGTH)
  VALUES('2', 'Scary Forest', 'Black Forest', 'Deep River', '215');
INSERT INTO ROUTE(ROUTE_ID, ROUTE_NAME, START_NAME, END_NAME, ROUTE_LENGTH)
  VALUES('3', 'High mountain', 'Great Plate', 'Deep River', '312');
INSERT INTO ROUTE(ROUTE_ID, ROUTE_NAME, START_NAME, END_NAME, ROUTE_LENGTH)
  VALUES('4', 'High mountain', 'Black Forest', 'Great Plate', '61');
  
INSERT INTO BUS(BUS_ID, BUS_NUMBER, BUS_NAME, MILEAGE)
  VALUES('1', '0001A', 'Scary', '11161');
INSERT INTO BUS(BUS_ID, BUS_NUMBER, BUS_NAME, MILEAGE)
  VALUES('2', '0001B', 'Black', '22161');
INSERT INTO BUS(BUS_ID, BUS_NUMBER, BUS_NAME, MILEAGE)
  VALUES('3', '0002', 'White', '25161');
INSERT INTO BUS(BUS_ID, BUS_NUMBER, BUS_NAME, MILEAGE)
  VALUES('4', '0005', 'Yellow', '32161');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('1', 'John A.', '010101', '2', 'D', 'Russia', '1999', '1');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('2', 'Tedd A.', '010151', '2', 'D', 'Russia', '1997', '1');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('3', 'Peter B.', '010102', '1', 'D', 'Russia', '1998', '1');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('4', 'John C.', '030102', '3', 'D', 'Russia', '1996', '2');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('5', 'Bill C.', '036602', '3', 'D', 'Russia', '1993', '2');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('6', 'Peter Y.', '080102', '3', 'D', 'Russia', '1995', '2');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('7', 'Bill K.', '090102', '3', 'D', 'Russia', '1999', '3');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('8', 'Peter T.', '150102', '3', 'D', 'Russia', '1999', '3');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('9', 'Stehan T.', '5490102', '3', 'D', 'Russia', '1999', '3');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('10', 'Bill U.', '098102', '3', 'D', 'Russia', '1999', '4');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('11', 'John T.', '090753', '3', 'D', 'Russia', '1999', '4');
  
INSERT INTO WORKER(WORKER_ID, WORKER_NAME, WORKER_NUMBER, WORKER_EXPEIRENCE,
  WORKER_CATEGORY, WORKER_ADDRESS, WORKER_BYEAR, WORKER_BUS_ID)
  VALUES('12', 'Stehan T.', '095742', '3', 'D', 'Russia', '1999', '4');
  
INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('1', '1', '1', '04/03/2017', '05/03/2017', '12', '400');

INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('2', '1', '1', '01/03/2017', '04/03/2017', '22', '200');

INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('3', '2', '2', '02/03/2017', '04/03/2017', '21', '350');

INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('4', '3', '3', '03/03/2017', '05/03/2017', '25', '450');

INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('5', '2', '1', '02/03/2017', '05/03/2017', '21', '200');

INSERT INTO TRIP(TRIP_ID, TRIP_BUS_ID, TRIP_ROUTE_ID, START_DATE,
  END_DATE, PASSENGER_COUNT, TICKET_PRICE)
  VALUES('6', '3', '1', '03/03/2017', '04/03/2017', '27', '300');

UPDATE TRIP SET PASSENGER_COUNT = 33 WHERE TRIP_ID = 6;
UPDATE WORKER SET BYEAR = 1999 WHERE WORKER_ID = 5;
DELETE FROM BUS WHERE BUS_ID = 4;
  
-- Task 2.1
SELECT *
FROM TRIP t
INNER JOIN BUS b
ON t.TRIP_BUS_ID   = b.BUS_ID
WHERE b.BUS_NUMBER = :BusNumber
AND t.START_DATE  >= :StartDate
AND t.END_DATE    <= :EndDate;

-- Task 2.2
SELECT COUNT(*) TotalTrips,
  SUM(t.PASSENGER_COUNT) TotalPassengers,
  SUM(t.PASSENGER_COUNT * T.TICKET_PRICE) TotalIncome
FROM TRIP t
INNER JOIN BUS b
ON t.TRIP_BUS_ID   = b.BUS_ID
WHERE b.BUS_NUMBER = :BusNumber;

-- Task 2.3
SELECT b.BUS_NUMBER BusNumber,
  SUM(t.PASSENGER_COUNT * T.TICKET_PRICE * 0.20) TotalIncome
FROM TRIP t
INNER JOIN BUS b
ON t.TRIP_BUS_ID    = b.BUS_ID
WHERE t.START_DATE >= :StartDate
AND t.END_DATE     <= :EndDate
GROUP BY b.BUS_NUMBER;

-- Task 2.4
SELECT b.BUS_NUMBER BusNumber,
  W.WORKER_NAME WorkerName,
  t.TICKET_PRICE TicketPrice
FROM TRIP t
INNER JOIN BUS b
ON t.TRIP_BUS_ID = b.BUS_ID
INNER JOIN WORKER w
ON W.WORKER_BUS_ID   = T.TRIP_BUS_ID
WHERE t.TICKET_PRICE =
  (SELECT MAX(TICKET_PRICE) FROM TRIP
  );
  
-- Task 2.5
SELECT b.BUS_NUMBER BusNumber,
  b.MILEAGE Mileage,
  SUM(t.PASSENGER_COUNT) PassengerCount
FROM TRIP t
INNER JOIN BUS b
ON t.TRIP_BUS_ID = b.BUS_ID
WHERE b.MILEAGE  =
  (SELECT MAX(MILEAGE) FROM BUS
  )
GROUP BY b.BUS_NUMBER,
  b.MILEAGE;

-- Task 4
CREATE OR REPLACE TRIGGER TR_INS_TRIP BEFORE
  INSERT ON TRIP FOR EACH ROW DECLARE wrk_count NUMBER;
  BEGIN
    SELECT COUNT(*)
    INTO wrk_count
    FROM WORKER w
    WHERE w.WORKER_BUS_ID = :new.TRIP_BUS_ID;
    IF (wrk_count        <> 3) THEN
      RAISE_APPLICATION_ERROR(-20001, 'Wrong workers count');
    END IF;
  END;

-- Task 5
CREATE TABLE CALCRESULTS
  ( BUS_NAME VARCHAR2(60), CASH NUMBER
  );
CREATE OR REPLACE PROCEDURE CalculateCash
  (
    cash_percent NUMBER,
    start_date   DATE,
    end_date     DATE
  )
AS
BEGIN
  INSERT
  INTO CALCRESULTS
    (
      BUS_NAME,
      CASH
    )
    (SELECT b.BUS_NUMBER BusNumber,
        t.TICKET_PRICE * t.PASSENGER_COUNT * cash_percent
      FROM TRIP t
      INNER JOIN BUS b
      ON t.TRIP_BUS_ID    = b.BUS_ID
      WHERE t.START_DATE >= start_date
      AND t.END_DATE     <= end_date
    );
END;
   
-- Task 6
CREATE OR REPLACE FUNCTION CalculateCashForBus(
    bus_number VARCHAR2,
    dt         DATE)
  RETURN NUMBER
AS
  cash NUMBER;
BEGIN
  SELECT SUM(t.TICKET_PRICE * t.PASSENGER_COUNT * 0.2)
  INTO cash
  FROM TRIP t
  INNER JOIN BUS b
  ON t.TRIP_BUS_ID    = b.BUS_ID
  WHERE t.START_DATE >= dt
  AND t.END_DATE     <= dt
  AND b.BUS_NUMBER    = bus_number;
  RETURN cash;
END;
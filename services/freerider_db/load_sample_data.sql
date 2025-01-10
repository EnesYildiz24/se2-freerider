USE FREERIDER_DB;

DELETE FROM CUSTOMER;
INSERT INTO CUSTOMER (ID, NAME, CONTACT, STATUS) VALUES
    (1, 'Meyer, Eric', 'eme22@gmail.com', 'Active'),
    (2, 'Sommer, Tina', '030 22458 29425', 'Active'),
    (3, 'Schulze, Tim', '+49 171 2358124', 'Active')
;

DELETE FROM VEHICLE;
INSERT INTO VEHICLE (ID, MAKE, MODEL, SEATS, CATEGORY, POWER, STATUS) VALUES
    (1001, 'VW', 'Golf', 4, 'Sedan', 'Gasoline', 'Active'),
    (1002, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (2000, 'BMW', '320d', 4, 'Sedan', 'Diesel', 'Active'),
    (3000, 'Mercedes', 'EQS', 4, 'Sedan', 'Electric', 'Active'),
    (1200, 'VW', 'Multivan Life', 8, 'Van', 'Gasoline', 'Active'),
    (6000, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (6001, 'Tesla', 'Model S', 4, 'Sedan', 'Electric', 'Serviced')
;

DELETE FROM RESERVATION;
INSERT INTO RESERVATION (ID, CUSTOMER_ID, VEHICLE_ID, BEGIN, END, PICKUP, DROPOFF, STATUS) VALUES
    (201235, 1, 1002, STR_TO_DATE('20/12/2024 10:00:00','%d/%m/%Y %H:%i:%s'), STR_TO_DATE('20/12/2024 20:00:00','%d/%m/%Y %H:%i:%s'), 'Berlin Wedding', 'Berlin Wedding', 'Booked'),
    (145373, 2, 6001, STR_TO_DATE('04/12/2024 20:00:00','%d/%m/%Y %H:%i:%s'), STR_TO_DATE('04/12/2024 23:00:00','%d/%m/%Y %H:%i:%s'), 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (382565, 2, 3000, 20241218180000, 20241218181000, 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (351682, 2, 6000, from_unixtime(unix_timestamp()), from_unixtime(unix_timestamp() + 2*60*60), 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (682351, 2, 6000, from_unixtime(1671357600), from_unixtime(1671379200), 'Potsdam', 'Teltow', 'Inquired')
;

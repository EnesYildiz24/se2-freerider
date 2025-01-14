USE FREERIDER_DB;

DELETE FROM RESERVATION;
INSERT INTO RESERVATION (ID, CUSTOMER_ID, VEHICLE_ID, BEGIN, END, PICKUP, DROPOFF, STATUS) VALUES
    (201235, 1, 1002, STR_TO_DATE('20/12/2022 10:00:00','%d/%m/%Y %H:%i:%s'), STR_TO_DATE('20/12/2022 20:00:00','%d/%m/%Y %H:%i:%s'), 'Berlin Wedding', 'Berlin Wedding', 'Booked'),
    (145373, 2, 1009, STR_TO_DATE('04/12/2022 20:00:00','%d/%m/%Y %H:%i:%s'), STR_TO_DATE('04/12/2022 23:00:00','%d/%m/%Y %H:%i:%s'), 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (382565, 2, 3000, 20221218180000, 20221218181000, 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (351682, 2, 8000, from_unixtime(unix_timestamp()), from_unixtime(unix_timestamp() + 2*60*60), 'Berlin Wedding', 'Hamburg', 'Inquired'),
    (682351, 2, 8001, from_unixtime(1671357600), from_unixtime(1671379200), 'Potsdam', 'Teltow', 'Inquired')
;
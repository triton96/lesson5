CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT * FROM cars;
/*1. Создайте представление, в которое попадут автомобили стоимостью 
до 25 000 долларов */

CREATE OR REPLACE VIEW wiew_1 AS
SELECT distinct cars.name  as 'auto', cost 
FROM cars where cost < 25000 order by name;
select * from wiew_1;

/* 2. Изменить в существующем представлении порог для стоимости: 
пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) */

alter VIEW wiew_1 AS
SELECT distinct cars.name  as 'auto', cost  
FROM cars where cost < 30000 order by name;

select * from wiew_1;

/* 3. Создайте представление, в котором будут только автомобили марки 
“Шкода” и “Ауди” */

CREATE OR REPLACE VIEW wiew_2 AS
SELECT cars.name  as 'auto', cost FROM cars  
where cars.name in ("Audi","Skoda");

select * from wiew_2;

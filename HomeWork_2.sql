-- 1
CREATE TABLE if not exists sales (
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_date date,
  count_product INT
);
insert into sales (order_date, count_droduct) value
(2022-01-01, 156),
(2022-01-02, 180),
(2022-01-03, 21),
(2022-01-04, 124),
(2022-01-05, 341);

-- 2
SELECT id "id заказа",
  CASE 
    WHEN count_droduct < 100 THEN "Маленький заказ"
    WHEN count_droduct >= 100 AND count_droduct <= 300 THEN "Средний заказ"
    ELSE "Большой заказ"
  END AS "Тип заказа"
FROM sales;

-- 3
CREATE TABLE if not exists orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  employee_id varchar(45),
  amount double,
  order_status varchar(45)
);
insert into orders (employee_id, amount, order_status) value
(e03, 15.00, "OPEN"),
(e01, 25.50, "OPEN"),
(e05, 100.70, "CLOSED"),
(e02, 22.18, "OPEN"),
(e04, 9.50, "CANCELLED");

select id "Номер",
CASE 
    WHEN order_status = "CANCELLED" THEN "order is cancelled"
    WHEN order_status = "CLOSED" THEN "order is closed"
    WHEN order_status = "OPEN" THEN "order is in open state"
    END AS "Статус"
FROM cinema;

-- 4 
-- NULL отличается от 0 тем, что NULL представляет отсутствие значения или неопределенное значение,
-- в то время как 0 является конкретным числовым значением. 
-- NULL означает, что значение отсутствует, неизвестно или не определено, 
-- в то время как 0 представляет собой определенное число, равное нулю.

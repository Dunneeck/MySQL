
-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке:
-- возрастание
SELECT * FROM staff 
ORDER BY salary;
-- убывание
SELECT * FROM staff 
ORDER BY salary DESC;

-- 2. Выведите 5 максимальных заработных плат (saraly)
SELECT * FROM staff 
ORDER BY salary DESC
limit 5;

-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, SUM(salary) AS sum_salary
FROM staff
GROUP BY post;

-- 4. Найдите кол-во сотрудников с специальностью (post) « Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT COUNT(first_name) AS Count_people
FROM staff
WHERE post = "Рабочий" AND age >= 24 AND age <= 49; 

-- 5. Найдите количество специальностей
SELECT COUNT(distinct post) as Count_post
FROM staff;

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
SELECT post, AVG(age) AS average_age
FROM staff
GROUP BY post
HAVING AVG(age) <= 30;

# 1 задача в pdf файле(скриншотом), там же и 2 и 3
  
# Вывести производителя и цену где количество товаров больше 2
SELECT manufacturer, price FROM homework_1.mobile_phones WHERE count > 2;
# Вывести все о товаре, где производитель Samsung
SELECT * FROM homework_1.mobile_phones WHERE manufacturer = "Samsung";

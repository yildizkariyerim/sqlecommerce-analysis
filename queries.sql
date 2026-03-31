-- =========================================
-- SQL E-COMMERCE ANALYSIS PROJECT
-- =========================================


-- =========================================
-- 1️⃣ TABLE CREATION
-- =========================================
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_name TEXT,
city TEXT,
product TEXT,
quantity INT,
price INT,
order_date DATE
);


-- =========================================
-- 2️⃣ DATA INSERTION
-- =========================================
INSERT INTO orders (customer_name, city, product, quantity, price, order_date)
VALUES
('Ayşe','Istanbul','Laptop',1,25000,'2024-01-01'),
('Mehmet','Ankara','Mouse',2,600,'2024-01-02'),
('Zeynep','Izmir','Keyboard',1,1200,'2024-01-03'),
('Ali','Istanbul','Monitor',1,7000,'2024-01-03'),
('Fatma','Bursa','Laptop',1,24000,'2024-01-04'),
('Ahmet','Antalya','Mouse',3,900,'2024-01-05'),
('Elif','Istanbul','Keyboard',2,2400,'2024-01-05'),
('Can','Izmir','Monitor',1,6800,'2024-01-06'),
('Burak','Istanbul','Mouse',1,300,'2024-01-07'),
('Ece','Ankara','Laptop',1,26000,'2024-01-07'),
('Deniz','Izmir','Keyboard',1,1100,'2024-01-08'),
('Mert','Bursa','Monitor',1,6500,'2024-01-08'),
('Selin','Istanbul','Mouse',2,600,'2024-01-09'),
('Hakan','Antalya','Laptop',1,25500,'2024-01-10'),
('Derya','Izmir','Keyboard',2,2400,'2024-01-10'),
('Okan','Istanbul','Monitor',1,7200,'2024-01-11'),
('Gizem','Bursa','Mouse',3,900,'2024-01-11'),
('Kaan','Ankara','Keyboard',1,1200,'2024-01-12'),
('Melis','Istanbul','Laptop',1,24500,'2024-01-12'),
('Emre','Izmir','Mouse',2,600,'2024-01-13');


-- =========================================
-- 3️⃣ BASIC QUERIES
-- =========================================

-- Tüm siparişler
SELECT *
FROM orders;

-- Müşteri ve şehir
SELECT customer_name, city
FROM orders;

-- İstanbul siparişleri
SELECT *
FROM orders
WHERE city = 'Istanbul';

-- 1000 TL üzeri siparişler
SELECT *
FROM orders
WHERE price > 1000;

-- Laptop siparişleri
SELECT *
FROM orders
WHERE product = 'Laptop';

-- En pahalı siparişler
SELECT *
FROM orders
ORDER BY price DESC;

-- En pahalı 3 sipariş
SELECT *
FROM orders
ORDER BY price DESC
LIMIT 3;

-- Toplam sipariş sayısı
SELECT COUNT(*)
FROM orders;

-- İstanbul sipariş sayısı
SELECT COUNT(*)
FROM orders
WHERE city = 'Istanbul';

-- En son sipariş
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 1;


-- =========================================
-- 4️⃣ ANALYTICAL QUERIES
-- =========================================

-- İstanbul'da en pahalı sipariş
SELECT *
FROM orders
WHERE city = 'Istanbul'
ORDER BY price DESC
LIMIT 1;

-- En ucuz sipariş
SELECT *
FROM orders
ORDER BY price ASC
LIMIT 1;

-- Kaç farklı şehir var?
SELECT COUNT(DISTINCT city)
FROM orders;


-- =========================================
-- 5️⃣ GROUP BY ANALYSIS
-- =========================================

-- Şehre göre sipariş sayısı
SELECT city, COUNT(*)
FROM orders
GROUP BY city;

-- Ürüne göre sipariş sayısı
SELECT product, COUNT(*)
FROM orders
GROUP BY product;

-- Şehre göre toplam satış
SELECT city, SUM(price)
FROM orders
GROUP BY city;

-- Ürüne göre ortalama fiyat
SELECT product, AVG(price)
FROM orders
GROUP BY product;

-- En çok satış yapan şehir
SELECT city, SUM(price)
FROM orders
GROUP BY city
ORDER BY SUM(price) DESC
LIMIT 1;

-- Ürüne göre toplam gelir
SELECT product, SUM(price)
FROM orders
GROUP BY product
ORDER BY SUM(price) DESC;

-- Şehre göre sipariş sayısı ve toplam ciro
SELECT 
    city,
    COUNT(*) AS siparis_sayisi,
    SUM(price) AS toplam_ciro,
    AVG(price) AS ortalama_siparis
FROM orders
GROUP BY city
ORDER BY toplam_ciro DESC;

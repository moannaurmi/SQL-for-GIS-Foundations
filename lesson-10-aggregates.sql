-- Lesson 10: Aggregate Functions
-- Date: February 24, 2026
-- Score: 20/20

-- ============================================
-- BASIC COUNT (Questions 1-5)
-- ============================================

-- Q1: How many students?
SELECT COUNT(*) FROM students;

-- Q2: How many products?
SELECT COUNT(*) FROM products;

-- Q3: How many students? (renamed as "total")
SELECT COUNT(*) AS total FROM students;

-- Q4: How many students have a neighborhood?
-- Note: COUNT(column) only counts non-NULL values
SELECT COUNT(neighborhood_id) FROM students;

-- Q5: How many products? (renamed as "total_products")
SELECT COUNT(*) AS total_products FROM products;


-- ============================================
-- SUM, AVG, MAX, MIN (Questions 6-10)
-- ============================================

-- Q6: Total of all student ages
SELECT SUM(age) FROM students;

-- Q7: Average student age
SELECT AVG(age) FROM students;

-- Q8: Highest GPA
SELECT MAX(gpa) FROM students;

-- Q9: Lowest product price
SELECT MIN(price) FROM products;

-- Q10: Total of all product prices
-- Note: Initially made error using SUM(*), corrected to SUM(price)
SELECT SUM(price) FROM products;


-- ============================================
-- MULTIPLE AGGREGATES (Questions 11-15)
-- ============================================

-- Q11: Total students AND average age
SELECT COUNT(*) AS total_students, AVG(age) AS average_age
FROM students;

-- Q12: Highest AND lowest GPA
SELECT MAX(gpa) AS max_gpa, MIN(gpa) AS min_gpa
FROM students;

-- Q13: Total products AND average price
SELECT COUNT(*) AS total_products, AVG(price) AS avg_price
FROM products;

-- Q14: Total ages AND average GPA
SELECT SUM(age) AS total_age, AVG(gpa) AS avg_gpa
FROM students;

-- Q15: Count, total stock, and average stock
SELECT COUNT(*) AS product_count, SUM(stock) AS total_stock, AVG(stock) AS avg_stock
FROM products;


-- ============================================
-- AGGREGATES WITH WHERE (Questions 16-18)
-- ============================================

-- Q16: Average age of students with GPA > 3.5
SELECT AVG(age)
FROM students
WHERE gpa > 3.5;

-- Q17: How many students age 20 or older?
SELECT COUNT(*)
FROM students
WHERE age >= 20;

-- Q18: Total price of products costing more than 100
SELECT SUM(price)
FROM products
WHERE price > 100;


-- ============================================
-- COMPLEX COMBINATIONS (Questions 19-20)
-- ============================================

-- Q19: Count, avg age, max GPA for students with GPA > 3.5
SELECT COUNT(*) AS total_students, AVG(age) AS avg_age, MAX(gpa) AS max_gpa
FROM students
WHERE gpa > 3.5;

-- Q20: Total stock and avg price for products < 500
SELECT SUM(stock) AS total_stock, AVG(price) AS avg_price
FROM products
WHERE price < 500;


-- ============================================
-- KEY LEARNINGS
-- ============================================

-- COUNT(*) vs COUNT(column):
--   COUNT(*) counts all rows
--   COUNT(column) only counts non-NULL values

-- Common mistakes I made:
--   - Used SUM(*) instead of SUM(column) - doesn't work!
--   - Initially forgot to use AS for renaming
--   - Had spacing issues in column names (needed underscores)

-- WHERE filters BEFORE aggregating

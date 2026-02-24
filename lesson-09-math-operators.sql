-- Lesson 9: Math Operators and Expressions
-- Date: February 23, 2026
-- Score: 20/20

-- ============================================
-- ADDITION & SUBTRACTION (Questions 1-5)
-- ============================================

-- Q1: Show name and age plus 1
SELECT name, age + 1 AS age_plus_one
FROM students;

-- Q2: Show name and age plus 5
SELECT name, age + 5 AS age_plus_five
FROM students;

-- Q3: Show name and age minus 2
SELECT name, age - 2 AS age_minus_two
FROM students;

-- Q4: Show name and GPA plus 0.5
SELECT name, gpa + 0.5 AS gpa_plus_half
FROM students;

-- Q5: Show name, age, AND age plus 10
SELECT name, age, age + 10 AS age_plus_ten
FROM students;


-- ============================================
-- MULTIPLICATION (Questions 6-10)
-- ============================================

-- Q6: Show name and age times 2
SELECT name, age * 2 AS age_times_two
FROM students;

-- Q7: Show name and age times 3
SELECT name, age * 3 AS age_times_three
FROM students;

-- Q8: Show name and GPA times 10
SELECT name, gpa * 10 AS gpa_times_ten
FROM students;

-- Q9: Show name and GPA times 25 (percentage)
SELECT name, gpa * 25 AS percentage
FROM students;

-- Q10: Show name, original age, AND double age
SELECT name, age, age * 2 AS double_age
FROM students;


-- ============================================
-- DIVISION (Questions 11-15)
-- ============================================

-- Q11: Show name and age divided by 2
SELECT name, age / 2 AS half_age
FROM students;

-- Q12: Show name and GPA divided by 2
SELECT name, gpa / 2 AS half_gpa
FROM students;

-- Q13: Show name and age divided by 10
SELECT name, age / 10 AS age_divided_by_ten
FROM students;

-- Q14: Show name, GPA, AND GPA divided by 4
SELECT name, gpa, gpa / 4 AS gpa_divided_by_four
FROM students;

-- Q15: Show name and age times 12 (age in months)
SELECT name, age * 12 AS age_in_months
FROM students;


-- ============================================
-- COMBINED OPERATIONS (Questions 16-18)
-- ============================================

-- Q16: Show name and (age plus 5) times 2
SELECT name, (age + 5) * 2 AS result
FROM students;

-- Q17: Show name and age times 2 plus 10
SELECT name, (age * 2) + 10 AS double_age_plus_10
FROM students;

-- Q18: Show name and (GPA times 100) divided by 4
SELECT name, (gpa * 100) / 4 AS gpa_times_100_divided_by_four
FROM students;


-- ============================================
-- USING WHERE WITH MATH (Questions 19-20)
-- ============================================

-- Q19: Show name and age, only students where age + 5 > 25
SELECT name, age
FROM students
WHERE age + 5 > 25;

-- Q20: Show name and double age, only where double age < 45
SELECT name, age * 2 AS double_age
FROM students
WHERE age * 2 < 45;

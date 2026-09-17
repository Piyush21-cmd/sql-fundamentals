# SQL Fundamentals

A structured, day-by-day log of SQL practice — filtering, aggregation, and data analysis fundamentals — built while learning toward a Data Analyst role.

## Progress

### Week 1 — Core Querying (Complete)
- **Day 1:** SELECT, column aliases
- **Day 2:** WHERE, comparison operators
- **Day 3:** DISTINCT, LIMIT, ORDER BY
- **Day 4:** Combined filtering — AND, OR, IN, NOT IN, BETWEEN, operator precedence
- **Day 5:** Mixed revision on a 20-row `students` table
- **Day 6:** Harder mixed practice on a 45-row `Employees` table — inconsistent casing, NULL handling (`IS NULL` / `IS NOT NULL`), multi-column DISTINCT
- **Day 7:** Review — self-verification of query output, conceptual Q&A on WHERE vs SELECT, NULL comparison logic, operator precedence

### Week 2 — Aggregation (In Progress)
- **Day 1:** COUNT, SUM, AVG, MIN, MAX, aliasing aggregate output, combining aggregates with WHERE

## Tables Used
- `students` (student_id, name, age, city, course, marks) — Week 1 practice
- `Employees` (emp_id, name, age, city, department, salary, experience_years) — Week 1 Day 6 onward, includes NULLs and messy casing for realistic practice

## Structure
Each day's queries are in `Week N/Day-N_topic.sql`.

## Execution
Run any `.sql` file in MySQL Workbench, or an online engine such as onecompiler.com/mysql.
# SQL Fundamentals

A structured, day-by-day log of SQL practice — filtering, aggregation, and multi-table querying — built while learning toward a Data Analyst role. Each day includes hands-on query writing, self-review, and correction of real mistakes to build both syntax fluency and the habit of verifying query output before trusting it.

## Progress

### Week 1 — Core Querying (Complete)
- **Day 1:** SELECT, column aliases
- **Day 2:** WHERE, comparison operators
- **Day 3:** DISTINCT, LIMIT, ORDER BY
- **Day 4:** Combined filtering — AND, OR, IN, NOT IN, BETWEEN, operator precedence
- **Day 5:** Mixed revision on a 20-row `students` table
- **Day 6:** Harder mixed practice on a 45-row `Employees` table — inconsistent casing, NULL handling (`IS NULL` / `IS NOT NULL`), multi-column DISTINCT
- **Day 7:** Review — self-verification of query output, WHERE vs SELECT, NULL comparison logic, operator precedence

### Week 2 — Aggregation & Grouping (Complete)
- **Day 1:** COUNT, SUM, AVG, MIN, MAX, aliasing aggregate output, combining aggregates with WHERE
- **Day 2:** GROUP BY — per-category aggregation, multi-column grouping
- **Day 3:** HAVING — filtering grouped results, WHERE vs HAVING execution order
- **Day 4:** Full pipeline queries — WHERE + GROUP BY + HAVING + ORDER BY + LIMIT combined
- **Day 5:** Mixed revision across all Week 2 concepts
- **Day 6:** Harder mixed practice — calculated columns (MAX − MIN), compound HAVING conditions
- **Day 7:** Targeted review — queries built around personal weak spots from the week

### Week 3 — Joins (In Progress)

## Lessons Learned
A few recurring issues I worked through deliberately rather than avoided:
- **Comparison wording precision** — "at least" (`>=`) vs "more than" (`>`), "under" vs "over." Resolved by translating each condition into plain English before writing SQL.
- **NULL logic** — `= NULL` never matches; `IS NULL` / `IS NOT NULL` required. NULLs also form their own group under `GROUP BY`/`DISTINCT` despite not being equal to each other.
- **Column scope errors** — mixing up which condition belongs to which column (e.g., filtering a city value against a department field). Fixed by explicitly naming each column before writing the condition.
- **Verifying output, not just syntax** — built a habit of running a secondary check query alongside compound queries to confirm results before treating them as correct.

## Tables Used
- `students` (student_id, name, age, city, course, marks) — Week 1 practice
- `Employees` (emp_id, name, age, city, department, salary, experience_years) — Week 1 Day 6 onward; includes NULLs and inconsistent casing for realistic practice

## Structure
Each day's queries are in `Week N/Day-N_Topic.sql`.

## Execution
Run any `.sql` file in MySQL Workbench, or an online engine such as onecompiler.com/mysql.
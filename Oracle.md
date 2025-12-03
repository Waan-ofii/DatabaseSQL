Here is a **simple, beginner-friendly guide** to help you understand **Oracle Database**, how to use it, and the most important **SQL commands** you will need.

---

# 🟦 **1. What Is Oracle Database?**

Oracle is a powerful **Relational Database Management System (RDBMS)** used in companies for storing and managing huge amounts of data.

You interact with Oracle using **SQL** (Structured Query Language).

You can use Oracle through:

* **SQL*Plus**
* **Oracle SQL Developer** (most common, easy GUI)
* **Oracle APEX**
* **Command line (SQLPlus)**

---

# 🟩 **2. How to Start Using Oracle (Step-by-step)**

### **Option A — Using Oracle SQL Developer (recommended)**

1. Install **Oracle Database** (XE or full version).

2. Install **SQL Developer**.

3. Open SQL Developer.

4. Create a new connection:

   * Username: `system` or your user
   * Password: (the one you set)
   * Hostname: `localhost`
   * Port: `1521`
   * Service Name: usually `XE` or `orcl`

5. Click **Test** → then **Connect**.

Now you can run SQL commands.

---

# 🟨 **3. Important Oracle SQL Commands**

Here are the most important commands, explained simply:

---

## ⭐ **A. CREATE A DATABASE USER**

```sql
CREATE USER student IDENTIFIED BY pass123;
GRANT CONNECT, RESOURCE TO student;
```

---

## ⭐ **B. CREATE A TABLE**

```sql
CREATE TABLE employees (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER,
    department VARCHAR2(30)
);
```

---

## ⭐ **C. INSERT DATA**

```sql
INSERT INTO employees (id, name, salary, department)
VALUES (1, 'John', 5000, 'IT');
```

Insert multiple:

```sql
INSERT INTO employees VALUES (2, 'Sara', 6000, 'HR');
```

---

## ⭐ **D. SELECT (READ DATA)**

### Select all rows:

```sql
SELECT * FROM employees;
```

### Select specific columns:

```sql
SELECT name, salary FROM employees;
```

### Apply conditions:

```sql
SELECT * FROM employees WHERE salary > 5000;
```

---

## ⭐ **E. UPDATE DATA**

```sql
UPDATE employees
SET salary = 7000
WHERE id = 1;
```

---

## ⭐ **F. DELETE DATA**

```sql
DELETE FROM employees WHERE id = 2;
```

---

## ⭐ **G. ALTER TABLE**

Add a new column:

```sql
ALTER TABLE employees ADD email VARCHAR2(100);
```

Change column data type:

```sql
ALTER TABLE employees MODIFY salary NUMBER(10,2);
```

Delete a column:

```sql
ALTER TABLE employees DROP COLUMN department;
```

---

## ⭐ **H. DROP TABLE**

```sql
DROP TABLE employees;
```

---

## ⭐ **I. COMMIT and ROLLBACK**

Oracle does not save changes automatically.

### Save changes:

```sql
COMMIT;
```

### Undo changes:

```sql
ROLLBACK;
```

---

# 🟧 **4. Oracle-Specific Features**

Oracle has some unique things compared to MySQL:

### ✔ `VARCHAR2` instead of `VARCHAR`

### ✔ `NUMBER` instead of `INT`

### ✔ Sequences for auto-increment values

### Example: Create a sequence

```sql
CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1;
```

Use sequence when inserting:

```sql
INSERT INTO employees (id, name, salary)
VALUES (emp_seq.NEXTVAL, 'David', 5500);
```
# 🟫 **5. Simple Practice Exercise**

Try this in SQL Developer:

```sql
CREATE TABLE students (
    sid NUMBER PRIMARY KEY,
    sname VARCHAR2(50),
    grade NUMBER
);

INSERT INTO students VALUES (1, 'Adam', 90);
INSERT INTO students VALUES (2, 'Bella', 80);

SELECT * FROM students;

UPDATE students SET grade = 95 WHERE sid = 1;

DELETE FROM students WHERE sid = 2;

COMMIT;
```

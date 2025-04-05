lesson-6 homework: practice

Notes before doing the tasks: Tasks should be solved using SQL Server. It does not matter the solutions are uppercase or lowercase, which means case insensitive. Using alies names does not matter in scoring your work. It does not matter whether we close queries with ; or not

  ## Puzzle 1: Finding Distinct Values
Question: Explain at least two ways to find distinct values based on two columns.

Input table (`InputTbl`):

| col1 | col2 |
|------|------|
| a    | b    |
| a    | b    |
| b    | a    |
| c    | d    |
| c    | d    |
| m    | n    |
| n    | m    |

Result should be like this:

| col1 | col2 |
|------|------|
| a    | b    |
| c    | d    |
| m    | n    |

CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');


---

## Puzzle 2: Removing Rows with All Zeroes
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.

### Table Schema:
CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

### Sample Data:
INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

---

## Puzzle 3: Find those with odd ids

create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')

## Puzzle 4: Person with the smallest id (use the table in puzzle 3)

---

## Puzzle 5: Person with the highest id (use the table in puzzle 3)

---

## Puzzle 6: People whose name starts with b (use the table in puzzle 3)

---

## Puzle 7: Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).

CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

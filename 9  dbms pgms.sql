use dbmslab
create table employees(
employeeID INT PRIMARY
KEY, employeename
VARCHAR(50), managerID
INT,
FOREIGN KEY (managerID) REFERENCES employees(employeeID)
);
INSERT INTO employees (employeeID, employeename, managerID)
VALUES(1, 'rahul(manager)', NULL),
(2, 'priya', 1),
(3, 'karan', 1),
(4, 'sneha', 2),
(5, 'vijay', 2),
(6, 'arun', 3);
WITH RECURSIVE subordinates AS (
SELECT employeeID, employeename,
managerID FROM employees
WHERE managerID = 1
UNION ALL
SELECT e.employeeID, e.employeename,
e.managerID FROM employees e
INNER JOIN subordinates s
ON e.managerID = s.employeeID
)
SELECT * FROM subordinates;
employeeID int primary key,
employeename varchar(50),
 managerID int,
foreignkey(managerID)references employees(employeeID)
);
insert into employees(employeeID,employeename,managerID) values
(1,'rahul(manager)',null),
(2,'priya',1),
(3,'karan',1),
(4,'sneha',2),
(5,'vijay',2),
(6,'arun',3);
with recursive suborinates as(
select
employeeID,employeename,managerI
D from employees
where
managerID=1
union all
select
e.employeeID,e.employeename,e.managerI
D from employees e
inner join sunordinates son e.managerID=s.employeeID)
select * from subordinates;


# Write your MySQL query statement below
WITH RANKING AS (
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
        DENSE_RANK() OVER (
            PARTITION BY d.id
            ORDER BY e.salary DESC
        ) AS salary_rank
    FROM employee e
    LEFT JOIN department d ON e.departmentid = d.id
)

SELECT Department, Employee, Salary
FROM RANKING
WHERE salary_rank <= 3
ORDER BY Department, Salary DESC;
# Write your MySQL query statement below
DELETE p2
FROM person p1
JOIN person p2 on p2.email = p1.email
WHERE p1.id < p2.id
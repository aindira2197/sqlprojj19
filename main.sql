CREATE TABLE s9 (id INT, name VARCHAR(50));
CREATE TABLE c9 (id INT, student_id INT);

INSERT INTO s9 VALUES (1,'Ali'),(2,'Vali');
INSERT INTO c9 VALUES (1,1),(2,1),(3,2);

SELECT s.name, COUNT(c.id)
FROM s9 s
JOIN c9 c ON s.id = c.student_id
GROUP BY s.name
HAVING COUNT(c.id) > 1;

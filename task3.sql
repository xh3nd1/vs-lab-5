CREATE TABLE cathedrals (
	id SERIAL PRIMARY KEY,
	name VARCHAR(1024) NOT NULL,
	chief VARCHAR(512) NOT NULL
);

ALTER TABLE groups
ADD COLUMN cathedral_id INTEGER;

INSERT INTO cathedrals (name, chief)
VALUES
	('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
    ('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

SELECT * FROM cathedrals;

UPDATE groups 
SET cathedral_id = 1 
WHERE id IN (1, 2, 3);

UPDATE groups 
SET cathedral_id = 2 
WHERE id = 4;

SELECT *
FROM groups
WHERE cathedral_id = 1;
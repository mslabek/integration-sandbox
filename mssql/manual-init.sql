CREATE TABLE ExampleData
(
    id         INT PRIMARY KEY,
    name       VARCHAR(100),
    is_active  BIT,
    created_at DATETIME,
    score      FLOAT
);

INSERT INTO ExampleData (id, name, is_active, created_at, score)
VALUES (1, 'Alice', 1, '2023-01-15 10:30:00', 95.5),
       (2, 'Bob', 0, '2023-02-10 14:00:00', 82.3),
       (3, 'Charlie', 1, '2023-03-05 09:45:00', 67.8),
       (4, 'Diana', 1, '2023-04-22 16:10:00', 74.2),
       (5, 'Eve', 0, '2023-05-30 12:25:00', 88.9);

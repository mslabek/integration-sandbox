CREATE DATABASE example_db;
USE example_db;

GRANT ALL PRIVILEGES ON example_db.* TO 'admin'@'%';
FLUSH PRIVILEGES;

CREATE TABLE all_types_example
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    tiny          TINYINT,
    small         SMALLINT,
    medium        MEDIUMINT,
    normal_int    INT,
    big           BIGINT,
    dec_val       DECIMAL(10, 2),
    float_val     FLOAT,
    double_val    DOUBLE,
    bit_val       BIT(8),

    date_val      DATE,
    time_val      TIME,
    datetime_val  DATETIME,
    timestamp_val TIMESTAMP,
    year_val      YEAR,

    char_val      CHAR(10),
    varchar_val   VARCHAR(100),
    text_val      TEXT,
    blob_val      BLOB,

    enum_val      ENUM ('low', 'medium', 'high'),
    set_val       SET ('a', 'b', 'c', 'd')
);

INSERT INTO all_types_example (tiny, small, medium, normal_int, big, dec_val, float_val, double_val, bit_val,
                               date_val, time_val, datetime_val, timestamp_val, year_val,
                               char_val, varchar_val, text_val, blob_val, enum_val, set_val)
VALUES
-- id auto-increments
(1, 100, 1000, 10000, 1000000000, 123.45, 1.23, 123456.789, b'10101010',
 '2023-01-01', '12:00:00', '2023-01-01 12:00:00', NOW(), 2023,
 'charA', 'varchar value 1', 'sample text 1', 'blobdata1', 'medium', 'a,b'),

(2, 200, 2000, 20000, 2000000000, 234.56, 2.34, 234567.890, b'11110000',
 '2023-02-02', '13:30:00', '2023-02-02 13:30:00', NOW(), 2024,
 'charB', 'varchar value 2', 'sample text 2', 'blobdata2', 'high', 'b,c'),

(3, 30, 3000, 30000, 3000000000, 345.67, 3.45, 345678.901, b'00001111',
 '2023-03-03', '14:45:00', '2023-03-03 14:45:00', NOW(), 2021,
 'charC', 'varchar value 3', 'sample text 3', 'blobdata3', 'low', 'c,d'),

(4, 40, 4000, 40000, 4000000000, 456.78, 4.56, 456789.012, b'00110011',
 '2023-04-04', '15:15:00', '2023-04-04 15:15:00', NOW(), 2020,
 'charD', 'varchar value 4', 'sample text 4', 'blobdata4', 'medium', 'a,d'),

(5, 50, 5000, 50000, 5000000000, 567.89, 5.67, 567890.123, b'11001100',
 '2023-05-05', '16:45:00', '2023-05-05 16:45:00', NOW(), 2019,
 'charE', 'varchar value 5', 'sample text 5', 'blobdata5', 'high', 'a,b,c'),

(6, 60, 6000, 60000, 6000000000, 678.90, 6.78, 678901.234, b'11111111',
 '2023-06-06', '17:30:00', '2023-06-06 17:30:00', NOW(), 2018,
 'charF', 'varchar value 6', 'sample text 6', 'blobdata6', 'low', 'b,d'),

(7, 70, 7000, 70000, 7000000000, 789.01, 7.89, 789012.345, b'00000000',
 '2023-07-07', '18:00:00', '2023-07-07 18:00:00', NOW(), 2017,
 'charG', 'varchar value 7', 'sample text 7', 'blobdata7', 'medium', 'a'),

(8, 80, 8000, 80000, 8000000000, 890.12, 8.90, 890123.456, b'10000001',
 '2023-08-08', '19:15:00', '2023-08-08 19:15:00', NOW(), 2016,
 'charH', 'varchar value 8', 'sample text 8', 'blobdata8', 'high', 'b'),

(9, 90, 9000, 90000, 9000000000, 901.23, 9.01, 901234.567, b'01111110',
 '2023-09-09', '20:30:00', '2023-09-09 20:30:00', NOW(), 2015,
 'charI', 'varchar value 9', 'sample text 9', 'blobdata9', 'low', 'c'),

(10, 100, 10000, 100000, 10000000000, 12.34, 0.12, 123.456, b'01010101',
 '2023-10-10', '21:45:00', '2023-10-10 21:45:00', NOW(), 2014,
 'charJ', 'varchar value 10', 'sample text 10', 'blobdata10', 'medium', 'd');

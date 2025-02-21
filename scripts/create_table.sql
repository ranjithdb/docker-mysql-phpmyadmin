CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE IF NOT EXISTS myothertable (
  column_name VARCHAR(255)
);

INSERT INTO myothertable (column_name) VALUES ('other_value');


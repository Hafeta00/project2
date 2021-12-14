-- Remove any existing database and user.
DROP DATABASE IF EXISTS project;
DROP USER IF EXISTS projectuser@localhost;

-- Create Unforget database and user. Ensure Unicode is fully supported.
CREATE DATABASE project CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE USER projectuser@localhost IDENTIFIED WITH mysql_native_password BY 'Newpatek2000!!';
GRANT ALL PRIVILEGES ON project.* TO projectuser@localhost;


-- Creating table for players in the league.

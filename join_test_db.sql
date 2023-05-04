USE join_test_db;

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('mike', 'mike@example.com', null),
('alice', 'alice@example.com', 2),
('john', 'john@example.com', 2),
('mary', 'mary@example.com', 2);

SELECT users.name AS 'user name', roles.name AS 'role' FROM users JOIN roles ON users.role_id = roles.id;
SELECT users.name AS 'user name', roles.name AS 'role' FROM users LEFT JOIN roles ON users.role_id = roles.id;
SELECT users.name AS 'user name', roles.name AS 'role' FROM users RIGHT JOIN roles ON users.role_id = roles.id;
SELECT roles.name AS 'role', COUNT(users.id) AS 'role number' FROM roles LEFT JOIN users ON roles.id = users.role_id GROUP BY roles.name;

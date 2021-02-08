DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS user_roles;
CREATE TABLE users(
                      user_id INT AUTO_INCREMENT PRIMARY KEY  ,
                      name VARCHAR(255)  ,
                      login VARCHAR(255)  ,
                      password VARCHAR(255) ,
                      discount INT
);

-- Table: roles
CREATE TABLE roles(
                      role_id INT  AUTO_INCREMENT PRIMARY KEY ,
                      name VARCHAR(100)
);

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles(
                           user_id INT  ,
                           role_id INT  ,
                           FOREIGN KEY (user_id) REFERENCES users(user_id),
                           FOREIGN KEY (role_id) REFERENCES roles(role_id),

                           UNIQUE (user_id, role_id)

);

-- Insert data
INSERT INTO users VALUES (1, 'Sasha', 'ADMIN', '$2a$10$EDUdQcpeTYTblZrqlJN/luC32P.V2555ZbjZmUL4ifm6VE6cJ3tg2', 25);
INSERT INTO users VALUES (2, 'Sasha', 'USER', '$2a$10$RGYX5OVXbRHjuA.BxbR0Ue/d60Xa.kwz8nqpFyd4PExJSUXhucoiS', 5);
INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_MANAGER');
INSERT INTO roles VALUES (3, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 3);
INSERT INTO user_roles VALUES (2, 1);
-- Table: users
CREATE TABLE users(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE ,
    name VARCHAR(255) NOT NULL ,
    login VARCHAR(255) NOT NULL UNIQUE ,
    password VARCHAR(255) NOT NULL
)
ENGINE = InnoDB;

-- Table: roles
CREATE TABLE roles(
                      role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
                      name VARCHAR(100) NOT NULL
)
    ENGINE = InnoDB;

-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles(
    user_id INT NOT NULL ,
    role_id INT NOT NULL ,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id),

    UNIQUE (user_id, role_id)

)
    ENGINE = InnoDB;

-- Insert data
INSERT INTO users VALUES (1, 'Sasha', 'ADMIN', 'ADMIN');
INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_MANAGER');
INSERT INTO roles VALUES (3, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 3);




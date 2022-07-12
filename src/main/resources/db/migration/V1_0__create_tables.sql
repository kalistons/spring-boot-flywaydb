CREATE TABLE IF NOT EXISTS tb_user (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(40),
    email varchar(50)
);
CREATE TABLE IF NOT EXISTS tb_login (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    login varchar(40),
    pass varchar(50),
    id_user int NOT NULL
);
ALTER TABLE tb_login
ADD CONSTRAINT user_id_fk
FOREIGN KEY (id_user) REFERENCES tb_user;
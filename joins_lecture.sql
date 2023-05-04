    USE codeup_test_db;
     CREATE TABLE users (
        id INT NOT NULL AUTO_INCREMENT,
        username VARCHAR(35) NOT NULL UNIQUE ,
        email VARCHAR(65) NOT NULL UNIQUE ,
        password VARCHAR(255) NOT NULL ,
        album_id INT UNSIGNED,
        PRIMARY KEY (id),
        CONSTRAINT users_albums_id_fk FOREIGN KEY(album_id) REFERENCES albums(id)
    );
INSERT INTO users(username, email, password, album_id)
VALUES ()
USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE `albums` (
                          `id` int unsigned NOT NULL AUTO_INCREMENT,
                          `artist` varchar(50) NOT NULL,
                          `name` varchar(100) NOT NULL,
                          `release_date` int NOT NULL,
                          `sales` decimal(15,2) NOT NULL,
                          `genre` varchar(50) NOT NULL,
                          PRIMARY KEY (`id`)
);

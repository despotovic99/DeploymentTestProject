DROP SCHEMA IF EXISTS test_schema_druga;
CREATE SCHEMA test_schema_druga;

DROP TABLE IF EXISTS test_schema_druga.migrations;
DROP TABLE IF EXISTS test_schema_druga.test_tabela;
DROP TABLE IF EXISTS test_schema_druga.test_tabela1;
DROP TABLE IF EXISTS test_schema_druga.sistemska;
DROP TABLE IF EXISTS test_schema_druga.sistemska_druga;

create table test_schema_druga.migrations
(
    id             int auto_increment,
    migration_name varchar(255)                        not null,
    executed_at    timestamp default current_timestamp not null,
    constraint migrations_pk
        primary key (id)
);




CREATE TABLE test_schema_druga.test_tabela (
                                         id INT AUTO_INCREMENT PRIMARY KEY,
                                         testname VARCHAR(255) NULL,
                                         testvalue INT NOT NULL DEFAULT 1
);

CREATE TABLE test_schema_druga.test_tabela1 (
                                          id INT AUTO_INCREMENT PRIMARY KEY,
                                          testname VARCHAR(255) NULL,
                                          testvalue INT NOT NULL DEFAULT 1
);

CREATE TABLE test_schema_druga.sistemska (
                                       id INT AUTO_INCREMENT PRIMARY KEY,
                                       testname VARCHAR(255) NULL,
                                       testvalue INT NOT NULL DEFAULT 1
);

INSERT INTO test_schema_druga.sistemska (testname, testvalue) VALUES ('test_sistemska', 1);
INSERT INTO test_schema_druga.sistemska (testname, testvalue) VALUES ('test_sistemska', 2);

CREATE TABLE test_schema_druga.sistemska_druga (
                                             id INT AUTO_INCREMENT PRIMARY KEY,
                                             testname VARCHAR(255) NULL,
                                             testvalue INT NOT NULL DEFAULT 1,
                                             sistemska INT,
                                             CONSTRAINT fk_sistemska_druga_sistemska FOREIGN KEY (sistemska) REFERENCES test_schema_druga.sistemska(id),
                                             CONSTRAINT uc_testname UNIQUE (testname)
);

-- Create an index on the testvalue column
CREATE INDEX idx_testvalue ON test_schema_druga.sistemska_druga (testvalue);

INSERT INTO test_schema_druga.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_sistemska_druga', 12, 1);
INSERT INTO test_schema_druga.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost13', 13, 1);
INSERT INTO test_schema_druga.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost14', 14, 2);
INSERT INTO test_schema_druga.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost15', 15, 1);

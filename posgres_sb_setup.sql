DROP SCHEMA IF EXISTS test_schema CASCADE ;
CREATE SCHEMA test_schema;

DROP TABLE IF EXISTS test_schema.migrations;
DROP TABLE IF EXISTS test_schema.test_tabela;
DROP TABLE IF EXISTS test_schema.test_tabela1;
DROP TABLE IF EXISTS test_schema.sistemska;
DROP TABLE IF EXISTS test_schema.sistemska_druga;

create table if not exists test_schema.migrations
(
    id        integer           not null
        constraint migrations_pk
            primary key,
    migration_name varchar(255)                        not null,
    executed_at    timestamp default current_timestamp not null
);

CREATE TABLE test_schema.test_tabela (
                                         id SERIAL PRIMARY KEY,
                                         testname VARCHAR(255) NULL,
                                         testvalue INT NOT NULL DEFAULT 1
);

CREATE TABLE test_schema.test_tabela1 (
                                          id SERIAL PRIMARY KEY,
                                          testname VARCHAR(255) NULL,
                                          testvalue INT NOT NULL DEFAULT 1
);

CREATE TABLE test_schema.sistemska (
                                       id SERIAL PRIMARY KEY,
                                       testname VARCHAR(255) NULL,
                                       testvalue INT NOT NULL DEFAULT 1
);

INSERT INTO test_schema.sistemska (testname, testvalue) VALUES ('test_sistemska', 1);
INSERT INTO test_schema.sistemska (testname, testvalue) VALUES ('test_sistemska', 2);

CREATE TABLE test_schema.sistemska_druga (
                                             id SERIAL PRIMARY KEY,
                                             testname VARCHAR(255) NULL,
                                             testvalue INT NOT NULL DEFAULT 1,
                                             sistemska INT REFERENCES test_schema.sistemska(id),
                                             CONSTRAINT uc_testname UNIQUE (testname)
);

-- Create an index on the testvalue column
CREATE INDEX idx_testvalue ON test_schema.sistemska_druga (testvalue);

INSERT INTO test_schema.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_sistemska_druga', 12, 1);
INSERT INTO test_schema.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost13', 13, 1);
INSERT INTO test_schema.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost14', 14, 2);
INSERT INTO test_schema.sistemska_druga (testname, testvalue,sistemska) VALUES ('test_vrednost15', 15, 1);

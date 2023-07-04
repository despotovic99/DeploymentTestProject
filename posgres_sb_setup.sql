DROP SCHEMA IF EXISTS test_schema;
CREATE SCHEMA test_schema;

DROP TABLE IF EXISTS test_schema.test_tabela;
DROP TABLE IF EXISTS test_schema.test_tabela1;
DROP TABLE IF EXISTS test_schema.sistemska;

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

INSERT INTO test_schema.sistemska (testname, testvalue) VALUES ('test_sistemska', 12);

CREATE TABLE test_schema.sistemska_druga (
                                             id SERIAL PRIMARY KEY,
                                             testname VARCHAR(255) NULL,
                                             testvalue INT NOT NULL DEFAULT 1
);

INSERT INTO test_schema.sistemska_druga (testname, testvalue) VALUES ('test_sistemska_druga', 12);
INSERT INTO test_schema.sistemska_druga (testname, testvalue) VALUES ('test_vrednost13', 13);
INSERT INTO test_schema.sistemska_druga (testname, testvalue) VALUES ('test_vrednost14', 14);
INSERT INTO test_schema.sistemska_druga (testname, testvalue) VALUES ('test_vrednost15', 15);

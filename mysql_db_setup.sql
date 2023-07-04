drop schema if exists test_schema;
create schema test_schema;

drop table if exists test_schema.test_tabela;
drop table if exists test_schema.test_tabela1;
drop table if exists test_schema.sistemska;

create table test_schema.test_tabela
(
    id        int auto_increment
        primary key,
    testname  varchar(255)  null,
    testvalue int default 1 not null
);

create table test_schema.test_tabela1
(
    id        int auto_increment
        primary key,
    testname  varchar(255)  null,
    testvalue int default 1 not null
);


create table test_schema.sistemska
(
    id        int auto_increment
        primary key,
    testname  varchar(255)  null,
    testvalue int default 1 not null
);

INSERT INTO test_schema.sistemska (testname,testvalue) VALUES ('test_sistemska', 12);

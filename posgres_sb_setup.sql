/*drop database if exists test_db;
create database test_db;*/

SET session_replication_role = 'replica';
drop schema if exists test_schema cascade;
SET session_replication_role = 'origin';

create schema if not exists test_schema;

drop table if exists test_schema.test_tabela;
create table test_schema.test_tabela
(
    id       serial     primary key,
    testname  varchar(255)      not null,
    testvalue integer default 1 not null
);

drop table if exists test_schema.test_tabela1;
create table test_schema.test_tabela1
(
    id       serial     primary key,
    testname  varchar(255)      not null,
    testvalue integer default 1 not null
);

drop table if exists test_schema.sistemska;
create table  test_schema.sistemska
(
    id    serial primary key,
    testname  varchar(255)      not null,
    testvalue integer default 1 not null
);
insert into test_schema.sistemska (testname,testvalue) values ('test_sistemska',13)
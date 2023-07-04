create table if not exists test_schema.migrations
(
    id        integer           not null
    constraint migrations_pk
    primary key,
    migration_name varchar(255)                        not null,
    executed_at    timestamp default current_timestamp not null
    );
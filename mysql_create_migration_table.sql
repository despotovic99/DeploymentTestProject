create table migrations
(
    id             int auto_increment,
    migration_name varchar(255)                        not null,
    executed_at    timestamp default current_timestamp not null,
    constraint migrations_pk
        primary key (id)
);



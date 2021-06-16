create database if not exists carbonuser;
use carbonuser;
drop table if exists `user`;
create table `user`
(
    id          bigint primary key auto_increment comment 'primary key',
    username     varchar(20)  not null comment '用户名/账号',
    password    varchar(100) not null comment '密码',
    create_time Datetime comment '创建时间' default current_timestamp,
    modify_time Datetime comment '修改时间' default current_timestamp on update current_timestamp,
    unique key `idx_user_account` (`username`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

drop table if exists `user_info`;
create table `user_info`
(
    id           bigint primary key auto_increment comment 'primary key',
    name         varchar(20) comment '用户昵称',
    real_name    varchar(20) comment '用户姓名',
    sex          enum ('男','女') comment '型别',
    birthday     date           comment '生日',
    phone_number varchar(15) comment '手机号',
    mail         varchar(30) comment '邮箱',
    create_time  datetime comment '创建时间' default current_timestamp,
    modify_time  datetime comment '修改时间' default current_timestamp on update current_timestamp,
    user_id      bigint comment 'foreign key references user.id',
    constraint `fk_user_info_user_id` foreign key (user_id) references user (id) on delete cascade
) ENGINE = innodb
  DEFAULT CHARSET = utf8mb4;

drop table if exists `user_role`;
create table `user_role`
(
    id          bigint primary key auto_increment comment 'primary key',
    role_name   varchar(20) not null comment 'role_name',
    create_time Datetime comment '创建时间' default current_timestamp,
    modify_time Datetime comment '修改时间' default current_timestamp on update current_timestamp
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

insert into user_role (role_name)
values ('ADMIN'),('USER');

drop table if exists `role_auth`;
create table `role_auth`
(
    id                  bigint primary key auto_increment comment 'primary key',
    auth_name           varchar(20) not null comment 'auth_name',
    auth_permission     varchar(100) not null comment 'auth_permission',
    create_time         Datetime comment '创建时间' default current_timestamp,
    modify_time         Datetime comment '修改时间' default current_timestamp on update current_timestamp
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

drop table if exists `user_role_link`;
create table `user_role_link`
(
    id                  bigint primary key auto_increment comment 'primary key',
    user_id             bigint  not null comment 'user_id',
    role_id             bigint  not null comment 'role_id',
    create_time         Datetime comment '创建时间' default current_timestamp,
    modify_time         Datetime comment '修改时间' default current_timestamp on update current_timestamp,
    constraint `fk_user_role_link_user_id` foreign key (user_id) references user (id) on delete cascade,
    constraint `fk_user_role_link_role_id` foreign key (role_id) references user_role (id) on delete cascade
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

drop table if exists `role_auth_link`;
create table `role_auth_link`
(
    id                  bigint primary key auto_increment comment 'primary key',
    role_id             bigint  not null comment 'role_id',
    auth_id             bigint  not null comment 'auth_id',
    create_time         Datetime comment '创建时间' default current_timestamp,
    modify_time         Datetime comment '修改时间' default current_timestamp on update current_timestamp,
    constraint `fk_role_auth_link_role_id` foreign key (role_id) references user_role (id) on delete cascade,
    constraint `fk_role_auth_link_auth_id` foreign key (auth_id) references role_auth (id) on delete cascade
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;


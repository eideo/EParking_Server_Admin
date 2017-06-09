/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/4/26 14:31:29                           */
/*==============================================================*/


drop table if exists ep_ap;

drop table if exists ep_berth;

drop table if exists ep_floor;

drop table if exists ep_parking;

drop table if exists ep_sensor;

drop table if exists ep_sensor_info;

/*==============================================================*/
/* Table: ep_ap                                                 */
/*==============================================================*/
create table ep_ap
(
   id                   bigint not null comment '编号ID',
   floor_id             bigint comment '所属场地',
   state                int comment '状态',
   apcode               varchar(20) not null comment '中继主机编码',
   operate_time         bigint comment '操作时间',
   type                 int comment '传感器类型',
   voltage              float comment '电压',
   beart_time           bigint comment '心跳时间',
   sensor_info          bigint comment '传感器信息ID'
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_berth                                              */
/*==============================================================*/
create table ep_berth
(
   id                   bigint unsigned not null auto_increment comment '编号',
   cid                  varchar(20) comment '车位编号',
   state                int comment '车位状态（0空闲1占用2出错）',
   qid                  bigint comment '二维码表主键',
   berthsec_id          bigint comment '泊位段编号',
   address              varchar(50) comment '地址',
   longitude            double comment '经度',
   latitude             double comment '纬度',
   oper_time            bigint comment '记录时间',
   order_id             bigint comment '订单编号',
   sensor_id            bigint comment '传感器编号',
   enter_time           bigint,
   out_time             bigint,
   floor_id             bigint,
   parking_id           bigint,
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_floor                                              */
/*==============================================================*/
create table ep_floor
(
   id                   bigint unsigned not null auto_increment comment '编号',
   name                 varchar(20) not null comment '名称',
   name_second          varchar(20) comment '名称二级',
   parking_id           varchar(20) comment '停车场ID',
   grade                int comment '层',
   address              varchar(50) comment '地址',
   longitude            double comment '经度',
   latitude             double comment '纬度',
   create_time          bigint comment '创建时间',
   plan                 varchar(50) comment '平面图',
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_parking                                            */
/*==============================================================*/
create table ep_parking
(
   id                   bigint unsigned not null auto_increment comment '编号',
   name                 varchar(20) comment '名称',
   name_second          varchar(20) comment '名称二级',
   city                 varchar(20) comment '所属城市',
   city_code            int comment '城市编码',
   address              varchar(50) comment '地址',
   longitude            double comment '经度',
   latitude             double comment '纬度',
   create_time          bigint comment '创建时间',
   groupid              bigint comment '运营者ID',
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_sensor                                             */
/*==============================================================*/
create table ep_sensor
(
   id                   bigint not null comment '编号ID',
   code                 varchar(20) not null comment '编码',
   parkingid            bigint not null comment '所属车场',
   state                int comment '状态',
   sensorid             bigint comment '传感器ID',
   apid                 bigint comment '中继主机ID',
   operate_time         bigint comment '操作时间',
   type                 int comment '传感器类型',
   battery              float comment '电池电压',
   beart_time           bigint comment '心跳时间',
   sensor_info          bigint comment '传感器信息ID',
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_sensor_info                                        */
/*==============================================================*/
create table ep_sensor_info
(
   id                   int not null comment '编号ID',
   code                 varchar(20) comment '编码',
   type                 int comment '类型',
   state                int comment '状态',
   sensorid             bigint comment '传感器ID',
   battery              float comment '电池电压',
   x0                   int comment 'X初始',
   y0                   int comment 'Y初始',
   z0                   int comment 'Z初始',
   x1                   int comment 'X当前',
   y1                   int comment 'Y当前',
   z1                   int comment 'Z当前',
   magnetism            float comment '电容电压',
   distance             int comment '距离',
   error                int comment '出错',
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;


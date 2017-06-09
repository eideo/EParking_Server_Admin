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
   id                   bigint not null comment '���ID',
   floor_id             bigint comment '��������',
   state                int comment '״̬',
   apcode               varchar(20) not null comment '�м���������',
   operate_time         bigint comment '����ʱ��',
   type                 int comment '����������',
   voltage              float comment '��ѹ',
   beart_time           bigint comment '����ʱ��',
   sensor_info          bigint comment '��������ϢID'
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;

/*==============================================================*/
/* Table: ep_berth                                              */
/*==============================================================*/
create table ep_berth
(
   id                   bigint unsigned not null auto_increment comment '���',
   cid                  varchar(20) comment '��λ���',
   state                int comment '��λ״̬��0����1ռ��2����',
   qid                  bigint comment '��ά�������',
   berthsec_id          bigint comment '��λ�α��',
   address              varchar(50) comment '��ַ',
   longitude            double comment '����',
   latitude             double comment 'γ��',
   oper_time            bigint comment '��¼ʱ��',
   order_id             bigint comment '�������',
   sensor_id            bigint comment '���������',
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
   id                   bigint unsigned not null auto_increment comment '���',
   name                 varchar(20) not null comment '����',
   name_second          varchar(20) comment '���ƶ���',
   parking_id           varchar(20) comment 'ͣ����ID',
   grade                int comment '��',
   address              varchar(50) comment '��ַ',
   longitude            double comment '����',
   latitude             double comment 'γ��',
   create_time          bigint comment '����ʱ��',
   plan                 varchar(50) comment 'ƽ��ͼ',
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
   id                   bigint unsigned not null auto_increment comment '���',
   name                 varchar(20) comment '����',
   name_second          varchar(20) comment '���ƶ���',
   city                 varchar(20) comment '��������',
   city_code            int comment '���б���',
   address              varchar(50) comment '��ַ',
   longitude            double comment '����',
   latitude             double comment 'γ��',
   create_time          bigint comment '����ʱ��',
   groupid              bigint comment '��Ӫ��ID',
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
   id                   bigint not null comment '���ID',
   code                 varchar(20) not null comment '����',
   parkingid            bigint not null comment '��������',
   state                int comment '״̬',
   sensorid             bigint comment '������ID',
   apid                 bigint comment '�м�����ID',
   operate_time         bigint comment '����ʱ��',
   type                 int comment '����������',
   battery              float comment '��ص�ѹ',
   beart_time           bigint comment '����ʱ��',
   sensor_info          bigint comment '��������ϢID',
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
   id                   int not null comment '���ID',
   code                 varchar(20) comment '����',
   type                 int comment '����',
   state                int comment '״̬',
   sensorid             bigint comment '������ID',
   battery              float comment '��ص�ѹ',
   x0                   int comment 'X��ʼ',
   y0                   int comment 'Y��ʼ',
   z0                   int comment 'Z��ʼ',
   x1                   int comment 'X��ǰ',
   y1                   int comment 'Y��ǰ',
   z1                   int comment 'Z��ǰ',
   magnetism            float comment '���ݵ�ѹ',
   distance             int comment '����',
   error                int comment '����',
   primary key (id)
)
ENGINE = InnoDB
auto_increment = 1
charset = UTF8;


create database db_student_growth;
use db_student_growth;
/*==============================================================*/
/* Table: T_academy                                             */
/*==============================================================*/
create table T_academy
(
   a_id                 int not null auto_increment,
   a_code               int not null,
   a_name               varchar(30) not null,
   a_describe           varchar(100),
   primary key (a_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_academy
(
   a_code
);

/*==============================================================*/
/* Table: T_class                                               */
/*==============================================================*/
create table T_class
(
   c_id                 int not null auto_increment,
   c_code               int not null,
   c_name               varbinary(30) not null,
   c_describe           varchar(100),
   primary key (c_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_class
(
   c_code
);

/*==============================================================*/
/* Table: T_department                                          */
/*==============================================================*/
create table T_department
(
   d_id                 int not null auto_increment,
   d_code               int not null,
   d_name               varchar(30) not null,
   d_describe           varchar(100),
   primary key (d_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_department
(
   d_code
);

/*==============================================================*/
/* Table: T_grade                                               */
/*==============================================================*/
create table T_grade
(
   g_id                 int not null auto_increment,
   g_code               int not null,
   g_name               varchar(30) not null,
   g_describe           varchar(100),
   primary key (g_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_grade
(
   g_code
);

/*==============================================================*/
/* Table: T_leave                                               */
/*==============================================================*/
create table T_leave
(
   l_id                 int not null,
   fk_u_id              int not null,
   fk_lt_id             int not null,
   l_reason             varchar(100) not null,
   l_begin_date         datetime not null,
   l_end_date           datetime not null,
   l_instructor_suggestion varchar(100),
   l_leader_suggestion  varchar(100),
   l_extend_date        datetime,
   l_report_date        datetime,
   l_fk_agent_uid       int,
   l_agent_date         datetime,
   l_remark             varchar(300),
   primary key (l_id)
);

alter table T_leave comment 'Ñ§ÉúÇëŒÙÌõ¡£';

/*==============================================================*/
/* Table: T_leave_type                                          */
/*==============================================================*/
create table T_leave_type
(
   lt_id                int not null auto_increment,
   lt_code              int not null,
   lt_name              varchar(20) not null,
   lt_describe          varchar(100),
   primary key (lt_id)
);

alter table T_leave_type comment 'ÇëŒÙÌõÀàÐÍ¡££šÊÂŒÙ¡¢²¡ŒÙ¡¢¹«ŒÙ¡¢ÆäËû£©';

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_leave_type
(
   lt_code
);

/*==============================================================*/
/* Table: T_major                                               */
/*==============================================================*/
create table T_major
(
   m_id                 int not null auto_increment,
   m_code               int not null,
   m_name               varchar(30) not null,
   m_describe           varchar(100),
   primary key (m_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_major
(
   m_code
);

/*==============================================================*/
/* Table: T_position                                            */
/*==============================================================*/
create table T_position
(
   p_id                 int not null auto_increment,
   p_code               int not null,
   p_name               varchar(30) not null,
   p_describe           varchar(100),
   primary key (p_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_position
(
   p_code
);

/*==============================================================*/
/* Table: T_role                                                */
/*==============================================================*/
create table T_role
(
   r_id                 int not null auto_increment,
   r_code               int,
   r_name               varchar(20) not null,
   r_describe           varchar(100),
   primary key (r_id)
);

alter table T_role comment '±£ŽæÓÃ»§µÄœÇÉ«ÀàÐÍŒ°ÆäÃèÊö¡££šœÇÉ«ÓÐ£ºÆÕÍšÑ§Éú¡¢Ñ§ÉúžÉ²¿¡¢žšµŒÔ±¡¢ÆÕÍšœÌÖ°¹€¡¢Ñ§ÔºÁìµŒ¡¢ÏµÍ³¹ÜÀíÔ±µÈ£©';

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_role
(
   r_code
);

/*==============================================================*/
/* Table: T_staff                                               */
/*==============================================================*/
create table T_staff
(
   s_id                 int not null auto_increment,
   s_account            varchar(12) not null,
   s_password           varchar(30) not null,
   fk_r_id              int not null,
   primary key (s_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_staff
(
   s_account
);

/*==============================================================*/
/* Table: T_staff_info                                          */
/*==============================================================*/
create table T_staff_info
(
   si_id                int not null auto_increment,
   fk_s_id              int not null,
   fk_a_id              int not null,
   fk_m_id              int not null,
   fk_g_id              int not null,
   fk_c_id              int not null,
   fk_d_id              int not null,
   fk_p_id              int not null,
   si_name              varchar(15) not null,
   si_name_used         varchar(15),
   si_photo             varchar(100),
   si_phone1            varchar(20),
   si_phone2            varchar(20),
   si_telephone         varchar(20),
   si_postcode          varchar(20),
   si_sex               varchar(2),
   si_nationality       varchar(20),
   si_native            varchar(30),
   si_birth_place       varchar(100),
   si_address           varchar(100),
   si_idcard            varchar(20),
   si_politics_status   varchar(20),
   si_email             varchar(30),
   si_qq                varchar(15),
   primary key (si_id)
);

/*==============================================================*/
/* Table: T_student                                             */
/*==============================================================*/
create table T_student
(
   s_id                 int not null auto_increment,
   s_account            varchar(12) not null,
   s_password           varchar(30) not null,
   fk_r_id              int not null,
   primary key (s_id)
);

/*==============================================================*/
/* Index: Index_1                                               */
/*==============================================================*/
create unique index Index_1 on T_student
(
   s_account
);

/*==============================================================*/
/* Table: T_student_info                                        */
/*==============================================================*/
create table T_student_info
(
   si_id                int not null,
   fk_u_id              int not null,
   fk_a_id              int not null,
   fk_m_id              int not null,
   fk_g_id              int not null,
   fk_c_id              int not null,
   fk_d_id              int not null,
   fk_p_id              int not null,
   si_name              varchar(15) not null,
   si_name_used         varchar(15),
   si_photo             varchar(100),
   si_phone             varchar(20),
   si_postcode          varchar(20),
   si_sex               varchar(2),
   si_nationality       varchar(30),
   si_native            varchar(100),
   si_birth_place       varchar(100),
   si_address           varchar(100),
   si_idcard            varchar(20),
   si_politics_status   varchar(20),
   si_league_time       date,
   si_qq                varchar(15),
   si_email             varchar(30),
   si_telephone         varchar(15),
   si_birthday          date,
   si_middle            varchar(50),
   si_entry_time        date,
   si_father_name       varchar(15),
   si_father_job        varchar(100),
   si_father_phone      varchar(15),
   si_mother_name       varchar(15),
   si_mother_job        varchar(100),
   si_mother_phone      varchar(15),
   primary key (si_id)
);

alter table T_student_info comment '±£ŽæÑ§ÉúµÄžöÈËÐÅÏ¢.';

alter table T_leave add constraint FK_Reference_2 foreign key (fk_u_id)
      references T_student (s_id) on delete restrict on update restrict;

alter table T_leave add constraint FK_Reference_4 foreign key (fk_lt_id)
      references T_leave_type (lt_id) on delete restrict on update restrict;

alter table T_staff add constraint FK_Reference_5 foreign key (fk_r_id)
      references T_role (r_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_11 foreign key (fk_a_id)
      references T_academy (a_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_12 foreign key (fk_m_id)
      references T_major (m_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_13 foreign key (fk_g_id)
      references T_grade (g_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_14 foreign key (fk_c_id)
      references T_class (c_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_15 foreign key (fk_d_id)
      references T_department (d_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_16 foreign key (fk_p_id)
      references T_position (p_id) on delete restrict on update restrict;

alter table T_staff_info add constraint FK_Reference_6 foreign key (fk_s_id)
      references T_staff (s_id) on delete restrict on update restrict;

alter table T_student add constraint FK_Reference_1 foreign key (fk_r_id)
      references T_role (r_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_10 foreign key (fk_a_id)
      references T_academy (a_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_17 foreign key (fk_d_id)
      references T_department (d_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_18 foreign key (fk_p_id)
      references T_position (p_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_3 foreign key (fk_u_id)
      references T_student (s_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_7 foreign key (fk_m_id)
      references T_major (m_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_8 foreign key (fk_g_id)
      references T_grade (g_id) on delete restrict on update restrict;

alter table T_student_info add constraint FK_Reference_9 foreign key (fk_c_id)
      references T_class (c_id) on delete restrict on update restrict;

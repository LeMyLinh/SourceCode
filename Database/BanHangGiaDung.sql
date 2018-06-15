/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     6/15/2018 10:36:53 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETHOADON') and o.name = 'FK_CHITIETH_CHITIETHO_HOADON')
alter table CHITIETHOADON
   drop constraint FK_CHITIETH_CHITIETHO_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETHOADON') and o.name = 'FK_CHITIETH_CHITIETHO_HANGHOA')
alter table CHITIETHOADON
   drop constraint FK_CHITIETH_CHITIETHO_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPHIEUNHAP') and o.name = 'FK_CHITIETP_CHITIETPH_HANGHOA')
alter table CHITIETPHIEUNHAP
   drop constraint FK_CHITIETP_CHITIETPH_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETPHIEUNHAP') and o.name = 'FK_CHITIETP_CHITIETPH_PHIEUNHA')
alter table CHITIETPHIEUNHAP
   drop constraint FK_CHITIETP_CHITIETPH_PHIEUNHA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DULIEUKHACHHANG') and o.name = 'FK_DULIEUKH_DULIEUKHA_KHACHHAN')
alter table DULIEUKHACHHANG
   drop constraint FK_DULIEUKH_DULIEUKHA_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DULIEUKHACHHANG') and o.name = 'FK_DULIEUKH_DULIEUKHA_HANGHOA')
alter table DULIEUKHACHHANG
   drop constraint FK_DULIEUKH_DULIEUKHA_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIOHANG') and o.name = 'FK_GIOHANG_GIOHANG_KHACHHAN')
alter table GIOHANG
   drop constraint FK_GIOHANG_GIOHANG_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIOHANG') and o.name = 'FK_GIOHANG_GIOHANG2_HANGHOA')
alter table GIOHANG
   drop constraint FK_GIOHANG_GIOHANG2_HANGHOA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HANGHOA') and o.name = 'FK_HANGHOA_THUOC_LOAIHANG')
alter table HANGHOA
   drop constraint FK_HANGHOA_THUOC_LOAIHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_GIAO__EN_KHUVUC')
alter table HOADON
   drop constraint FK_HOADON_GIAO__EN_KHUVUC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_LAP_NHANVIEN')
alter table HOADON
   drop constraint FK_HOADON_LAP_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOADON') and o.name = 'FK_HOADON_NHAN_KHACHHAN')
alter table HOADON
   drop constraint FK_HOADON_NHAN_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUCHITIEN') and o.name = 'FK_PHIEUCHI_GUI_NHACUNGC')
alter table PHIEUCHITIEN
   drop constraint FK_PHIEUCHI_GUI_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUCHITIEN') and o.name = 'FK_PHIEUCHI_LAP_RA_NHANVIEN')
alter table PHIEUCHITIEN
   drop constraint FK_PHIEUCHI_LAP_RA_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAP') and o.name = 'FK_PHIEUNHA_GIAO_CHO_NHACUNGC')
alter table PHIEUNHAP
   drop constraint FK_PHIEUNHA_GIAO_CHO_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUNHAP') and o.name = 'FK_PHIEUNHA_TAO_NHANVIEN')
alter table PHIEUNHAP
   drop constraint FK_PHIEUNHA_TAO_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUTHUTIEN') and o.name = 'FK_PHIEUTHU_CUA_KHACHHAN')
alter table PHIEUTHUTIEN
   drop constraint FK_PHIEUTHU_CUA_KHACHHAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUTHUTIEN') and o.name = 'FK_PHIEUTHU_LAP_PHIEU_NHANVIEN')
alter table PHIEUTHUTIEN
   drop constraint FK_PHIEUTHU_LAP_PHIEU_NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETHOADON')
            and   name  = 'CHITIETHOADON2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETHOADON.CHITIETHOADON2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETHOADON')
            and   name  = 'CHITIETHOADON_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETHOADON.CHITIETHOADON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETHOADON')
            and   type = 'U')
   drop table CHITIETHOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPHIEUNHAP')
            and   name  = 'CHITIETPHIEUNHAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPHIEUNHAP.CHITIETPHIEUNHAP2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETPHIEUNHAP')
            and   name  = 'CHITIETPHIEUNHAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETPHIEUNHAP.CHITIETPHIEUNHAP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETPHIEUNHAP')
            and   type = 'U')
   drop table CHITIETPHIEUNHAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DULIEUKHACHHANG')
            and   name  = 'DULIEUKHACHHANG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DULIEUKHACHHANG.DULIEUKHACHHANG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DULIEUKHACHHANG')
            and   name  = 'DULIEUKHACHHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index DULIEUKHACHHANG.DULIEUKHACHHANG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DULIEUKHACHHANG')
            and   type = 'U')
   drop table DULIEUKHACHHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIOHANG')
            and   name  = 'GIOHANG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIOHANG.GIOHANG2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIOHANG')
            and   name  = 'GIOHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIOHANG.GIOHANG_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIOHANG')
            and   type = 'U')
   drop table GIOHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HANGHOA')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index HANGHOA.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HANGHOA')
            and   type = 'U')
   drop table HANGHOA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'GIAO__EN_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.GIAO__EN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'LAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.LAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOADON')
            and   name  = 'NHAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOADON.NHAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADON')
            and   type = 'U')
   drop table HOADON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHACHHANG')
            and   type = 'U')
   drop table KHACHHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHUVUC')
            and   type = 'U')
   drop table KHUVUC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIHANGHOA')
            and   type = 'U')
   drop table LOAIHANGHOA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHACUNGCAP')
            and   type = 'U')
   drop table NHACUNGCAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUCHITIEN')
            and   name  = 'GUI_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUCHITIEN.GUI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUCHITIEN')
            and   name  = 'LAP_RA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUCHITIEN.LAP_RA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUCHITIEN')
            and   type = 'U')
   drop table PHIEUCHITIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAP')
            and   name  = 'GIAO_CHO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAP.GIAO_CHO_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUNHAP')
            and   name  = 'TAO_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUNHAP.TAO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUNHAP')
            and   type = 'U')
   drop table PHIEUNHAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUTHUTIEN')
            and   name  = 'CUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUTHUTIEN.CUA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUTHUTIEN')
            and   name  = 'LAP_PHIEU_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUTHUTIEN.LAP_PHIEU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUTHUTIEN')
            and   type = 'U')
   drop table PHIEUTHUTIEN
go

/*==============================================================*/
/* Table: CHITIETHOADON                                         */
/*==============================================================*/
create table CHITIETHOADON (
   MAHOADON             int                  not null,
   MAHANGHOA            int                  not null,
   SOLUONGBAN           int                  null,
   constraint PK_CHITIETHOADON primary key (MAHOADON, MAHANGHOA)
)
go

/*==============================================================*/
/* Index: CHITIETHOADON_FK                                      */
/*==============================================================*/
create index CHITIETHOADON_FK on CHITIETHOADON (
MAHOADON ASC
)
go

/*==============================================================*/
/* Index: CHITIETHOADON2_FK                                     */
/*==============================================================*/
create index CHITIETHOADON2_FK on CHITIETHOADON (
MAHANGHOA ASC
)
go

/*==============================================================*/
/* Table: CHITIETPHIEUNHAP                                      */
/*==============================================================*/
create table CHITIETPHIEUNHAP (
   MAHANGHOA            int                  not null,
   MAPHIEUNHAP          int                  not null,
   SOLUONGNHAP          int                  null,
   constraint PK_CHITIETPHIEUNHAP primary key (MAHANGHOA, MAPHIEUNHAP)
)
go

/*==============================================================*/
/* Index: CHITIETPHIEUNHAP_FK                                   */
/*==============================================================*/
create index CHITIETPHIEUNHAP_FK on CHITIETPHIEUNHAP (
MAHANGHOA ASC
)
go

/*==============================================================*/
/* Index: CHITIETPHIEUNHAP2_FK                                  */
/*==============================================================*/
create index CHITIETPHIEUNHAP2_FK on CHITIETPHIEUNHAP (
MAPHIEUNHAP ASC
)
go

/*==============================================================*/
/* Table: DULIEUKHACHHANG                                       */
/*==============================================================*/
create table DULIEUKHACHHANG (
   MAKHACHHANG          int                  not null,
   MAHANGHOA            int                  not null,
   SOLUOTXEM            int                  null,
   SOLUONGMUA           int                  null,
   YEUTHICH             bit                  null,
   constraint PK_DULIEUKHACHHANG primary key (MAKHACHHANG, MAHANGHOA)
)
go

/*==============================================================*/
/* Index: DULIEUKHACHHANG_FK                                    */
/*==============================================================*/
create index DULIEUKHACHHANG_FK on DULIEUKHACHHANG (
MAKHACHHANG ASC
)
go

/*==============================================================*/
/* Index: DULIEUKHACHHANG2_FK                                   */
/*==============================================================*/
create index DULIEUKHACHHANG2_FK on DULIEUKHACHHANG (
MAHANGHOA ASC
)
go

/*==============================================================*/
/* Table: GIOHANG                                               */
/*==============================================================*/
create table GIOHANG (
   MAKHACHHANG          int                  not null,
   MAHANGHOA            int                  not null,
   SOLUONG              int                  null,
   constraint PK_GIOHANG primary key (MAKHACHHANG, MAHANGHOA)
)
go

/*==============================================================*/
/* Index: GIOHANG_FK                                            */
/*==============================================================*/
create index GIOHANG_FK on GIOHANG (
MAKHACHHANG ASC
)
go

/*==============================================================*/
/* Index: GIOHANG2_FK                                           */
/*==============================================================*/
create index GIOHANG2_FK on GIOHANG (
MAHANGHOA ASC
)
go

/*==============================================================*/
/* Table: HANGHOA                                               */
/*==============================================================*/
create table HANGHOA (
   MAHANGHOA            int                  not null,
   MALOAIHANG           int                  not null,
   TENHANGHOA           nvarchar(20)             null,
   GIABAN               money                null,
   HINHANH              varchar(50)             null,
   MOTA                 text                 null,
   SOLUONGTON           int                  null,
   SOLUOTXEM            int                  null,
   TIEUDE               varchar(20)             null,
   constraint PK_HANGHOA primary key nonclustered (MAHANGHOA)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on HANGHOA (
MALOAIHANG ASC
)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MAHOADON             int                  not null,
   MANHANVIEN           int                  not null,
   MAKHACHHANG          int                  not null,
   MAKHUVUC             int                  not null,
   NGAYLAP              datetime             null,
   DIACHIGIAOHANG       nvarchar(50)             null,
   TENNGUOINHAN         nvarchar(20)             null,
   SODIENTHOAI          numeric(15)          null,
   TONGTIEN             money                null,
   TRANGTHAI            nvarchar(20)             null,
   constraint PK_HOADON primary key nonclustered (MAHOADON)
)
go

/*==============================================================*/
/* Index: NHAN_FK                                               */
/*==============================================================*/
create index NHAN_FK on HOADON (
MAKHACHHANG ASC
)
go

/*==============================================================*/
/* Index: LAP_FK                                                */
/*==============================================================*/
create index LAP_FK on HOADON (
MANHANVIEN ASC
)
go

/*==============================================================*/
/* Index: GIAO__EN_FK                                           */
/*==============================================================*/
create index GIAO__EN_FK on HOADON (
MAKHUVUC ASC
)
go

/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
create table KHACHHANG (
   MAKHACHHANG          int                  not null,
   HOTENKHACHHANG       nvarchar(20)             null,
   DIENTHOAI            numeric(15)          null,
   EMAIL                varchar(20)             null,
   TIEN_NO              money                null,
   TENDANGNHAP          varchar(20)             null,
   MATKHAU              varchar(20)             null,
   TRANGTHAI            nvarchar(20)             null,
   constraint PK_KHACHHANG primary key nonclustered (MAKHACHHANG)
)
go

/*==============================================================*/
/* Table: KHUVUC                                                */
/*==============================================================*/
create table KHUVUC (
   MAKHUVUC             int                  not null,
   TENKHUVUC            nvarchar(20)             null,
   PHIGIAOHANG          money                null,
   constraint PK_KHUVUC primary key nonclustered (MAKHUVUC)
)
go

/*==============================================================*/
/* Table: LOAIHANGHOA                                           */
/*==============================================================*/
create table LOAIHANGHOA (
   MALOAIHANG           int                  not null,
   TENLOAIHANG          nvarchar(20)             null,
   TIEUDE               varchar(20)             null,
   constraint PK_LOAIHANGHOA primary key nonclustered (MALOAIHANG)
)
go

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP (
   MANHACUNGCAP         int                  not null,
   TENNHACUNGCAP        nvarchar(20)             null,
   DIENTHOAI            numeric(15)          null,
   DIACHI               nvarchar(50)             null,
   EMAIL                nvarchar(20)             null,
   TIENNONHACUNGCAP     money                null,
   constraint PK_NHACUNGCAP primary key nonclustered (MANHACUNGCAP)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANHANVIEN           int                  not null,
   HOTENNHANVIEN        nvarchar(20)             null,
   DIENTHOAI            numeric(15)          null,
   GIOITINH             nvarchar(20)             null,
   BOPHAN               nvarchar(20)             null,
   TENDANGNHAP          varchar(20)             null,
   MATKHAU              varchar(20)             null,
   TRANGTHAI            nvarchar(20)             null,
   PHANQUYEN			varchar(20)				null,
   constraint PK_NHANVIEN primary key nonclustered (MANHANVIEN)
)
go

/*==============================================================*/
/* Table: PHIEUCHITIEN                                          */
/*==============================================================*/
create table PHIEUCHITIEN (
   MAPHIEUCHI           int                  not null,
   MANHACUNGCAP         int                  not null,
   MANHANVIEN           int                  not null,
   NGAYCHITIEN          datetime             null,
   SOTIENCHI            money                null,
   NOIDUNGCHITIEN       nvarchar(50)             null,
   constraint PK_PHIEUCHITIEN primary key nonclustered (MAPHIEUCHI)
)
go

/*==============================================================*/
/* Index: LAP_RA_FK                                             */
/*==============================================================*/
create index LAP_RA_FK on PHIEUCHITIEN (
MANHANVIEN ASC
)
go

/*==============================================================*/
/* Index: GUI_FK                                                */
/*==============================================================*/
create index GUI_FK on PHIEUCHITIEN (
MANHACUNGCAP ASC
)
go

/*==============================================================*/
/* Table: PHIEUNHAP                                             */
/*==============================================================*/
create table PHIEUNHAP (
   MAPHIEUNHAP          int                  not null,
   MANHACUNGCAP         int                  not null,
   MANHANVIEN           int                  not null,
   NGAYNHAP             datetime             null,
   TONGTIEN             money                null,
   constraint PK_PHIEUNHAP primary key nonclustered (MAPHIEUNHAP)
)
go

/*==============================================================*/
/* Index: TAO_FK                                                */
/*==============================================================*/
create index TAO_FK on PHIEUNHAP (
MANHANVIEN ASC
)
go

/*==============================================================*/
/* Index: GIAO_CHO_FK                                           */
/*==============================================================*/
create index GIAO_CHO_FK on PHIEUNHAP (
MANHACUNGCAP ASC
)
go

/*==============================================================*/
/* Table: PHIEUTHUTIEN                                          */
/*==============================================================*/
create table PHIEUTHUTIEN (
   MAPHIEUTHU           int                  not null,
   MANHANVIEN           int                  not null,
   MAKHACHHANG          int                  not null,
   NGAYTHUTIEN          datetime             null,
   SOTIENTHU            money                null,
   NOIDUNG              nvarchar(50)             null,
   constraint PK_PHIEUTHUTIEN primary key nonclustered (MAPHIEUTHU)
)
go

/*==============================================================*/
/* Index: LAP_PHIEU_FK                                          */
/*==============================================================*/
create index LAP_PHIEU_FK on PHIEUTHUTIEN (
MANHANVIEN ASC
)
go

/*==============================================================*/
/* Index: CUA_FK                                                */
/*==============================================================*/
create index CUA_FK on PHIEUTHUTIEN (
MAKHACHHANG ASC
)
go

alter table CHITIETHOADON
   add constraint FK_CHITIETH_CHITIETHO_HOADON foreign key (MAHOADON)
      references HOADON (MAHOADON)
go

alter table CHITIETHOADON
   add constraint FK_CHITIETH_CHITIETHO_HANGHOA foreign key (MAHANGHOA)
      references HANGHOA (MAHANGHOA)
go

alter table CHITIETPHIEUNHAP
   add constraint FK_CHITIETP_CHITIETPH_HANGHOA foreign key (MAHANGHOA)
      references HANGHOA (MAHANGHOA)
go

alter table CHITIETPHIEUNHAP
   add constraint FK_CHITIETP_CHITIETPH_PHIEUNHA foreign key (MAPHIEUNHAP)
      references PHIEUNHAP (MAPHIEUNHAP)
go

alter table DULIEUKHACHHANG
   add constraint FK_DULIEUKH_DULIEUKHA_KHACHHAN foreign key (MAKHACHHANG)
      references KHACHHANG (MAKHACHHANG)
go

alter table DULIEUKHACHHANG
   add constraint FK_DULIEUKH_DULIEUKHA_HANGHOA foreign key (MAHANGHOA)
      references HANGHOA (MAHANGHOA)
go

alter table GIOHANG
   add constraint FK_GIOHANG_GIOHANG_KHACHHAN foreign key (MAKHACHHANG)
      references KHACHHANG (MAKHACHHANG)
go

alter table GIOHANG
   add constraint FK_GIOHANG_GIOHANG2_HANGHOA foreign key (MAHANGHOA)
      references HANGHOA (MAHANGHOA)
go

alter table HANGHOA
   add constraint FK_HANGHOA_THUOC_LOAIHANG foreign key (MALOAIHANG)
      references LOAIHANGHOA (MALOAIHANG)
go

alter table HOADON
   add constraint FK_HOADON_GIAO__EN_KHUVUC foreign key (MAKHUVUC)
      references KHUVUC (MAKHUVUC)
go

alter table HOADON
   add constraint FK_HOADON_LAP_NHANVIEN foreign key (MANHANVIEN)
      references NHANVIEN (MANHANVIEN)
go

alter table HOADON
   add constraint FK_HOADON_NHAN_KHACHHAN foreign key (MAKHACHHANG)
      references KHACHHANG (MAKHACHHANG)
go

alter table PHIEUCHITIEN
   add constraint FK_PHIEUCHI_GUI_NHACUNGC foreign key (MANHACUNGCAP)
      references NHACUNGCAP (MANHACUNGCAP)
go

alter table PHIEUCHITIEN
   add constraint FK_PHIEUCHI_LAP_RA_NHANVIEN foreign key (MANHANVIEN)
      references NHANVIEN (MANHANVIEN)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_GIAO_CHO_NHACUNGC foreign key (MANHACUNGCAP)
      references NHACUNGCAP (MANHACUNGCAP)
go

alter table PHIEUNHAP
   add constraint FK_PHIEUNHA_TAO_NHANVIEN foreign key (MANHANVIEN)
      references NHANVIEN (MANHANVIEN)
go

alter table PHIEUTHUTIEN
   add constraint FK_PHIEUTHU_CUA_KHACHHAN foreign key (MAKHACHHANG)
      references KHACHHANG (MAKHACHHANG)
go

alter table PHIEUTHUTIEN
   add constraint FK_PHIEUTHU_LAP_PHIEU_NHANVIEN foreign key (MANHANVIEN)
      references NHANVIEN (MANHANVIEN)
go


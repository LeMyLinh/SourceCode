namespace Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BanHangGiaDungDbContext : DbContext
    {
        public BanHangGiaDungDbContext()
            : base("name=BanHangGiaDungDbContext")
        {
        }

        public virtual DbSet<CHITIETHOADON> CHITIETHOADONs { get; set; }
        public virtual DbSet<CHITIETPHIEUNHAP> CHITIETPHIEUNHAPs { get; set; }
        public virtual DbSet<DULIEUKHACHHANG> DULIEUKHACHHANGs { get; set; }
        public virtual DbSet<GIOHANG> GIOHANGs { get; set; }
        public virtual DbSet<HANGHOA> HANGHOAs { get; set; }
        public virtual DbSet<HOADON> HOADONs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<KHUVUC> KHUVUCs { get; set; }
        public virtual DbSet<LOAIHANGHOA> LOAIHANGHOAs { get; set; }
        public virtual DbSet<NHACUNGCAP> NHACUNGCAPs { get; set; }
        public virtual DbSet<NHANVIEN> NHANVIENs { get; set; }
        public virtual DbSet<PHIEUCHITIEN> PHIEUCHITIENs { get; set; }
        public virtual DbSet<PHIEUNHAP> PHIEUNHAPs { get; set; }
        public virtual DbSet<PHIEUTHUTIEN> PHIEUTHUTIENs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<HANGHOA>()
                .Property(e => e.GIABAN)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HANGHOA>()
                .Property(e => e.HINHANH)
                .IsUnicode(false);

            modelBuilder.Entity<HANGHOA>()
                .Property(e => e.MOTA)
                .IsUnicode(false);

            modelBuilder.Entity<HANGHOA>()
                .Property(e => e.TIEUDE)
                .IsUnicode(false);

            modelBuilder.Entity<HANGHOA>()
                .HasMany(e => e.CHITIETHOADONs)
                .WithRequired(e => e.HANGHOA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HANGHOA>()
                .HasMany(e => e.CHITIETPHIEUNHAPs)
                .WithRequired(e => e.HANGHOA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HANGHOA>()
                .HasMany(e => e.DULIEUKHACHHANGs)
                .WithRequired(e => e.HANGHOA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HANGHOA>()
                .HasMany(e => e.GIOHANGs)
                .WithRequired(e => e.HANGHOA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HOADON>()
                .Property(e => e.SODIENTHOAI)
                .HasPrecision(15, 0);

            modelBuilder.Entity<HOADON>()
                .Property(e => e.TONGTIEN)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HOADON>()
                .HasMany(e => e.CHITIETHOADONs)
                .WithRequired(e => e.HOADON)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.DIENTHOAI)
                .HasPrecision(15, 0);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.EMAIL)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.TIEN_NO)
                .HasPrecision(19, 4);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.TENDANGNHAP)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.MATKHAU)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.DULIEUKHACHHANGs)
                .WithRequired(e => e.KHACHHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.GIOHANGs)
                .WithRequired(e => e.KHACHHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.HOADONs)
                .WithRequired(e => e.KHACHHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .HasMany(e => e.PHIEUTHUTIENs)
                .WithRequired(e => e.KHACHHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHUVUC>()
                .Property(e => e.PHIGIAOHANG)
                .HasPrecision(19, 4);

            modelBuilder.Entity<KHUVUC>()
                .HasMany(e => e.HOADONs)
                .WithRequired(e => e.KHUVUC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LOAIHANGHOA>()
                .Property(e => e.TIEUDE)
                .IsUnicode(false);

            modelBuilder.Entity<LOAIHANGHOA>()
                .HasMany(e => e.HANGHOAs)
                .WithRequired(e => e.LOAIHANGHOA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.DIENTHOAI)
                .HasPrecision(15, 0);

            modelBuilder.Entity<NHACUNGCAP>()
                .Property(e => e.TIENNONHACUNGCAP)
                .HasPrecision(19, 4);

            modelBuilder.Entity<NHACUNGCAP>()
                .HasMany(e => e.PHIEUCHITIENs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHACUNGCAP>()
                .HasMany(e => e.PHIEUNHAPs)
                .WithRequired(e => e.NHACUNGCAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.DIENTHOAI)
                .HasPrecision(15, 0);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.TENDANGNHAP)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.MATKHAU)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.PHANQUYEN)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.HOADONs)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUCHITIENs)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUNHAPs)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NHANVIEN>()
                .HasMany(e => e.PHIEUTHUTIENs)
                .WithRequired(e => e.NHANVIEN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUCHITIEN>()
                .Property(e => e.SOTIENCHI)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PHIEUNHAP>()
                .Property(e => e.TONGTIEN)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PHIEUNHAP>()
                .HasMany(e => e.CHITIETPHIEUNHAPs)
                .WithRequired(e => e.PHIEUNHAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUTHUTIEN>()
                .Property(e => e.SOTIENTHU)
                .HasPrecision(19, 4);
        }
    }
}

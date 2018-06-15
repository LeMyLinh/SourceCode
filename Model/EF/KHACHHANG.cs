namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KHACHHANG")]
    public partial class KHACHHANG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public KHACHHANG()
        {
            DULIEUKHACHHANGs = new HashSet<DULIEUKHACHHANG>();
            GIOHANGs = new HashSet<GIOHANG>();
            HOADONs = new HashSet<HOADON>();
            PHIEUTHUTIENs = new HashSet<PHIEUTHUTIEN>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAKHACHHANG { get; set; }

        [StringLength(20)]
        public string HOTENKHACHHANG { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? DIENTHOAI { get; set; }

        [StringLength(20)]
        public string EMAIL { get; set; }

        [Column(TypeName = "money")]
        public decimal? TIEN_NO { get; set; }

        [StringLength(20)]
        public string TENDANGNHAP { get; set; }

        [StringLength(20)]
        public string MATKHAU { get; set; }

        [StringLength(20)]
        public string TRANGTHAI { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DULIEUKHACHHANG> DULIEUKHACHHANGs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GIOHANG> GIOHANGs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HOADON> HOADONs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUTHUTIEN> PHIEUTHUTIENs { get; set; }
    }
}

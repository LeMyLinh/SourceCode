namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HOADON")]
    public partial class HOADON
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HOADON()
        {
            CHITIETHOADONs = new HashSet<CHITIETHOADON>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAHOADON { get; set; }

        public int MANHANVIEN { get; set; }

        public int MAKHACHHANG { get; set; }

        public int MAKHUVUC { get; set; }

        public DateTime? NGAYLAP { get; set; }

        [StringLength(50)]
        public string DIACHIGIAOHANG { get; set; }

        [StringLength(20)]
        public string TENNGUOINHAN { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? SODIENTHOAI { get; set; }

        [Column(TypeName = "money")]
        public decimal? TONGTIEN { get; set; }

        [StringLength(20)]
        public string TRANGTHAI { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETHOADON> CHITIETHOADONs { get; set; }

        public virtual KHUVUC KHUVUC { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }
    }
}

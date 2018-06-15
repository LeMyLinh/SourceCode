namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HANGHOA")]
    public partial class HANGHOA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HANGHOA()
        {
            CHITIETHOADONs = new HashSet<CHITIETHOADON>();
            CHITIETPHIEUNHAPs = new HashSet<CHITIETPHIEUNHAP>();
            DULIEUKHACHHANGs = new HashSet<DULIEUKHACHHANG>();
            GIOHANGs = new HashSet<GIOHANG>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAHANGHOA { get; set; }

        public int MALOAIHANG { get; set; }

        [StringLength(20)]
        public string TENHANGHOA { get; set; }

        [Column(TypeName = "money")]
        public decimal? GIABAN { get; set; }

        [StringLength(50)]
        public string HINHANH { get; set; }

        [Column(TypeName = "text")]
        public string MOTA { get; set; }

        public int? SOLUONGTON { get; set; }

        public int? SOLUOTXEM { get; set; }

        [StringLength(20)]
        public string TIEUDE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETHOADON> CHITIETHOADONs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETPHIEUNHAP> CHITIETPHIEUNHAPs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DULIEUKHACHHANG> DULIEUKHACHHANGs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GIOHANG> GIOHANGs { get; set; }

        public virtual LOAIHANGHOA LOAIHANGHOA { get; set; }
    }
}

namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHANVIEN")]
    public partial class NHANVIEN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NHANVIEN()
        {
            HOADONs = new HashSet<HOADON>();
            PHIEUCHITIENs = new HashSet<PHIEUCHITIEN>();
            PHIEUNHAPs = new HashSet<PHIEUNHAP>();
            PHIEUTHUTIENs = new HashSet<PHIEUTHUTIEN>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MANHANVIEN { get; set; }

        [StringLength(20)]
        public string HOTENNHANVIEN { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? DIENTHOAI { get; set; }

        [StringLength(20)]
        public string GIOITINH { get; set; }

        [StringLength(20)]
        public string BOPHAN { get; set; }

        [StringLength(20)]
        public string TENDANGNHAP { get; set; }

        [StringLength(20)]
        public string MATKHAU { get; set; }

        [StringLength(20)]
        public string TRANGTHAI { get; set; }

        [StringLength(20)]
        public string PHANQUYEN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HOADON> HOADONs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUCHITIEN> PHIEUCHITIENs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUNHAP> PHIEUNHAPs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUTHUTIEN> PHIEUTHUTIENs { get; set; }
    }
}

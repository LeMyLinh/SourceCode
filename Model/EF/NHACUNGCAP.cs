namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHACUNGCAP")]
    public partial class NHACUNGCAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NHACUNGCAP()
        {
            PHIEUCHITIENs = new HashSet<PHIEUCHITIEN>();
            PHIEUNHAPs = new HashSet<PHIEUNHAP>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MANHACUNGCAP { get; set; }

        [StringLength(20)]
        public string TENNHACUNGCAP { get; set; }

        [Column(TypeName = "numeric")]
        public decimal? DIENTHOAI { get; set; }

        [StringLength(50)]
        public string DIACHI { get; set; }

        [StringLength(20)]
        public string EMAIL { get; set; }

        [Column(TypeName = "money")]
        public decimal? TIENNONHACUNGCAP { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUCHITIEN> PHIEUCHITIENs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUNHAP> PHIEUNHAPs { get; set; }
    }
}

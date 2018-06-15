namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUCHITIEN")]
    public partial class PHIEUCHITIEN
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAPHIEUCHI { get; set; }

        public int MANHACUNGCAP { get; set; }

        public int MANHANVIEN { get; set; }

        public DateTime? NGAYCHITIEN { get; set; }

        [Column(TypeName = "money")]
        public decimal? SOTIENCHI { get; set; }

        [StringLength(50)]
        public string NOIDUNGCHITIEN { get; set; }

        public virtual NHACUNGCAP NHACUNGCAP { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}

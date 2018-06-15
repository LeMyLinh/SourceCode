namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUTHUTIEN")]
    public partial class PHIEUTHUTIEN
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAPHIEUTHU { get; set; }

        public int MANHANVIEN { get; set; }

        public int MAKHACHHANG { get; set; }

        public DateTime? NGAYTHUTIEN { get; set; }

        [Column(TypeName = "money")]
        public decimal? SOTIENTHU { get; set; }

        [StringLength(50)]
        public string NOIDUNG { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}

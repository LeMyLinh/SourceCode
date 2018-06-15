namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DULIEUKHACHHANG")]
    public partial class DULIEUKHACHHANG
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAKHACHHANG { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MAHANGHOA { get; set; }

        public int? SOLUOTXEM { get; set; }

        public int? SOLUONGMUA { get; set; }

        public bool? YEUTHICH { get; set; }

        public virtual HANGHOA HANGHOA { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }
    }
}

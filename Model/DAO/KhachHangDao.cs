using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;

namespace Model.DAO
{
    public class KhachHangDao
    {
        private static BanHangGiaDungDbContext db = new BanHangGiaDungDbContext();
        public static String message = "";
        public static bool isSuccess;

        private static KHACHHANG Convert(KHACHHANG kh)
        {
            return new KHACHHANG
            {
                MAKHACHHANG = kh.MAKHACHHANG,
                HOTENKHACHHANG = kh.HOTENKHACHHANG,
                DIENTHOAI = kh.DIENTHOAI,
                EMAIL = kh.EMAIL,
                TIEN_NO = kh.TIEN_NO,
                TENDANGNHAP = kh.TENDANGNHAP,
                MATKHAU = kh.MATKHAU,
                TRANGTHAI = kh.TRANGTHAI
            };
        }
        
        public static bool Insert(KHACHHANG khachhang)
        {
            if (db.KHACHHANGs.Find(khachhang.TENDANGNHAP.ToLower()) != null)
            {
                message = "Tên đăng nhập đã tồn tại";
                isSuccess = false;
                return false;
            }
            //thêm
            try
            {
                KHACHHANG kh = Convert(khachhang);
                kh.TENDANGNHAP.ToLower();
                db.KHACHHANGs.Add(kh);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                message = "Thêm khách hàng không thành công!\n" + e.Message;
                isSuccess = false;
                return false;
            }
            message = "Thêm khách hàng thành công!";
            isSuccess = true;
            return true;
        }

        public static bool Update(KHACHHANG khachhang)
        {
            KHACHHANG kh = db.KHACHHANGs.Find(khachhang.MAKHACHHANG);
            // kiểm tra
            if (kh == null)
            {
                message = "Khách hàng không tồn tại!";
                isSuccess = false;
                return false;
            }
            if (db.KHACHHANGs.Find(khachhang.TENDANGNHAP) == null)
            {
                message = "Tên đăng nhập không tồn tại!";
                isSuccess = false;
                return false;
            }
            // Sửa
            try
            {

                kh.HOTENKHACHHANG = khachhang.HOTENKHACHHANG;
                kh.DIENTHOAI = khachhang.DIENTHOAI;
                kh.EMAIL = khachhang.EMAIL;
                kh.MaLoaiKH = khachhang.MaLKH;
                db.SaveChanges();
            }
            catch (Exception e)
            {
                Message = "Sửa khách hàng không thành công!\n" + e.Message;
                IsSuccess = false;
                return;
            }
            Message = "Sửa khách hàng thành công!";
            IsSuccess = true;
            return;
        }
    }
}

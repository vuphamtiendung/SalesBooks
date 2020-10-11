using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dangky : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // Xử lý nút đăng ký
    protected void btDangKy_Click(object sender, EventArgs e)
    {
        try
        {
            string str1 = @"Select 1 from KHACHHANG Where TenDN = N '" + txtTenDN.Text + "'";
            if(x.GetData(str1).Rows.Count > 0)
            {
                lbThongBaoLoi.Text = "Tên Đăng Nhập Đã Tồn Tại";
                txtTenDN.Focus();
            }
            else
            {
                SqlConnection con = new SqlConnection(x.strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"Insert into KHACHHANG(HoTenKH, DiaChiKH, DienThoaiKH, Email, TenDN, MatKhau, NgaySinh, GioiTinh) 
                Values (@HoTen, @DiaChi, @DienThoai, @Email, @TenDN, @MatKhau, @NgaySinh, @GioiTinh)";
                cmd.Parameters.Add("@HoTen", SqlDbType.NVarChar, 50);
                cmd.Parameters["@HoTen"].Value = txtHoTen.Text;
                cmd.Parameters.Add("@DiaChi", SqlDbType.NVarChar, 50);
                cmd.Parameters.Add("@DienThoai", SqlDbType.VarChar, 10);
                cmd.Parameters["@DienThoai"].Value = txtDienthoai.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 10);
                cmd.Parameters["@Email"].Value = txtEmail.Text;
                cmd.Parameters.Add("@TenDN", SqlDbType.VarChar, 15);
                cmd.Parameters["@TenDN"].Value = txtTenDN.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.NVarChar, 15);
                cmd.Parameters["@MatKhau"].Value = txtMatkhau.Text;
                cmd.Parameters.Add("@NgaySinh", SqlDbType.SmallDateTime);
                cmd.Parameters["@NgaySinh"].Value = DateTime.Parse(ddlNgaysinh.Text + "/" + ddlThangsinh.Text + "/" + txtNamSinh.Text);
                cmd.Parameters.Add("@GioiTinh", SqlDbType.Int);
                cmd.Parameters["@GioiTinh"].Value = Convert.ToInt16(rblGioiTinh.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Dangnhap.aspx");
            }
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất Bại!";
        }
    }
}
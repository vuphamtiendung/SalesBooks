using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Dangnhap : System.Web.UI.Page
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTenDN.Focus();
    }

    protected void btDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("Select * From KHACHHANG Where TenDN= '" + txtTenDN.Text + "' and MatKhau = '" + txtMatKhau.Text + "'");
            if(dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtTenDN.Text;
                Response.Redirect("~Default.aspx");
            }
            else
            {
                lblThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
            }
        }
        catch
        {
            lblThongBaoLoi.Text = "Thất Bại!";
        }
    }
}


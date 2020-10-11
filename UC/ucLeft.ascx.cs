using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UC_ucLeft : System.Web.UI.UserControl
{
    XLDL x = new XLDL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            ChuDeSach();
            SachNXB();
        }
    }
    private void ChuDeSach()
    {
        DataTable dt = x.GetData("Select MaCD, TenChuDe from CHUDE");
        if(dt.Rows.Count > 0)
        {
            gvChuDeSach.DataSource = dt;
            gvChuDeSach.DataBind();
        }
    }
    private void SachNXB()
    {
        DataTable dt = x.GetData("Select MaNXB, TenNXB from NHAXUATBAN");
        if (dt.Rows.Count > 0)
        {
            gvSachNXB.DataSource = dt;
            gvSachNXB.DataBind();
        }
    }


    protected void gvChuDeSach_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
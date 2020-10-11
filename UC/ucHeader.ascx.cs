using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ucHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Giohang"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["GioHang"];
            System.Int32 tongSL = 0;
            foreach (DataRow r in dt.Rows)
            {
                tongSL += Convert.ToInt32(r["SoLuong"]);
                //tbTongSL.Text = tongSL.ToString();
            }
        }
    }

    protected void lbTongSL_Load(object sender, EventArgs e)
    {
        
    }
}
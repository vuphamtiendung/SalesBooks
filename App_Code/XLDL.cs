using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
public class XLDL
{
    public XLDL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    // lấy giá trị chuỗi kết nối trong tập tin Web
    public string strCon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString.ToString();
    // Nhằm thực hiện câu lệnh truy vấn hiển thị và cập nhật dữ liệu trong class XLDL
    public DataTable GetData(string lenhSQL)
    {
        SqlConnection sqlCon = new SqlConnection(strCon);
        try
        {
            SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    //Nhằm thực hiện câu lệnh Insert, Update, Delete để cập nhật dữ liệu cho csdl
    public void Execute(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
        }
    }
    // Nhằm thực hiện câu lệnh truy vấn SQL trả về dữ liệu là 1 giá trị đơn.
    public string GetValue(string lenhSQL)
    {
        using (SqlConnection sqlCon = new SqlConnection(strCon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
            string value = sqlCmd.ExecuteScalar().ToString();
            sqlCon.Close();
            return (value);
        }
    }
}
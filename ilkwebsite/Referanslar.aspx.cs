using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Referanslar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Server=MT\\SQLEXPRESS;Database=IlkWebSitemDB;Trusted_Connection=True;");
        conn.Open();
        SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Referanslar", conn);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        Repeater1.DataSource = sqlDataReader;
        Repeater1.DataBind();
        conn.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaberDetay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["HaberID"]);

        SqlConnection conn = new SqlConnection("Server=MT\\SQLEXPRESS;Database=IlkWebSitemDB;Trusted_Connection=True;");
        conn.Open();
        SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Haberler WHERE HaberID=@Hid", conn);
        sqlCommand.Parameters.AddWithValue("@Hid", id);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        if (sqlDataReader.Read())
        {


            lblBaslik.Text = sqlDataReader["HaberBaslik"].ToString();
            lblOzet.Text = sqlDataReader["HaberOzet"].ToString();
            lblDetay.Text = sqlDataReader["HaberDetay"].ToString();
            imgResim.ImageUrl ="images/"+ sqlDataReader["HaberResim"].ToString();
            lblResim.Text= "<img src='images/" + sqlDataReader["HaberResim"].ToString() + "'  width='400' height='300' />";
        }

        else
        {
            Response.Redirect("Haberler.aspx");
        }
        
        conn.Close();

    }
}
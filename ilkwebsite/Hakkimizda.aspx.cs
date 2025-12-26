using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  //SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP-12345;Initial Catalog=MyDatabase;Integrated Security=True");
        SqlConnection conn = new SqlConnection("Server=MT\\SQLEXPRESS;Database=IlkWebSitemDB;Trusted_Connection=True;");
        conn.Open();
        SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Hakkimizda", conn);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
        Repeater1.DataSource = sqlDataReader;
        Repeater1.DataBind();
        //while (sqlDataReader.Read())
        //   {
        //        Label1.Text += sqlDataReader["HakkimizdaBaslik"].ToString()+"</br>";
        //        Label2.Text += sqlDataReader["HakkimizdaDetay"].ToString();
              
        // }
            
            
            //Repeater1.DataSource = sqlDataReader;    }
        //Repeater1.DataSource = sqlDataReader;
        //Repeater1.DataBind();
        //conn.Close();

    }
}
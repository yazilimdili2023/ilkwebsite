using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Server=MT\\SQLEXPRESS;Database=IlkWebSitemDB;Trusted_Connection=True;");
        conn.Open();
        SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Iletisim", conn);
        SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
      
        if(sqlDataReader.Read())
        {
           lblAd.Text=sqlDataReader["SirketAdi"].ToString();
            lblTelefon.Text = sqlDataReader["SirketTelefonu"].ToString();
            lblFax.Text = sqlDataReader["SirketFax"].ToString();
            lblMail.Text=sqlDataReader["SirketMail"].ToString();
      
           lblAdres.Text=sqlDataReader["SirketAdres"].ToString();
            //  txtMesajTarih.Text=DateTime.Now.ToString("yyyy-MM-dd");
            //  txtMesajTarih.Text=DateTime.Now.ToString("yyyy-MM-dd"); ileşimi testttta

        }
        conn.Close();

    }

    protected void Kaydet_Click(object sender, EventArgs e)
    {
       string baslik = txtMesajBaslik.Text;
       string mail = txtKisiMail.Text; //string
      // string tarih = txtMesajTarih.Text;
       
     


        SqlConnection conn = new SqlConnection("Server=MT\\SQLEXPRESS;Database=IlkWebSitemDB;Trusted_Connection=True;");
        conn.Open();
        SqlCommand sqlCommand = new SqlCommand("INSERT INTO Mesajlar(MesajBaslik,KisiMail,MesajTarih,MesajDetay) VALUES(@baslik,@mail,@tarih,@detay)", conn);
        sqlCommand.Parameters.AddWithValue("@baslik", baslik);
        sqlCommand.Parameters.AddWithValue("@mail", mail);
        sqlCommand.Parameters.AddWithValue("@tarih", DateTime.Now.ToString("yyyy-MM-dd"));
        sqlCommand.Parameters.AddWithValue("@detay", txtMesajDetay.Value);
        sqlCommand.ExecuteNonQuery();
        conn.Close();

    }

    protected void Temizle_Click(object sender, EventArgs e)
    {


    }

     







}
//,[SirketAdi]
// ,[SirketTelefonu]
// ,[SirketMail]
// ,[SirketFax]
// ,[SirketAdres]
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">   <ul>
       <li><a href="Default.aspx">ANASAYFA</a></li>
       <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
       <li><a href="Urunler.aspx">ÜRÜNLER</a></li>
       <li><a href="Referanslar.aspx">REFERANSLAR</a></li>
       <li><a href="Haberler.aspx">HABERLER</a></li>
       <li><a href="Iletisim.aspx">İLETİŞİM</a></li>
   </ul>
        <h1>İLETİŞİM</h1>
       <span>Şirket :</span> <asp:Label ID="lblAd" runat="server" Text="Label"></asp:Label><br />
         <span>Telefon :</span> <asp:Label ID="lblTelefon" runat="server" Text="Label"></asp:Label><br /> 
          <span>Fax :</span><asp:Label ID="lblFax" runat="server" Text="Label"></asp:Label><br />
        <span>Mail:</span> <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label><br />
        <span>Adres:</span>  <asp:Label ID="lblAdres" runat="server" Text="Label"></asp:Label><br />
        <div>
        </div>
        <hr />
        <span>MesajBaslik:</span><asp:TextBox ID="txtMesajBaslik" runat="server"></asp:TextBox><br /><br />
        <span>KisiMail:</span><asp:TextBox ID="txtKisiMail" runat="server"></asp:TextBox><br /><br />
    <%--      <span>MesajTarih:</span><asp:TextBox ID="txtMesajTarih" runat="server"></asp:TextBox><br /><br />--%>
        
            <span>MesajDetay:</span> <textarea ID="txtMesajDetay" cols="20" rows="2" runat="server"></textarea>
        <hr />
        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Kaydet_Click" /> <asp:Button ID="Button2" runat="server" Text="Temizle" OnClick="Temizle_Click" />
    </form>
</body>
</html>

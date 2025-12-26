<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li><a href="Default.aspx">ANASAYFA</a></li>
                <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                <li><a href="Urunler.aspx">ÜRÜNLER</a></li>
                <li><a href="Referanslar.aspx">REFERANSLAR</a></li>
                <li><a href="Haberler.aspx">HABERLER</a></li>
                <li><a href="Iletisim.aspx">İLETİŞİM</a></li>
            </ul>
            <h1>HAKKIMIZDA   </h1>
              <asp:Repeater ID="Repeater1" runat="server">

      <ItemTemplate>

          <h2><%# Eval("HakkimizdaBaslik") %></h2>
          <p><%# Eval("HakkimizdaDetay") %></p>
          <hr />

      </ItemTemplate>
                  </asp:Repeater>
            <hr />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
             <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>

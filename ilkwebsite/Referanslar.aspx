<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Referanslar.aspx.cs" Inherits="Referanslar" %>

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
        <h1>REFERANSLAR</h1>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                
                    <h2><%# Eval("ReferansID") %> - <%# Eval("ReferansAdi") %></h2>
                
          

            </ItemTemplate>
        </asp:Repeater>
        <div>
        </div>
    </form>
</body>
</html>

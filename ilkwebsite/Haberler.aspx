<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Haberler.aspx.cs" Inherits="Haberler" %>

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
        <div>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <h2><%# Eval("HaberBaslik") %></h2>
                    <p><h4><%# Eval("HaberOzet") %></p></h4>
                    
                    <p> <img src="images/<%# Eval("HaberResim") %>" height="250"  width="350"/>    </p>
                    <a href="HaberDetay.aspx?HaberID=<%# Eval("HaberID") %>">Devamını Oku...</a>
                    <hr />

                </ItemTemplate>


            </asp:Repeater>
        </div>
    </form>
</body>
</html>

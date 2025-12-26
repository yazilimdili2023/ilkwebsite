<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Urunler.aspx.cs" Inherits="Urunler" %>

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
       
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <h2><%# Eval("UrunAdi") %></h2>
                    <h3><%# Eval("UrunFiyati") %></h3>
                   
                    <p>
    <h5><%# Eval("UrunDetay") %>
</p>
                    </h5>
                    
                    <p>
                        <img src="images/<%# Eval("UrunResmi") %>" height="250" width="350" />
                    </p>
              <%--     <a href="UrunDetay.aspx?UrunID=<%# Eval("UrunID") %>">Detayları Görüntüle...</a>--%>
                    <hr />
                </ItemTemplate>


            </asp:Repeater>
        <div>
        </div>
    </form>
</body>
</html>

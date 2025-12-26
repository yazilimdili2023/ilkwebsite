<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HaberDetay.aspx.cs" Inherits="HaberDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblBaslik" runat="server" Text="Label"></asp:Label><br />
             <asp:Label ID="lblOzet" runat="server" Text="Label"></asp:Label><br />
             <asp:Label ID="lblDetay" runat="server" Text="Label"></asp:Label><br />
             <asp:Image ID="imgResim" runat="server" Height="250px" Width="350px" /><br />
               <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label><br />
            <hr />
            <a href="Haberler.aspx">Geri</a>
        </div>
    </form>
</body>
</html>

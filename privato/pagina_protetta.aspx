<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="pagina_protetta.aspx.cs" Inherits="TestCohesion.privato.pagina_protetta" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina protetta</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <table align="center">
        <tr>
        <td colspan="3">
        <br />
        <br />
        <br />

        </td>
        </tr>
            <tr>
                <td colspan="3">
                    <font face="Script MT Bold" color="339933" size="40pt"> <b>Test Cohesion 2.0 </b></font>
                    <br />
                    <br />
                    <table>
                    <tr><td><b>Logged as: </b></td><td><asp:Label ID="fcLbl" runat="server" Text=""></asp:Label></td></tr>
                    <tr><td><b>Name: </b></td><td><asp:Label ID="nomeLbl" runat="server" Text=""></asp:Label></td></tr>
                    <tr><td><b>Authentication type: </b></td><td><asp:Label ID="authLbl" runat="server" Text=""></asp:Label></td></tr>
                    <tr><td><b>TOKEN: </b></td><td><asp:TextBox ID="doctxb" runat="server"></asp:TextBox></td></tr>
                    <tr><td><b>AUTH: </b></td><td><asp:TextBox ID="authtxb" runat="server"></asp:TextBox></td></tr>
                    </table>
                    
                </td>
            </tr>
            <tr>
                <td colspan="3">
                <br />
                <br />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="center">
                    <asp:Button ID="buttlogout" runat="server" Text="Logout1" onclick="buttlogout_Click" />
                </td>
                <td>
                </td>
            </tr>
        </table>
	<br />
    </div>
    </form>
</body>
</html>

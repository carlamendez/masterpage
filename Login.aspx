<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1300px">
            <asp:Table CssClass="text-center table-condensed" runat="server" Style="margin-left: 418px; margin-top: 101px;" Width="608px" Font-Names="Calibri Light" ForeColor="White" Height="79px" BackColor="#00CC99" BorderColor="White" CellPadding="1" CellSpacing="1">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ColumnSpan="3" CssClass="text-center">
                      <asp:label CssClass="text-center" text="Login" runat="server" Font-Size="60px"/>
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label CssClass="text-center" Text="Usuario" runat="server" Font-Size="24px" BorderStyle="NotSet" Font-Bold="True" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox CssClass="form-control" ID="txtusuario" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                         <asp:Label CssClass="text-center" Text="Contraseña" runat="server" Font-Size="24px" Font-Bold="True" />
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox CssClass="form-control" ID="txtcontrasena" runat="server" TextMode="Password" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label Text="" ID="lblerror" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow>
                    <asp:TableCell Height="50px">
                        <asp:Button CssClass="btn-primary" Text="Iniciar Sesión" ID="btniniciosesion" runat="server" OnClick="btniniciosesion_Click" />
                    </asp:TableCell><asp:TableCell>
                        <asp:Button CssClass="btn-primary" Text="Recuperar Contraseña" ID="btnrecuperarcontrasena" runat="server" />
                    </asp:TableCell><asp:TableCell>
                        <asp:Button CssClass="btn-primary" Text="Registrate" ID="btnregistrarse" runat="server" OnClick="btnregistrarse_Click" />
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>

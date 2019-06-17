<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebApplication1.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">'
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cambiocontenido" runat="server">
    <div class="text-center">
            <asp:Label CssClass="text-center label-primary" Text="Registro Nuevo" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="50px" ForeColor="White" />
        </div>
        <asp:Table runat="server" CssClass="table-condensed" Height="143px" Width="450px" Style="margin-left: 400px; margin-top: 22px; margin-right: 68px;" CellPadding="1" CellSpacing="1">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblemail" Text="Correo Electronico" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator ID="requiereemail" runat="server" ErrorMessage="*El campo Correo Electronico es obligatorio" ControlToValidate="txtemail" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="textoemail" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="Correo no valido"
                        ForeColor="Red"
                        ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" Text="*">
                    </asp:RegularExpressionValidator>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblusuario" Text="Usuario" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtusuario" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="requiereusuario" runat="server" ErrorMessage="*El campo Usuario es obligatorio" ControlToValidate="txtusuario" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="letrasusuario" runat="server"
                        ControlToValidate="txtusuario" ErrorMessage="*El campo Usuario solo acepta letras"
                        ForeColor="Red"
                        ValidationExpression="^[A-Za-z]*$" Text="*">
                    </asp:RegularExpressionValidator>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblpass" Text="Contraseña" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="requierecontrasena" runat="server" ErrorMessage=" *El campo Contraseña es obligatorio" ControlToValidate="txtpass" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <%--<asp:RegularExpressionValidator ID="textopass" runat="server"
                        ControlToValidate="txtpass" ErrorMessage="*La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula y al menos una mayúscula.
                        Puede tener otros símbolos"
                        ForeColor="Red"
                        ValidationExpression="^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$" Text="*">
                    </asp:RegularExpressionValidator>--%>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblconfpass" Text="Confirmar Contraseña" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtconfpass" runat="server" CssClass="form-control" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="requiereconfirmar" runat="server" ErrorMessage=" *El campo Confirmar Contraseña es obligatorio" ControlToValidate="txtconfpass" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="compararcontrasena"
                        ControlToValidate="txtconfpass"
                        ControlToCompare="txtpass"
                        Type="String"
                        Operator="Equal"
                        Text="**"
                        ForeColor="Red"
                        runat="server" ErrorMessage="El campo Confirmar Contraseña debe ser igual que el campo Contraseña " />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblnombre" Text="Nombre" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="requierenombre" runat="server" ErrorMessage=" *El campo Nombre es obligatorio" ControlToValidate="txtnombre" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="textonombre" runat="server"
                        ControlToValidate="txtnombre" ErrorMessage="*El campo Nombre solo acepta letras"
                        ForeColor="Red"
                        ValidationExpression="^[A-Za-z]*$" Text="*">
                    </asp:RegularExpressionValidator>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblpaterno" Text="Apellido Paterno" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtpaterno" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="requierepaterno" runat="server" ErrorMessage=" *El campo Apellido Paterno es obligatorio" ControlToValidate="txtpaterno" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="textopaterno" runat="server"
                        ControlToValidate="txtpaterno" ErrorMessage="*El campo Apellido Paterno solo acepta letras"
                        ForeColor="Red"
                        ValidationExpression="^[A-Za-z]*$" Text="*">
                    </asp:RegularExpressionValidator>

                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblmaterno" Text="Apellido Materno" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtmaterno" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="requierematerno" runat="server" ErrorMessage=" *El campo Apellido Maternos es obligatorio" ControlToValidate="txtmaterno" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="textomaterno" runat="server"
                        ControlToValidate="txtmaterno" ErrorMessage="*El campo Apellido Materno solo acepta letras"
                        ForeColor="Red"
                        ValidationExpression="^[A-Za-z]*$" Text="*">
                    </asp:RegularExpressionValidator>

                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblnacimiento" Text="Fecha Nacimiento" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtnacimiento" runat="server" CssClass="form-control" TextMode="DateTime" OnTextChanged="txtnacimiento_TextChanged" AutoPostBack="True" />
                    
                    <asp:RequiredFieldValidator ID="requierenacimiento" runat="server" ErrorMessage=" *El campo Fecha Nacimiento es obligatorio" ControlToValidate="txtnacimiento" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="textonacimiento" runat="server"
                        ControlToValidate="txtnacimiento" ErrorMessage="*Formato de Fecha no valido"
                        ForeColor="Red"
                        ValidationExpression="^(?:3[01]|[12][0-9]|0?[1-9])([\-/.])(0?[1-9]|1[1-2])\1\d{4}$" Text="*">
                    </asp:RegularExpressionValidator>


                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEdad" Text="Edad" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtedad" runat="server" CssClass="form-control" type="number"/>
                    <asp:RequiredFieldValidator ID="requiereedad" runat="server" ErrorMessage=" *El campo Edad es obligatorio" ControlToValidate="txtedad" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbldireccion" Text="Dirección" runat="server" />
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" type="text" />
                    <asp:RequiredFieldValidator ID="requieredireccion" runat="server" ErrorMessage=" *El campo Dirección es obligatorio" ControlToValidate="txtdireccion" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbltelefono" Text="Telefono" runat="server" />

                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txttelefono" MaxLength="10" type="number" runat="server" CssClass="form-control" TextMode="Phone" />
                    <asp:RequiredFieldValidator ID="requieretelefono" runat="server" ErrorMessage=" *El campo Telefono es obligatorio" ControlToValidate="txttelefono" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                </asp:TableCell></asp:TableRow><asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Button ID="btnregistrar" Text="Registrar" runat="server" OnClick="btnregistrar_Click" CssClass="btn-primary" />
                </asp:TableCell><asp:TableCell>
                    <asp:Button ID="btncancelar" Text="Cancelar" runat="server" OnClick="btncancelar_Click" CssClass="btn-primary" />
                </asp:TableCell></asp:TableFooterRow></asp:Table><asp:ValidationSummary
            ID="valSum"
            CssClass="alert-danger text-center"
            ShowSummary="true"
            ShowValidationErrors="true"
            runat="server"
            HeaderText="Verificar los siguientes errores:"
            Font-Names="Calibri" DisplayMode="List" Font-Size="Large" Font-Overline="True" Font-Strikeout="False" />
</asp:Content>

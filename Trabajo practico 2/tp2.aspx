<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tp2.aspx.cs" Inherits="Trabajo_practico_2.tp2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 65%;
            height: 383px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 438px;
        }
        .auto-style6 {
            width: 282px;
        }
        .auto-style8 {
            width: 282px;
            height: 42px;
        }
        .auto-style10 {
            width: 438px;
            height: 42px;
        }
        .auto-style12 {
            margin-bottom: 0px;
        }
        .auto-style15 {
            width: 25%;
            height: 128px;
        }
        .auto-style16 {
            height: 63px;
        }
        .auto-style17 {
            width: 306px;
        }
        .auto-style18 {
            width: 306px;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblTitulo" runat="server" Text="Localidades"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Nombre de localidad:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtLocalidad" runat="server" ValidationGroup="Grupo1"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Error Ingrese localidad" ValidationGroup="Grupo1">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Error ingrese una localidad valida" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="Grupo1">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" CssClass="auto-style1" OnClick="btnGuardarLocalidad_Click" Text="Guardar localidad" ValidationGroup="Grupo1" Width="123px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Label ID="lblTituloUsuarios" runat="server" Text="Usuarios"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Nombre usuario:&nbsp; </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Error no ingreso un nombre de usuario" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Error ingrese un nombre valido" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Contraseña: </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Error no ingreso contraseña" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Repetir Contraseña:&nbsp; </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtContraseña2" runat="server" TextMode="Password" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtContraseña2" ErrorMessage="Error contraseña incorrecta" ValidationGroup="Grupo2">*</asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvContraseña2" runat="server" ControlToValidate="txtContraseña2" ErrorMessage="Error no ingreso contraseña" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Correo electronico: </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Error no ingreso un correo electronico" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Error no ingreso un correo" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">CP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtCP" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:CompareValidator ID="cvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Error no ingreso un CP valido" Operator="GreaterThan" Type="Integer" ValidationGroup="Grupo2" ValueToCompare="0">*</asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Error no ingreso CP" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Localidades: </td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="Grupo2">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Error no selecciono una localidad" InitialValue="--Seleccionar localidad--" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:Button ID="btnGuardarUsuario" runat="server" OnClick="btnGuardarUsuario_Click" Text="Guardar Usuario" ValidationGroup="Grupo2" Width="125px" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnInicio" runat="server" OnClick="btnInicio_Click" Text="Ir a Inicio.aspx" ValidationGroup="Grupo3" Width="108px" />
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="auto-style15">
                <tr>
                    <td class="auto-style16">
                        <asp:ValidationSummary ID="vsGrupo1" runat="server" CssClass="auto-style12" Height="38px" ValidationGroup="Grupo1" Width="269px" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="vsGrupo2" runat="server" ValidationGroup="Grupo2" ForeColor="Red" />
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>

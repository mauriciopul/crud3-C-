<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="front_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD 3</title>
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }

        .auto-style2 {
            width: 153px;
            height: 23px;
        }

        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style5 {
            width: 219px;
        }

        .auto-style6 {
            width: 219px;
            height: 23px;
        }

        .auto-style7 {
            width: 175px;
        }
        .auto-style8 {
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">

                <tr>
                    <td class="auto-style1">Cedula:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rbtLista" runat="server" RepeatDirection="Horizontal" Height="18px" Width="245px" AutoPostBack="True" OnSelectedIndexChanged="rbtLista_SelectedIndexChanged">
                            <asp:ListItem Value="rbtNuevo">Nuevo</asp:ListItem>
                            <asp:ListItem Value="rbtEditar">Editar</asp:ListItem>
                            <asp:ListItem Value="rbtEliminar">Eliminar</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">Nombre:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">Fecha Nacimiento</td>
                    <td class="auto-style5">Año:<asp:TextBox ID="txtAño" runat="server" Width="30px"></asp:TextBox>
                        Mes:<asp:TextBox ID="txtMes" runat="server" Width="20px"></asp:TextBox>
                        Dia:<asp:TextBox ID="txtDia" runat="server" Width="20px"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">Telefono:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnInsertar" runat="server" Text="Insertar" CssClass="auto-style4" OnClick="btnInsertar_Click" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="auto-style4" OnClick="btnInsertar_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="auto-style4" OnClick="btnInsertar_Click" />
                    </td>


                </tr>
            </table>
        </div>
        <br />
        <br />
        Resultado:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblInscripcion" runat="server"></asp:Label>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPI.master" AutoEventWireup="true" CodeFile="~/Controller/Registro.aspx.cs" Inherits="Vista_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 159px;
        }
        .auto-style10 {
            font-size: large;
            color: #000000;
            font-weight: bold;
            width: 413px;
            height: 47px;
        }
        .auto-style20 {
        width: 444px;
    }
        .auto-style21 {
        height: 26px;
        width: 444px;
    }
        .auto-style26 {
            width: 157px;
        }
        .auto-style27 {
            width: 157px;
            height: 26px;
        }
        .auto-style28 {
            width: 413px;
        }
        .auto-style29 {
            height: 26px;
            width: 413px;
        }
        .auto-style32 {
            font-size: large;
            color: #000000;
            font-weight: bold;
            width: 413px;
            height: 6px;
        }
        .auto-style36 {
            height: 6px;
        }
        .auto-style39 {
        height: 26px;
        width: 116px;
    }
    .auto-style40 {
            width: 413px;
            text-align: left;
        }
    .auto-style41 {
            width: 413px;
            height: 26px;
            text-align: left;
        }
        .auto-style43 {
            width: 157px;
            height: 6px;
        }
        .auto-style44 {
            height: 6px;
            width: 444px;
        }
        .auto-style47 {
            width: 413px;
            height: 5px;
            text-align: left;
        }
        .auto-style48 {
            width: 157px;
            height: 5px;
        }
        .auto-style49 {
        height: 5px;
        width: 444px;
    }
        .auto-style50 {
            height: 5px;
        }
        .auto-style52 {
            width: 413px;
            height: 4px;
        }
        .auto-style53 {
            width: 157px;
            height: 4px;
        }
        .auto-style54 {
            width: 444px;
            height: 4px;
        }
        .auto-style55 {
            height: 4px;
        width: 116px;
    }
        .auto-style56 {
            width: 413px;
            height: 5px;
        }
    .auto-style57 {
        width: 116px;
    }
    .auto-style58 {
        height: 6px;
        width: 116px;
    }
    .auto-style59 {
        height: 5px;
        width: 116px;
    }
        .auto-style61 {
            font-size: large;
            color: #000000;
            font-weight: bold;
            width: 159px;
            height: 47px;
        }
        .auto-style62 {
            font-size: large;
            color: #000000;
            font-weight: bold;
            width: 159px;
            height: 6px;
        }
        .auto-style63 {
            width: 159px;
            text-align: left;
        }
        .auto-style64 {
            width: 159px;
            height: 5px;
            text-align: left;
        }
        .auto-style65 {
            width: 159px;
            height: 26px;
            text-align: left;
        }
        .auto-style66 {
            width: 159px;
        }
        .auto-style67 {
            width: 159px;
            height: 26px;
        }
        .auto-style68 {
            width: 159px;
            height: 4px;
        }
        .auto-style69 {
            width: 159px;
            height: 5px;
        }
        .auto-style70 {
            width: 157px;
            height: 47px;
        }
        .auto-style71 {
            width: 444px;
            height: 47px;
        }
        .auto-style72 {
            width: 116px;
            height: 47px;
        }
        .auto-style73 {
            text-align: center;
            height: 47px;
        }
        .auto-style74 {
            width: 159px;
            text-align: left;
            height: 62px;
        }
        .auto-style75 {
            width: 413px;
            text-align: left;
            height: 62px;
        }
        .auto-style76 {
            width: 157px;
            height: 62px;
        }
        .auto-style82 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="12px" ForeColor="Black" NavigateUrl="~/Vista/Inicio.aspx">Inicio</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink4" runat="server" Font-Size="12px" ForeColor="Black" NavigateUrl="~/Vista/IniciarS.aspx">Iniciar sesión</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink5" runat="server" Font-Size="12px" ForeColor="Black" NavigateUrl="~/Vista/Registro.aspx">Registro</asp:HyperLink>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:Label ID="L_R" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="REGISTRO"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style61">
                </td>
            <td class="auto-style10">
                <asp:Label ID="L_R0" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="NOMBRE"></asp:Label>
            </td>
            <td class="auto-style70"></td>
            <td class="auto-style71">
                &nbsp;</td>
            <td class="auto-style72"></td>
            <td class="auto-style73">
                </td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style32"></td>
            <td class="auto-style43"></td>
            <td class="auto-style44"></td>
            <td class="auto-style58"></td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style74">
                </td>
            <td class="auto-style75">
                <asp:TextBox ID="TB_IN" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="NOMBRE" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_IN" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Size="Small"  ControlToValidate="TB_IN" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos  ni espacios" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style76">
                </td>
            <td class="auto-style20" rowspan="3">
                &nbsp;</td>
            <td colspan="2" rowspan="5">&nbsp;<br />
&nbsp;<br />
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style64">
                &nbsp;</td>
            <td class="auto-style47">
            </td>
            <td class="auto-style48"></td>
        </tr>
        <tr>
            <td class="auto-style65">
                &nbsp;</td>
            <td class="auto-style41">
                <asp:TextBox ID="TB_IA" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="APELLIDO" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_IA" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TB_IA" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos  ni espacios" ForeColor="Red" ValidationExpression="[A-Za-z]*" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style63">
                &nbsp;</td>
            <td class="auto-style40">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style65">
                &nbsp;</td>
            <td class="auto-style41">
                <asp:Label ID="L_R3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="DATOS PERSONALES"></asp:Label>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style67">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style27">
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style39"></td>
            <td rowspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="TB_IE" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="EDAD" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_IE" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator id="rango1" runat="server" ControlToValidate="TB_IE" MinimumValue="18" MaximumValue="100" Type="Integer" Text="18-100" Font-Size="small" ForeColor="Red" />
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style68">
                </td>
            <td class="auto-style52">
            </td>
            <td class="auto-style53">
                </td>
            <td class="auto-style54"></td>
            <td class="auto-style55"></td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="TB_IC" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="NUMERO CELULAR" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_IC" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TB_IC" Display="Dynamic" ErrorMessage="Número de celular inválido (7 a 12 dígitos)" ForeColor="Red" ValidationExpression="\d{7,12}" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">
                &nbsp;</td>
            <td class="auto-style56">
                </td>
            <td class="auto-style48">
                </td>
            <td class="auto-style49"></td>
            <td class="auto-style59"></td>
            <td class="auto-style50"></td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="TB_ICE" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="CORREO ELECTRONICO" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_ICE" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TB_ICE" Display="Dynamic" ErrorMessage="Dirección de correo electrónico inválida" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:Label ID="L_R4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="DATOS DE ACCESO"></asp:Label>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="TB_DI" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="NUMERO DOCUMENTO DE IDENTIDAD" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_DI" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TB_DI" Display="Dynamic" ErrorMessage="Documento de identidad inválido (8 a 12 dígitos)" ForeColor="Red" ValidationExpression="\d{8,12}" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style67">
                </td>
            <td class="auto-style29">
                </td>
            <td class="auto-style27">
                </td>
            <td class="auto-style21"></td>
            <td class="auto-style39"></td>
            <td class="auto-style82"></td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="TB_C" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="CONTRASEÑA" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_IC" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TB_C" Display="Dynamic" ErrorMessage="Mínimo 6 dígitos" ForeColor="Red" ValidationExpression="\w{6,30}" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="B_R" runat="server" BackColor="Black" ForeColor="White" Height="39px" Text="REGISTRARSE" Width="253px" OnClick="B_R_Click" />
            </td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style66">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


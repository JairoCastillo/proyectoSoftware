<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPI.master" AutoEventWireup="true" CodeFile="~/Controller/IniciarS.aspx.cs" Inherits="Vista_IniciarS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 84px;
            background-color: white;
        }
        .auto-style11 {
            width: 159px;
        }
        .auto-style13 {
            width: 159px;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            height: 84px;
            width: 159px;
        }
        .auto-style16 {
            font-size:12px;
            width: 375px;
        }
        .auto-style17 {
            font-size: 15px;
            height: 26px;
            width: 375px;
        }
        .auto-style17:hover {
            font-size: 16px;
            text-decoration: underline;
            height: 26px;
            width: 245px;
        }
        .auto-style18 {
            width: 375px;
            height: 84px;
        }
        .auto-style22 {
            height: 84px;
            width: 184px;
        }
        .auto-style23 {
            width: 159px;
            height: 44px;
        }
        .auto-style24 {
            width: 375px;
            height: 44px;
        }
        .auto-style25 {
            height: 44px;
        }
        .auto-style26 {
            width: 159px;
            height: 5px;
        }
        .auto-style27 {
            width: 375px;
            height: 5px;
        }
        .auto-style28 {
            height: 5px;
        }
        .auto-style30 {
            width: 375px;
            height: 14px;
        }
        .auto-style31 {
            width: 159px;
            height: 14px;
        }
        .auto-style32 {
            height: 14px;
        }
        .auto-style34 {
            font-size: 15px;
            height: 6px;
            width: 375px;
        }
        .auto-style35 {
            width: 159px;
            height: 6px;
        }
        .auto-style36 {
            height: 6px;
        }
        .auto-style37 {
            text-align: center;
            width: 184px;
        }
        .auto-style38 {
            width: 184px;
        }
        .auto-style39 {
            height: 26px;
            width: 184px;
        }
        .auto-style40 {
            height: 44px;
            width: 184px;
        }
        .auto-style41 {
            height: 14px;
            width: 184px;
        }
        .auto-style42 {
            height: 6px;
            width: 184px;
        }
        .auto-style43 {
            height: 5px;
            width: 184px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="12px" ForeColor="Black" NavigateUrl="~/Vista/Inicio.aspx">Inicio</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink4" runat="server" Font-Size="12px" ForeColor="Black" NavigateUrl="~/Vista/IniciarS.aspx">Iniciar sesión</asp:HyperLink>
            </td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="INICIAR SESIÓN"></asp:Label>
            </td>
            <td class="auto-style22"></td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black" Text="CREAR CUENTA"></asp:Label>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style39"></td>
            <td rowspan="2"><span style="color: rgb(0, 0, 0); font-family: adihausregular, Arial, Helvetica, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: 0.25px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Crear una cuenta es fácil. Introduce tu documento de identidad, diligencia el formulario de la página siguiente y disfruta de los beneficios de tener una cuenta.</span></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style16">
            </td>
            <td class="auto-style38"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:TextBox ID="TB_DI" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="DOCUMENTO DE IDENTIDAD" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_DI" runat="server" ControlToValidate="TB_DI" ErrorMessage="Documento de identidad es requerido" Font-Size="Small" ForeColor="Red" ></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style25">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="BENEFICIOS DE USUARIOS REGISTRADOS:"></asp:Label>
            </td>
            <td class="auto-style25"></td>
        </tr> 
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style30">
                </td>
            <td class="auto-style41"></td>
            <td rowspan="2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="*"></asp:Label>
&nbsp;Realizar reservas de Inmuebles.</td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style34">
                <asp:TextBox ID="TB_P" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="50px"  Width="344px" placeholder="CONTRASEÑA" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_P" runat="server" ControlToValidate="TB_P" ErrorMessage="Contraseña es requerida" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style42"></td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style27"></td>
            <td class="auto-style43"></td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="B_IS" runat="server" BackColor="Black" ForeColor="White" Height="39px" Text="INICIAR SESIÓN" Width="344px" OnClick="B_IS_Click" />
            </td>
            <td class="auto-style38">&nbsp;</td>
            <td>
                <asp:Button ID="B_R" runat="server" BackColor="Black" ForeColor="White" Height="39px" Text="REGISTRARSE" Width="344px" OnClick="B_R_Click"  CausesValidation="False"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


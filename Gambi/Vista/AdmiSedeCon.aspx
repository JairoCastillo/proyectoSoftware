<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPAS.master" AutoEventWireup="true" CodeFile="~/Controller/AdmiSedeCon.aspx.cs" Inherits="Vista_AdmiSedeCon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            text-align: center;
            height: 39px;
        }
        .auto-style22 {
            height: 39px;
            width: 159px;
            text-align: center;
            font-size: 15px;
            background-color: #FFFFFF;
        }
        .auto-style23 {
            height: 10px;
        }
        .auto-style24 {
            width: 216px;
            height: 50px;
        }
        .auto-style25 {
            width: 83px;
            height: 50px;
        }
        .auto-style26 {
            height: 50px;
        }
        .auto-style27 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style11" colspan="3">
                    
                <asp:Label ID="L_A" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Consulta arrendatario y estudiante por documento de identidad"></asp:Label>
                    
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td colspan="3" class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td colspan="3" class="auto-style23"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" Text="Escriba la busqueda:"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TB_F" runat="server" Width="145px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_F" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="consulta"></asp:RequiredFieldValidator>
            </td>
            <td class="text-center">
                <asp:linkbutton ID="LB_C" CssClass="text-dark" runat="server" Width="145px" BorderColor="Black" BorderStyle="Double" ValidationGroup="consulta" OnClick="LB_C_Click">Consultar</asp:linkbutton>
                </td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style26" colspan="3">
                <asp:GridView ID="GV_C" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Doc_identidad" HeaderText="Documento identidad" SortExpression="Doc_identidad" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Num_Cel" HeaderText="Numero celular" SortExpression="Num_Cel" />
                        <asp:BoundField DataField="Correo_Elec" HeaderText="Correo electronico" SortExpression="Correo_Elec" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


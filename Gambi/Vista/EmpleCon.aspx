<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPE.master" AutoEventWireup="true" CodeFile="~/Controller/EmpleCon.aspx.cs" Inherits="Vista_EmpleCon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
            height: 494px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style21">
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style11" colspan="3" style="text-align: center">
                    
                <asp:Label ID="L_A" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Consulta estudiante por documento de identidad"></asp:Label>
                    
            </td>
            <td class="auto-style22"></td>
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_F" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="text-center">
                <asp:linkbutton ID="LB_C" CssClass="text-dark" runat="server" Width="145px" BorderColor="Black" ValidationGroup="a" BorderStyle="Double" OnClick="LB_C_Click">Consultar</asp:linkbutton>
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
                <asp:GridView ID="GV_C" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" PageSize="5" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Doc_identidad" HeaderText="Documento identidad" SortExpression="Doc_identidad" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Num_Cel" HeaderText="Numero celular" SortExpression="Num_Cel" />
                        <asp:BoundField DataField="Correo_Elec" HeaderText="Correo electronico" SortExpression="Correo_Elec" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
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




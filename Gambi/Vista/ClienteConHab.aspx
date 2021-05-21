<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPC.master" AutoEventWireup="true" CodeFile="~/Controller/ClienteConHab.aspx.cs" Inherits="Vista_ClienteCon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style22 {
        width: 1033px;
        background-color: #FFFFFF;
        text-align: center;
        height: 50px;
        font-size: 15px;
    }
    .auto-style23 {
        width: 1131px;
        background-color: #FFFFFF;
        text-align: center;
        height: 50px;
        font-size: 15px;
    }
    .auto-style24 {
        width: 1131px;
        background-color: #FFFFFF;
        text-align: center;
        height: 59px;
        font-size: 15px;
    }
    .auto-style25 {
        width: 1131px;
        background-color: #FFFFFF;
        text-align: left;
        height: 50px;
        font-size: 15px;
    }
    .auto-style26 {
        width: 1131px;
        background-color: #FFFFFF;
        text-align: right;
        height: 50px;
        font-size: 15px;
    }
        .auto-style29 {
            width: 1055px;
            background-color: #FFFFFF;
            text-align: left;
            height: 67px;
            font-size: 15px;
        }
        .auto-style30 {
            width: 1055px;
            background-color: #FFFFFF;
            text-align: center;
            height: 22px;
            font-size: 15px;
        }
        .auto-style32 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: right;
            height: 67px;
            font-size: 15px;
        }
        .auto-style33 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: left;
            height: 67px;
            font-size: 15px;
        }
        .auto-style34 {
            text-align: center;
            height: 67px;
            width: 193px;
        }
        .auto-style35 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: right;
            height: 22px;
            font-size: 15px;
        }
        .auto-style36 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: left;
            height: 22px;
            font-size: 15px;
        }
        .auto-style37 {
            text-align: center;
            height: 22px;
            width: 193px;
        }
        .auto-style38 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: center;
            height: 31px;
            font-size: 15px;
        }
        .auto-style39 {
            width: 1131px;
            background-color: #FFFFFF;
            text-align: center;
            height: 62px;
            font-size: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td>&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style11" colspan="3" style="text-align: center">
                    
                <asp:Label ID="L_A" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Consultas de reservas de inmuebles"></asp:Label>
                    
            </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td colspan="3" class="auto-style23"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td colspan="3" class="auto-style25">
                <asp:CheckBox ID="CB_G" runat="server" Text="Consulta general" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CB_E" runat="server" Text="Consulta específica " />
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td colspan="3" class="auto-style39">
                <asp:Button ID="B_A" runat="server" OnClick="B_A_Click" Text="Avanzar" />
            </td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td colspan="3" class="auto-style38">
                <asp:linkbutton ID="LB_CG" CssClass="text-dark" runat="server" Width="423px" BorderColor="Black"  BorderStyle="Double" Visible="False" OnClick="LB_CG_Click">CONSULTA GENERAL</asp:linkbutton>
                </td>
            <td class="auto-style38"></td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style29">
                <asp:Label ID="Label3" runat="server" Text="Escriba la busqueda:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:TextBox ID="TB_F" runat="server" Width="145px" TextMode="Number" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_F" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="a"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style34">
                <asp:linkbutton ID="LB_C" CssClass="text-dark" runat="server" Width="145px" BorderColor="Black" ValidationGroup="a" BorderStyle="Double" OnClick="LB_C_Click" Visible="False">Consultar</asp:linkbutton>
                </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style30">
                </td>
            <td class="auto-style36">
                </td>
            <td class="auto-style37">
                </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style26" colspan="3">
                    <asp:GridView ID="GV_C" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="Id_reserva" HeaderText="Id reserva" SortExpression="Id_reserva" />
                            <asp:BoundField DataField="Fecha_ent" HeaderText="Fecha entrada" SortExpression="Fecha_ent" />
                            <asp:BoundField DataField="Fecha_sal" HeaderText="Fecha salida" SortExpression="Fecha_sal" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            <asp:BoundField DataField="Servicio" HeaderText="Servicio" SortExpression="Servicio" />
                            <asp:BoundField DataField="Doc_identidad" HeaderText="Documento identidad" SortExpression="Doc_identidad" />
                            <asp:BoundField DataField="Sede" HeaderText="Sede" SortExpression="Sede" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                        <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="¡Actualmente no hay reservas con su documento de identidad!"></asp:Label>
                    </EmptyDataTemplate>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPI.master" AutoEventWireup="true" CodeFile="~/Controller/Habitaciones.aspx.cs" Inherits="Vista_Habitaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #FEFFFF;
        }
        .auto-style11 {
            width: 165px;
            font-size: 18px;
            text-align: center;
            height: 83px;
            background-color: #FEFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="text-center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Inmuebles"></asp:Label>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="En el siguiente espacio podrá realizar la búsqueda de los inmuebles:"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11">
                <asp:DropDownList ID="DDL_A" runat="server" DataSourceID="ODS_AH" DataTextField="Tipo_habitacion" DataValueField="Id_habitacion" Width="179px">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_AH" runat="server" SelectMethod="leerHabitacion" TypeName="DHabitaciones"></asp:ObjectDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar características" />
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">
                <asp:GridView ID="GV_A" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" PageSize="7">
                    <Columns>
                        <asp:BoundField DataField="Tipo_hab" HeaderText="Tipo habitación" SortExpression="Tipo_hab">
                        </asp:BoundField>
                        <asp:BoundField DataField="Can_per" HeaderText="Cantidad personas" SortExpression="Can_per" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                        <asp:BoundField DataField="Nombre_sede" HeaderText="Sede" SortExpression="Nombre_sede" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="¡Seleccione uno de los campos y posteriormente pulse el botón!"></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        </table>
</asp:Content>




<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPAS.master" AutoEventWireup="true" CodeFile="~/Controller/AdmiSedeHab.aspx.cs" Inherits="Vista_AdmiSedeHab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="text-center">
                <asp:Label ID="L_A" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Inmuebles de"></asp:Label>
            &nbsp;<asp:Label ID="L_AS" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="text-center">
            <asp:GridView ID="GV_H" runat="server" CellPadding="4" DataKeyNames="Id_sede_habitacion" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" AutoGenerateColumns="False" DataSourceID="ODS_Habitaciones_sede" EmptyDataText="¡Actualmente no se encuentra ningún dato registrado, por favor realice el siguiente registro!">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Id" SortExpression="Id_sede_habitacion">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_sede_habitacion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tipo habitacion" SortExpression="Tipo_hab">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Tipo_hab") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad personas" SortExpression="Can_per">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Can_per") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Disponibilidad" SortExpression="Disponibilidad">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Disponibilidad") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio" SortExpression="Precio">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_EP" runat="server" Text='<%# Bind("Precio") %>' TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_C0" runat="server" ControlToValidate="TB_EP" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <asp:RangeValidator ID="R_PP" runat="server" ControlToValidate="TB_EP" Font-Size="small" ForeColor="Red" MaximumValue="999999" MinimumValue="25000" Text="Valor inválido (25000-999999)" Type="Integer" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sede" SortExpression="Nombre_sede">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Nombre_sede") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
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
                <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="¡Actualmente no se encuentra ningún dato registrado, por favor realice el siguiente registro!"></asp:Label>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:ObjectDataSource ID="ODS_Habitaciones_sede" runat="server" DataObjectTypeName="EHabSede" DeleteMethod="eliminarhabsede" SelectMethod="obtenerhabsede" TypeName="DHabSede" UpdateMethod="modificarhabsede">
                <SelectParameters>
                    <asp:SessionParameter Name="doc" SessionField="doc_identidad" Type="Int64" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Tipo de habitación:"></asp:Label>
&nbsp;
            <asp:DropDownList ID="DDL_A" runat="server"  DataTextField="Tipo_habitacion" DataValueField="Id_habitacion" DataSourceID="ODS_Habitaciones">
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ODS_Habitaciones" runat="server" SelectMethod="leerHabitacion" TypeName="DHabitaciones"></asp:ObjectDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Text="¿Cuantas veces desea agregarla?"></asp:Label>
&nbsp;
            <asp:TextBox ID="TB_C" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_C" runat="server" ControlToValidate="TB_C" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        &nbsp;<asp:RangeValidator id="rango1" runat="server" ControlToValidate="TB_C" MinimumValue="1" MaximumValue="10" Type="Integer" Text="1-10" Font-Size="small" ForeColor="Red" />
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">
            <asp:Label ID="Label3" runat="server" Text="Precio:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TB_P" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_C0" runat="server" ControlToValidate="TB_P" ErrorMessage="*" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
        &nbsp;<asp:RangeValidator id="R_PP" runat="server" ControlToValidate="TB_P" MinimumValue="25000" MaximumValue="999999" Type="Integer" Text="Valor inválido (25000-999999)" Font-Size="small" ForeColor="Red" />
        </td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="B_A" runat="server" CssClass="auto-style22" Text="Agregar" OnClick="B_A_Click" ValidationGroup="a"/>
        </td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


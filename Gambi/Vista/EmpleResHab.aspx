<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPE.master" AutoEventWireup="true" CodeFile="~/Controller/EmpleResHab.aspx.cs" Inherits="Vista_EmpleResHab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
            height: 26px;
        }
        .auto-style22 {
            text-align: left;
            height: 26px;
        }
        .auto-style23 {
            margin-left: 39;
        }
        .auto-style24 {
            margin-left: 16px;
        }
        .auto-style25 {
            margin-left: 57px;
        }
        .auto-style26 {
            margin-left: 158px;
        }
        .auto-style27 {
            margin-left: 48px;
        }
        .auto-style28 {
            margin-left: 39;
            text-align: center;
            height: 26px;
        }
        .auto-style29 {
            height: 26px;
        }
        .auto-style30 {
            margin-left: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Inmuebles disponibles"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Inmuebles reservadas"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" Width="342px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ODS_HD" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" PageSize="7" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Número habitación" SortExpression="Id_sede_habitacion">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Id_sede_habitacion") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Id_sede_habitacion") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tipo habitación" SortExpression="Tipo_hab">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tipo_hab") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tipo_hab") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cantidad personas" SortExpression="Can_per">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Can_per") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Can_per") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio" SortExpression="Precio">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Precio") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sede" SortExpression="Nombre_sede">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Nombre_sede") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Nombre_sede") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Reservar" CommandArgument='<%# Bind("Id_sede_habitacion") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
        <EmptyDataTemplate>
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="¡Actualmente no se encuentran habitaciones disponibles!"></asp:Label>
                    </EmptyDataTemplate>
    </asp:GridView>
                <asp:ObjectDataSource ID="ODS_HD" runat="server" SelectMethod="obtenerhabsededis" TypeName="DHabSede">
                    <SelectParameters>
                        <asp:SessionParameter Name="doc" SessionField="doc_identidad" Type="Int64" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                <div class="text-center">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" Width="342px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ODS_HND" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" PageSize="7" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Número habitación" SortExpression="Id_sede_habitacion">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Id_sede_habitacion") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Id_sede_habitacion") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tipo habitación" SortExpression="Tipo_hab">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Tipo_hab") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Tipo_hab") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cantidad personas" SortExpression="Can_per">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Can_per") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Can_per") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio" SortExpression="Precio">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Precio") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("Precio") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sede" SortExpression="Nombre_sede">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Nombre_sede") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("Nombre_sede") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Entregar" CommandArgument='<%# Bind("Id_sede_habitacion") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
        <EmptyDataTemplate>
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="¡Actualmente no se encuentran habitaciones reservadas!"></asp:Label>
                    </EmptyDataTemplate>
    </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="ODS_HND" runat="server" SelectMethod="obtenerhabsedenodis" TypeName="DHabSede">
                    <SelectParameters>
                        <asp:SessionParameter Name="doc" SessionField="doc_identidad" Type="Int64" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21" colspan="2">
                <asp:Label ID="Label18" runat="server" Text="Entregar reserva" Visible="False" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">
                <br />
                <asp:Label ID="Label19" runat="server" Text="Documento identidad" Visible="False"></asp:Label>
                &nbsp;<asp:TextBox ID="TB_cedula0" runat="server" Visible="False" CssClass="auto-style24" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_ER" runat="server" ControlToValidate="TB_cedula0" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_DI0" runat="server" ControlToValidate="TB_cedula0" Display="Dynamic" ErrorMessage="Documento de identidad inválido" ForeColor="Red" ValidationGroup="1" ValidationExpression="\d{8,12}"  Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Button ID="B_E" runat="server" Text="Entregar" Width="168px" ValidationGroup="1" OnClick="B_E_Click" Visible="False"/>
                <asp:Button ID="B_C" runat="server" CssClass="auto-style30" OnClick="B_C_Click" Text="Cancelar" Visible="False" Width="154px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21" colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Seleccione la fecha de reserva" Visible="False" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="Label8" runat="server" Text="Fecha Inicio" Visible="False" Font-Bold="True"></asp:Label>
                <asp:Calendar ID="C_fecha_inicio" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" Width="350px" CssClass="auto-style27">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td class="text-center">
                <asp:Label ID="Label9" runat="server" Text="Fecha Fin" Visible="False" Font-Bold="True"></asp:Label>
                <div class="text-center">
                <asp:Calendar ID="C_fecha_fin" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" Width="350px" CssClass="auto-style26">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">
                </td>
            <td class="auto-style22">
                <asp:Label ID="Label10" runat="server" Text="Documento identidad" Visible="False"></asp:Label>
                <asp:TextBox ID="TB_cedula" runat="server" Visible="False" CssClass="auto-style24" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_cedula" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_DI" runat="server" ControlToValidate="TB_cedula" Display="Dynamic" ErrorMessage="Documento de identidad inválido" ForeColor="Red" ValidationExpression="\d{8,12}" Font-Size="Small"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style29">
                <asp:Button ID="BReservar" runat="server" OnClick="BReservar_Click" ValidationGroup="validarRegistro" Text="Reservar" Visible="False" Width="174px" />
                <asp:Button ID="BCancelar" runat="server" OnClick="BCancelar_Click" Text="Cancelar" Visible="False" CssClass="auto-style25" Width="154px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


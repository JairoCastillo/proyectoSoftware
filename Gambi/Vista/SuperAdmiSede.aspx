<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPA.master" AutoEventWireup="true" CodeFile="~/Controller/SuperAdmiSede.aspx.cs" Inherits="Vista_SuperAdmiSede" %>

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
                <asp:Label ID="L_S" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Sedes de CundiHouse"></asp:Label>
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
                <asp:GridView ID="GV_S" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id_sede" DataSourceID="ODS_S" ForeColor="Black" GridLines="None" HorizontalAlign="Center" OnRowDataBound="GV_S_RowDataBound" PageSize="5" OnRowUpdating="GV_S_RowUpdating">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_EN" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_N" runat="server" ControlToValidate="TB_EN" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_EN" runat="server" ControlToValidate="TB_EN" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion" SortExpression="Direccion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ED" runat="server" Text='<%# Bind("Direccion") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ED" runat="server" ControlToValidate="TB_ED" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Direccion") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" Width="160px" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono" SortExpression="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ET" runat="server" Text='<%# Bind("Telefono") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ET" runat="server" ControlToValidate="TB_ET" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_ET" runat="server" ControlToValidate="TB_ET" Display="Dynamic" ErrorMessage="Número de celular inválido" Font-Size="Small" ForeColor="Red" ValidationExpression="\d{7,12}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="160px" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre administrador" SortExpression="Nombre_admi">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_AS" runat="server" DataTextField="Nombre" DataValueField="Doc_identidad">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Nombre_admi") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="¡Actualmente no se encuentra ningún dato registrado, por favor realice el siguiente registro!"></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_S" runat="server" DataObjectTypeName="ESede" DeleteMethod="eliminarsede" SelectMethod="obtenerSe" TypeName="DSede" UpdateMethod="modificarsede"></asp:ObjectDataSource>
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
            <td class="text-center">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="REGISTRO SEDE"></asp:Label>
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
            <td class="text-center">
            <asp:Label ID="Label6" runat="server" Text="NOMBRE"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_IN" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="NOMBRE" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_N" runat="server" ControlToValidate="TB_IN" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_A" runat="server" Font-Size="Small"  ControlToValidate="TB_IN" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
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
            <td class="text-center">
            <asp:Label ID="Label8" runat="server" Text="DIRECCION"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_D" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="DIRECCION" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_N0" runat="server" ControlToValidate="TB_D" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
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
            <td class="text-center">
            <asp:Label ID="Label9" runat="server" Text="TELEFONO"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_T" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="TELEFONO" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_N1" runat="server" ControlToValidate="TB_T" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_NC" runat="server" ControlToValidate="TB_T" Display="Dynamic" ErrorMessage="Número de celular inválido" ForeColor="Red" ValidationExpression="\d{7,12}" Font-Size="Small"></asp:RegularExpressionValidator>
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
            <td class="text-center">
            <asp:Label ID="ADMINISTRADOR" runat="server" Text="ADMINISTRADOR"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:DropDownList ID="DDL_AS" runat="server" DataSourceID="ODS_AS" DataTextField="Nombre" DataValueField="Doc_identidad">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_AS" runat="server" SelectMethod="obtenerua" TypeName="DUsuario"></asp:ObjectDataSource>
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
            <td class="text-center">
                <asp:Button ID="B_R" runat="server" Text="Registrar" ValidationGroup="validarRegistro" OnClick="B_R_Click"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


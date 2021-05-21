<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPC.master" AutoEventWireup="true" CodeFile="~/Controller/ClienteInicio.aspx.cs" Inherits="Vista_ClienteInicio" %>

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
                <asp:Label ID="L_S" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Información personal"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style23"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GV_IP" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Doc_identidad" SelectMethod="GV_IP_GetData" UpdateMethod="GV_IP_UpdateItem" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:TemplateField HeaderText="Documento identidad" SortExpression="Doc_identidad">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Doc_identidad") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtEditNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_N" runat="server" ControlToValidate="TxtEditNombre" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_N" runat="server" ControlToValidate="TxtEditNombre" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido" SortExpression="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_A" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_A" runat="server" ControlToValidate="TB_A" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_A" runat="server" ControlToValidate="TB_A" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edad" SortExpression="Edad">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_E" runat="server" Text='<%# Bind("Edad") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_E" runat="server" ControlToValidate="TB_E" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RangeValidator ID="rango1" runat="server" ControlToValidate="TB_E" Font-Size="small" ForeColor="Red" MaximumValue="100" MinimumValue="18" Text="18-100" Type="Integer" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Edad") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Numero celular" SortExpression="Num_Cel">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_NC" runat="server" Text='<%# Bind("Num_Cel") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_NC" runat="server" ControlToValidate="TB_NC" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_NC" runat="server" ControlToValidate="TB_NC" Display="Dynamic" ErrorMessage="Número de celular inválido" Font-Size="Small" ForeColor="Red" ValidationExpression="\d{7,12}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Num_Cel") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo electronico" SortExpression="Correo_Elec">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_CE" runat="server" Text='<%# Bind("Correo_Elec") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_CE" runat="server" ControlToValidate="TB_CE" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_CE" runat="server" ControlToValidate="TB_CE" Display="Dynamic" ErrorMessage="Dirección de correo electrónico inválida" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Correo_Elec") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contraseña" SortExpression="Contrasena" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_C" runat="server" Text='<%# Bind("Contrasena") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_C" runat="server" ControlToValidate="TB_CE" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_C" runat="server" ControlToValidate="TB_C" Display="Dynamic" ErrorMessage="Mínimo 6 dígitos" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{6,30}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Contrasena") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
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
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPAS.master" AutoEventWireup="true" CodeFile="~/Controller/AdmiSedeEmple.aspx.cs" Inherits="Vista_AdmiSedeEmple" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
            height: 38px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            text-align: center;
            height: 26px;
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
            <td class="auto-style9" colspan="3">
                <asp:Label ID="L_S" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Arrendatario de CundiHouse"></asp:Label>
            </td>
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
            <td>
                <asp:GridView ID="GV_AE" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Doc_identidad" DataSourceID="ODS_Empleado" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" OnRowUpdating="GV_AE_RowUpdating" OnRowDataBound="GV_AE_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Documento identidad" SortExpression="Doc_identidad">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Doc_identidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" SortExpression="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_N" runat="server" Text='<%# Bind("Nombre") %>' Width="170px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_N" runat="server" ControlToValidate="TB_N" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_N" runat="server" ControlToValidate="TB_N" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido" SortExpression="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_A" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_A" runat="server" ControlToValidate="TB_A" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="REV_A" runat="server" ControlToValidate="TB_A" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>                                
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Apellido") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Numero celular" SortExpression="Num_celular">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_NC" runat="server" Text='<%# Bind("Num_celular") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_NC" runat="server" ControlToValidate="TB_NC" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_NC" runat="server" ControlToValidate="TB_NC" Display="Dynamic" ErrorMessage="Número de celular inválido" Font-Size="Small" ForeColor="Red" ValidationExpression="\d{7,12}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Num_celular") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo electronico" SortExpression="Cor_electronico">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_CE" runat="server" Text='<%# Bind("Cor_electronico") %>' CausesValidation="True"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RFV_CE" runat="server" ControlToValidate="TB_CE" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                                <asp:RegularExpressionValidator ID="REV_CE" runat="server" ControlToValidate="TB_CE" Display="Dynamic" ErrorMessage="Dirección de correo electrónico inválida" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Cor_electronico") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rol" SortExpression="Rol_nombre">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_R" runat="server" DataTextField="Nombre" DataValueField="Id_rol">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Rol_nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sede" SortExpression="Sede_nombre">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_S" runat="server" DataTextField="Nombre" DataValueField="Id_sede">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Sede_nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="¡Actualmente no se encuentra ningún dato registrado, por favor realice el siguiente registro!"></asp:Label>
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Empleado" runat="server" DataObjectTypeName="EVUsuario" DeleteMethod="eliminarusu" SelectMethod="obteneremple" TypeName="DUsuario" UpdateMethod="modificaradmi"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="REGISTRO ARRENDATARIO"></asp:Label>
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
            <asp:Label ID="Label3" runat="server" Text="NOMBRE"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_IN" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="NOMBRE" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_IN" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_N0" runat="server" Font-Size="Small"  ControlToValidate="TB_IN" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
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
                <asp:TextBox ID="TB_IA" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="APELLIDO" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_IA" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_N1" runat="server" Font-Size="Small"  ControlToValidate="TB_IA" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
            <asp:Label ID="Label4" runat="server" Text="DATOS PERSONALES"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_IE" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="EDAD" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_IE" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator id="R_E" runat="server" ControlToValidate="TB_IE" MinimumValue="18" MaximumValue="100" Type="Integer" Text="18-100" Font-Size="small" ForeColor="Red" Display="Dynamic" />
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_INC" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="NUMERO CELULAR" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_INC" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_NC0" runat="server" ControlToValidate="TB_INC" Display="Dynamic" ErrorMessage="Número de celular inválido" ForeColor="Red" ValidationExpression="\d{7,12}" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_ICE" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="CORREO ELECTRONICO" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_ICE" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_DC" runat="server" ControlToValidate="TB_ICE" Display="Dynamic" ErrorMessage="Dirección de correo electrónico inválida" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:DropDownList ID="DDL_Sede" runat="server" DataSourceID="ODS_Sede" DataTextField="Nombre" DataValueField="Id_sede">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Sede" runat="server" SelectMethod="obtenerSe" TypeName="DSede"></asp:ObjectDataSource>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
            <asp:Label ID="Label5" runat="server" Text="DATOS PERSONALES"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_IDI" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="CEDULA" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_IDI" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_DI" runat="server" ControlToValidate="TB_IDI" Display="Dynamic" ErrorMessage="Documento de identidad inválido" ForeColor="Red" ValidationExpression="\d{8,12}" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_IC" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="CONTRASEÑA" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_IC" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_C" runat="server" ControlToValidate="TB_IC" Display="Dynamic" ErrorMessage="Mínimo 6 dígitos" ForeColor="Red" ValidationExpression="\w{6,30}" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:Button ID="B_R" runat="server" Text="Registrar" OnClick="B_R_Click"  ValidationGroup="validarRegistro"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


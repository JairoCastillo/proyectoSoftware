<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MPA.master" AutoEventWireup="true" CodeFile="~/Controller/SuperAdmiHabi.aspx.cs" Inherits="Vista_SuperAdmiHabi" %>

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
                <asp:Label ID="L_S" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Inmuebles de CundiHouse"></asp:Label>
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
                <asp:GridView ID="GV_H" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_habitacion" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="ODS_H" ForeColor="Black" GridLines="None" HorizontalAlign="Center" PageSize="5">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField HeaderText="Tipo habitacion" SortExpression="Tipo_habitacion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ETH" runat="server" Text='<%# Bind("Tipo_habitacion") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ETH" runat="server" ControlToValidate="TB_ETH" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="REV_ETH" runat="server" ControlToValidate="TB_ETH" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " Font-Size="Small" ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Tipo_habitacion") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cantidad personas" SortExpression="Cant_personas">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_ECP" runat="server" Text='<%# Bind("Cant_personas") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_ECP" runat="server" ControlToValidate="TB_ECP" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RangeValidator ID="R_CP" runat="server" ControlToValidate="TB_ECP" Font-Size="small" ForeColor="Red" MaximumValue="19" MinimumValue="1" Text="Valor inválido" Type="Integer" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cant_personas") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio habitacion" SortExpression="Precio_habitacion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_EPH" runat="server" Text='<%# Bind("Precio_habitacion") %>' TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_EPH" runat="server" ControlToValidate="TB_EPH" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RangeValidator ID="R_EPH" runat="server" ControlToValidate="TB_EPH" Font-Size="small" ForeColor="Red" MaximumValue="999999" MinimumValue="25000" Text="Valor inválido" Type="Integer" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Precio_habitacion") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="Disponibilidad" HeaderText="Disponibilidad" SortExpression="Disponibilidad" />
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
                <asp:ObjectDataSource ID="ODS_H" runat="server" DataObjectTypeName="EHabitaciones" DeleteMethod="eliminarHabitacion" SelectMethod="leerHabitacion" TypeName="DHabitaciones" UpdateMethod="modificarHabitacion"></asp:ObjectDataSource>
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
            <asp:Label ID="L_H" runat="server" Font-Bold="True" Font-Size="Large" Text="REGISTRO INMUEBLES"></asp:Label>
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
            <asp:Label ID="Label6" runat="server" Text="TIPO DE INMUEBLE"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_TH" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="TIPO DE HABITACIÓN" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TH" runat="server" ControlToValidate="TB_TH" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REV_TH" runat="server" Font-Size="Small"  ControlToValidate="TB_TH" Display="Dynamic" ErrorMessage="No debe contener caracteres númericos " ForeColor="Red" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
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
            <asp:Label ID="Label7" runat="server" Text="CANTIDAD DE PERSONAS"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_CP" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="CANTIDAD DE PERSONAS" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_CP" runat="server" ControlToValidate="TB_CP" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator id="R_CP" runat="server" ControlToValidate="TB_CP" MinimumValue="1" MaximumValue="19" Type="Integer" Text="Valor inválido (1 a 20)" Font-Size="small" ForeColor="Red" />
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
            <asp:Label ID="Label8" runat="server" Text="PRECIO"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">
                <asp:TextBox ID="TB_P" runat="server" BorderColor="#CCCCFF" BorderStyle="Groove" Height="26px"  Width="344px" placeholder="PRECIO" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_P" runat="server" ControlToValidate="TB_P" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="validarRegistro"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator id="R_P" runat="server" ControlToValidate="TB_P" MinimumValue="25000" MaximumValue="999999" Type="Integer" Text="Valor inválido (25000 a 999999)" Font-Size="small" ForeColor="Red" />
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
                <asp:Button ID="B_R" runat="server" OnClick="B_R_Click" Text="Registrar" ValidationGroup="validarRegistro"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


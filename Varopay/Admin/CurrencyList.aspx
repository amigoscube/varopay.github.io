<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CurrencyList.aspx.cs" Inherits="Varopay.Admin.Enable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-2">
                <asp:GridView ID="gdvCurrency" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="CurrencyID" ItemType="Varopay.Models.Currency" SelectMethod="gdvCurrency_GetData" OnRowCommand="gdvCurrency_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Currency">
                            <ItemTemplate>
                                <asp:Label ID="lblCurrency" runat="server" Text="<%# Item.CurrencyName %>"></asp:Label>
                            </ItemTemplate>
                           <%-- <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtCurrency" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqvCurrency" runat="server" CssClass="text-danger" ControlToValidate="txtCurrency" ErrorMessage="Enter Currency"></asp:RequiredFieldValidator>
                            </EditItemTemplate>--%>
                            <FooterTemplate>
                                <asp:TextBox runat="server" ID="txtCurrency" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqvCurrency" runat="server" CssClass="text-danger" ControlToValidate="txtCurrency" ErrorMessage="Enter Currency" ValidationGroup="validation"></asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkCurrency" OnCheckedChanged="chkCurrency_CheckedChanged" />
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:ImageButton ID="imbAdd" runat="server" ImageUrl="~/Images/AddNewitem.jpg" CommandName="AddCurrency" Width="25" Height="30" ToolTip="Add Currency" CausesValidation="true" ValidationGroup="validation"/>
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label runat="server" ID="lblResult"></asp:Label>
                <div>
                    <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-default" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

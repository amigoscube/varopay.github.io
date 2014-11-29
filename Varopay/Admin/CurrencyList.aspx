<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CurrencyList.aspx.cs" Inherits="Varopay.Admin.Enable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="gdvCurrency" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="CurrencyID" ItemType="Varopay.Models.Currency" SelectMethod="gdvCurrency_GetData" BackColor="White" OnRowCommand="gdvCurrency_RowCommand">
                    <EmptyDataRowStyle  BackColor="White" Font-Bold="true" ForeColor="#E7E7EF"/>
                    <AlternatingRowStyle BackColor="LightGray" />
                     <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B" Height="30" CssClass="text-center"></HeaderStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="Currency">
                            <ItemTemplate>
                                <asp:Label ID="lblCurrency" runat="server" Text="<%# Item.CurrencyName %>"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox runat="server" ID="txtCurrency" CssClass="form-control"></asp:TextBox>
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
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                 <%--<asp:RequiredFieldValidator ID="rqvCurrency" runat="server" CssClass="text-danger" ControlToValidate="txtCurrency" ErrorMessage="Enter Currency" ValidationGroup="validation"></asp:RequiredFieldValidator>--%>
                 <asp:Label runat="server" ID="lblResult"></asp:Label>
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-12 text-center">
                <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-primary" />
            </div>
        </div>
    </div>

</asp:Content>

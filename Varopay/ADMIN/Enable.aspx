<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Enable.aspx.cs" Inherits="Varopay.Admin.Enable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-2">
                <asp:GridView ID="gdvCurrency" runat="server" AutoGenerateColumns="false" DataKeyNames="CurrencyID" ItemType="Varopay.Models.Currency" SelectMethod="gdvCurrency_GetData">
                    <Columns>
                        <asp:TemplateField HeaderText="Currency">
                            <ItemTemplate>
                                <asp:Label ID="lblCurrency" runat="server" Text="<%# Item.CurrencyName %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkCurrency" OnCheckedChanged="chkCurrency_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>

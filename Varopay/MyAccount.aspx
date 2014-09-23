<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Varopay.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Member Area</h2>
                <p>Welcome to your account <%: Context.User.Identity.GetUserName() %></p>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h3>My Accounts</h3>
                    <asp:GridView runat="server" ID=" gdvAccount">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="row">
                    <h3>Promotions</h3>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

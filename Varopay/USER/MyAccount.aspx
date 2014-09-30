<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="Varopay.User.MyAccount" Async="true"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Member Area</h2>
                <p>Welcome to your account <%: Context.User.Identity.GetUserName() %></p>
                <asp:GridView ID="gdvLog" runat="server">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView> 
            </div>
            <div class="col-md-6">
                <div class="row">
                    <h3>My Accounts</h3>
                    <asp:ListView runat="server" ID="lsvAccount">
                        <ItemTemplate>

                        </ItemTemplate>
                    </asp:ListView>
                    <a href="~/User/AddAccount.aspx" runat="server">Add Account</a>
                </div>
                <div class="row">
                    <h3>Promotions</h3>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

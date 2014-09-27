<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Analytics.aspx.cs" Inherits="Varopay.User.Analytics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ListView ID="lsvArticles" runat="server">
            <ItemTemplate>
                <asp:Label ID="lblArticle" runat="server"></asp:Label>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

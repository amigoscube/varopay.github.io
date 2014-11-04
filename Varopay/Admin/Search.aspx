<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Varopay.Admin.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblKey" runat="server" Text="Enter Key to Search"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="txtKey" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblSearchby" runat="server" Text="SearchBy"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlSearchBy" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Username</asp:ListItem>
                    <asp:ListItem>EmailId</asp:ListItem>
                    <asp:ListItem>Phone Number</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
</asp:Content>

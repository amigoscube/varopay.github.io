<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Closed.aspx.cs" Inherits="Varopay.Admin.Closed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h4>Total Closed Users :  <asp:Label ID="lblclsTotal" runat="server"></asp:Label></h4>
             <asp:GridView ID="gdvClose" runat="server" ItemType="Varopay.Models.ApplicationUser" EmptyDataText="There Are No Closed Users to display" SelectMethod="gdvClose_GetData" AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="Id">
        <Columns>
            <asp:TemplateField HeaderText="Username">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text="<%# Item.UserName %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text="<%# Item.Email %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Phone Number">
                <ItemTemplate>
                    <asp:HyperLink ID="lblPhone" runat="server" Text="<%# Item.PhoneNumber %>"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <asp:HyperLink ID="lblCountry" runat="server" Text="<%# Item.Country %>"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText ="Action">
                <ItemTemplate>
                    <a href="#" runat="server">View</a>|
                    <a href="#" runat="server">Edit</a>|
                    <a href="#" runat="server">Activate</a>|
                    <a href="#" runat="server">Delete</a>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:HyperLinkField >
            </asp:HyperLinkField>
        </Columns>
        <PagerTemplate>
        </PagerTemplate>
    </asp:GridView>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Closed.aspx.cs" Inherits="Varopay.Admin.Closed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h4>Total Closed Users :  <asp:Label ID="lblclsTotal" runat="server"></asp:Label></h4>
             <asp:GridView ID="gdvClose" runat="server" ItemType="Varopay.Models.ApplicationUser" EmptyDataText="There Are No Closed Users to display" BackColor="White" SelectMethod="gdvClose_GetData" AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="Id">
                 <EmptyDataRowStyle  BackColor="Gray" Font-Bold="true" ForeColor="#E7E7EF"/>
                    <AlternatingRowStyle BackColor="LightGray" />
                     <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#6B696B" Height="30" CssClass="text-center"></HeaderStyle>
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
                    <asp:Label ID="lblPhone" runat="server" Text="<%# Item.PhoneNumber %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <asp:HyperLink ID="lblCountry" runat="server" Text="<%# Item.Country %>"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText ="Action">
                <ItemTemplate>
                    <a href="UserDetails.aspx?Id=<%# Eval("Id")%>">View</a>|
                    <a href="EditUser.aspx?Id=<%# Eval("Id") %>">Edit</a>|
                    <asp:LinkButton ID="lkbtnActivate" runat="server" Text="Activate" OnClick="lkbtnActivate_Click"></asp:LinkButton> 
                    <asp:LinkButton ID="lkbtnDelete" runat="server" Text="Delete" OnClick="lkbtnDelete_Click"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:HyperLinkField DataNavigateUrlFields="Username" DataNavigateUrlFormatString="~/Admin/UserDetails.aspx?Id={0}">
            </asp:HyperLinkField>
        </Columns>
        <PagerTemplate>
        </PagerTemplate>
    </asp:GridView>
        </div>
    </div>
</asp:Content>

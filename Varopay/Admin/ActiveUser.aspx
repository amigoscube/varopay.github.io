<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ActiveUser.aspx.cs" Inherits="Varopay.Admin.Active_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4>Total Active Users : <asp:Label ID="lblTotal" runat="server"></asp:Label></h4>
        </div>
    </div>
    <asp:GridView ID="gdvActive" runat="server" ItemType="Varopay.Models.ApplicationUser" EmptyDataText="There Are No Active Users to display" SelectMethod="gdvActive_GetData" AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="Id">
        <Columns>
            <asp:TemplateField HeaderText="Username">
                <ItemTemplate>
                    <asp:HyperLink ID="hplName" NavigateUrl ='<%# string.Format("~/Admin/UserDetails.aspx?Id={0}",Eval("Id")) %>' runat="server" Text="<%# Item.UserName %>"></asp:HyperLink>
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
                    <a href="UserDetails.aspx?Id=<%# Eval("Id")%>">View</a>|
                    <a href="EditUser.aspx?Id=<%# Eval("Id") %>">Edit</a>|
                    <a href="#" id="lkSuspend" runat="server">Suspend</a>|
                    <a href="#" id="lkClose" runat="server">Close</a>
                </ItemTemplate>
            </asp:TemplateField>
             <%--<asp:HyperLinkField DataNavigateUrlFields="Username" DataNavigateUrlFormatString="~/Admin/UserDetails.aspx?Id={0}">
            </asp:HyperLinkField>--%>
        </Columns>
        <PagerTemplate>
        </PagerTemplate>
    </asp:GridView>
        </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Suspended.aspx.cs" Inherits="Varopay.Admin.Suspended" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Total Suspended Users : <asp:Label ID="lblSusTotal" runat="server"></asp:Label></h4>
                 <asp:GridView ID="gdvSuspend" runat="server" ItemType="Varopay.Models.ApplicationUser" EmptyDataText="There Are No Suspended Users to display" SelectMethod="gdvSuspend_GetData" AllowPaging="true" BackColor="White" AutoGenerateColumns="false" DataKeyNames="Id">
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
                   <%-- <a href="#" runat="server">Activate</a>|--%>
                    <asp:LinkButton ID="lkbtnActivate" runat="server" OnClick="lkbtnActivate_Click" Text="Activate"></asp:LinkButton>|
                    <asp:LinkButton ID="lkbtnClosed" runat="server" OnClick="lkbtnClosed_Click" Text="Close"></asp:LinkButton>
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
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Varopay.Admin.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <%--<tr>
                        <td>
                            <asp:Label ID="lblAccountType" runat="server" Text="Account Type"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList runat="server" ID="rblAccountType" class="form-horizontal">
                                <asp:ListItem>Personal</asp:ListItem>
                                <asp:ListItem>Business</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>--%>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="Username" runat="server" CssClass="form-control"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="Email" CssClass="form-control"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="City" CssClass="form-control"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" Text="Address" ID="lblAddress"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="Address" CssClass="form-control"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" Text="Country" ID="lblCountry"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="Country" CssClass="form-control"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label ID="Zipcode" CssClass="form-control" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 fntwt">
                <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Label runat="server" ID="PhoneNumber" CssClass="form-control"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

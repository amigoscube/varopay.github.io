<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Varopay.Admin.UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Username" runat="server" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Email" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="City" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" Text="Address" ID="lblAddress"></asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Address" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" Text="Country" ID="lblCountry"></asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="Country" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Zipcode" CssClass="form-control" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="PhoneNumber" CssClass="form-control"></asp:Label>
                        </td>
                    </tr>
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
                </table>
            </div>
        </div>
    </div>
</asp:Content>

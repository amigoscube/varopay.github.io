<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Varopay.USER.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <table runat="server">
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblUserName" Text="Username"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" Text=""></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtRegisterCity" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Address" ID="lblAddress"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtRegisterAddress" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Country" ID="lblCountry"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtZipcode" CssClass="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                    </table>
                </div>
                <div class="row">
                    <table runat="server">
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblCurrentPassword" ></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Varopay.User.Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4" id="Settings">
                    <table runat="server">
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblUserName" Text="Username"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" Text="<%# Context.User.Identity.GetUserName() %>"></asp:TextBox>
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
                            <td colspan="2" class="text-center">
                                <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary" Text="Submit" />
                            </td>
                        </tr>
                        </table>
                <a href="~/User/PasswordSettings.aspx" runat="server">Change Password</a>
                <h4>Change your Profile Pic</h4>
                <asp:FileUpload ID="fupProfImg" runat="server" />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click"/>
                    </div>
            <div class="col-md-8"></div>
                </div>

    </div>
</asp:Content>

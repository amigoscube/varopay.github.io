<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Varopay.Admin.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                 <table runat="server">
                            <tr>
                                <td>
                                    <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRegisterUsername" AutoCompleteType="Disabled" runat="server" CssClass="form-control" OnTextChanged="txtRegisterUsername_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" AutoCompleteType="Disabled" ID="txtRegisterEmail" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtRegisterCity" AutoCompleteType="Disabled" CssClass="form-control" OnTextChanged="txtRegisterCity_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Address" ID="lblAddress"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtRegisterAddress" CssClass="form-control" AutoCompleteType="Disabled" TextMode="SingleLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Country" ID="lblCountry"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control">
                                    </asp:DropDownList>
                                    <%--    <asp:RequiredFieldValidator runat="server" ID="rqvRegisterCountry" ControlToValidate="ddlCountry" CssClass="text-warning" ErrorMessage="Country field cannot be empty"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtZipcode" CssClass="form-control dropdown" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>                                    
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
                     <tr>
                         <td>
                             <asp:Button ID="btnSubmit" runat="server" Text="Save Changes" CssClass="btn btn-default" OnClick="btnSubmit_Click"/>
                         </td>
                     </tr>
                        </table>
            </div>
        </div>
    </div>
</asp:Content>

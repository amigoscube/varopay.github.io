<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNew.aspx.cs" Inherits="Varopay.Admin.AddNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container well well-lg">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h3 class="text-center">Add New User</h3>
                <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                 <table runat="server">
                            <tr>
                                <td>
                                    <asp:Label ID="lblUsername" Text="Username" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRegisterUsername" AutoCompleteType="Disabled" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" CssClass="text-warning" ControlToValidate="txtRegisterUsername" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" AutoCompleteType="Disabled" ID="txtRegisterEmail" TextMode="Email" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" CssClass="text-warning" ControlToValidate="txtRegisterEmail" ErrorMessage="Enter a valid Email ID"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtRegisterCity" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvCity" runat="server" CssClass="text-warning" ControlToValidate="txtRegisterCity" ErrorMessage="City field Cannot be empty"></asp:RequiredFieldValidator>
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
                                    <asp:RequiredFieldValidator ID="rqvZipcode" runat="server" ControlToValidate="txtZipcode" CssClass="text-warning" ErrorMessage="Zipcode is required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" CssClass="text-warning" ErrorMessage="Mobile number is required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Password" ID="lblPassword"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtRegisterPassword" CssClass="form-control" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRegisterPassword" runat="server" CssClass="text-warning" ControlToValidate="txtRegisterPassword" ErrorMessage="Password field is required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="Confirm Password" ID="lblConfirmPassword"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtRegisterConfirmPassword" CssClass="form-control" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRegisterConfirmPassword" runat="server" CssClass="text-warning" ControlToValidate="txtRegisterConfirmPassword" ErrorMessage="Confirm Password field is required"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpPassword" runat="server" ControlToCompare="txtRegisterPassword" ControlToValidate="txtRegisterConfirmPassword" ErrorMessage="The password and Confirm Password do not match" Display="Dynamic" CssClass="text-warning"></asp:CompareValidator>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblAccountType" runat="server" Text="Account Type"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList runat="server" ID="rblAccountType" class="form-horizontal">
                                        <asp:ListItem>Personal</asp:ListItem>
                                        <asp:ListItem>Business</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <%--<tr>
                               <td>
                                   <asp:UpdatePanel ID="upCaptcha" runat="server">
                                        <ContentTemplate>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Image ID="imgCaptcha" runat="server" />
                                                    </td>
                                                    <td>
                                                       
                                                        <button type="button" id="btn" runat="server" onserverclick="btnRefresh_Click" causesvalidation="false" class="btn btn-default"><span class="glyphicon glyphicon-refresh"></span></button>
                                                   </td>
                                                </tr>
                                            </table>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Enter the Captcha" AutoCompleteType="Disabled" ID="txtCaptcha" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rqvCaptcha" CssClass="text-warning" ErrorMessage="Please enter the captcha" ControlToValidate="txtCaptcha"></asp:RequiredFieldValidator> 
                                   <%-- <asp:CustomValidator runat="server" ID="cstCaptcha" Type="String" ControlToValidate="txtCaptcha" OnServerValidate="cstCaptcha_ServerValidate" ErrorMessage="Invalid Captcha" CssClass="text-warning" Display="Dynamic"></asp:CustomValidator>--%>
                               <%-- </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Label ID="lblCaptcha" runat="server"></asp:Label>
                                </td>
                            </tr>--%>
                     <tr class="text-center">
                         <td colspan="2">
                             <asp:Button ID="btnCreate" runat="server" Text="Add User" CssClass="btn btn-default" OnClick="btnCreate_Click"/>
                         </td>
                     </tr>
                        </table>
            </div>
        </div>
    </div>
</asp:Content>

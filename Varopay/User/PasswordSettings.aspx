<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="PasswordSettings.aspx.cs" Inherits="Varopay.User.PasswordSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table>
                    <tr>
                        <td>
                             <asp:Label runat="server" ID="lblCurrentPassword" Text="Current Password" ></asp:Label> 
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCurPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqvCurPassword" runat="server" ErrorMessage="Enter Current Password" ControlToValidate="txtCurPassword"></asp:RequiredFieldValidator>
                        </td> 
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblNewPassword" Text="New Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtNewPassword" CssClass="form-control" TextMode="Password"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="rqvNewPassword" runat="server" ErrorMessage="Enter New Password" ControlToValidate="txtNewPassword"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblConfirmPassword" Text="Confirm Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqvConfirmPassword" runat="server" ErrorMessage="Enter Confirm Password" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpPassword" ControlToCompare="txtNewPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="New Password and Confirm Password shpuld be same"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-default"  OnClick="btnSubmit_Click"/>
                        </td>
                    </tr>
                </table>
                <asp:Label runat="server" ID="lblChgPwd"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

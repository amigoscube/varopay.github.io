<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="PasswordSettings.aspx.cs" Inherits="Varopay.User.PasswordSettings" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="text-center">Change Your Password</h1>
        <div class="row" style="margin-top: 5%;">
            <div class="col-md-2 col-md-offset-3">
                <asp:Label runat="server" ID="lblCurrentPassword" CssClass="pull-right" Text="Current Password"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtCurPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvCurPassword" runat="server" ErrorMessage="Enter Current Password" CssClass="text-danger" ControlToValidate="txtCurPassword"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 col-md-offset-3">
                <asp:Label runat="server" ID="lblNewPassword" Text="New Password" CssClass="pull-right"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtNewPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvNewPassword" runat="server" ErrorMessage="Enter New Password" CssClass="text-danger" ControlToValidate="txtNewPassword"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 col-md-offset-3">
                <asp:Label runat="server" ID="lblConfirmPassword" Text="Confirm Password" CssClass="pull-right"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvConfirmPassword" runat="server" ErrorMessage="Enter Confirm Password" CssClass="text-danger" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cmpPassword" ControlToCompare="txtNewPassword" runat="server" CssClass="text-danger" ControlToValidate="txtConfirmPassword" ErrorMessage="New Password and Confirm Password shpuld be same"></asp:CompareValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <asp:Label runat="server" ID="lblChgPwd"></asp:Label>
            </div>
        </div>
        <div class="row" style="margin-bottom: 5%;">
            <div class="col-md-3 col-md-offset-5">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>

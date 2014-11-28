<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="Varopay.User.Settings" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container margin-tp-15" id="Settings">
        <div class="row">
            <div class="col-md-12 col-md-offset-1">
                <h3 class="fntwt">Change Your Profile</h3>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" ID="lblUserName" Text="Username"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" ID="lblEmail" Text="Email"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" Text="City" ID="lblCity"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtRegisterCity" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" Text="Address" ID="lblAddress"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtRegisterAddress" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" Text="Country" ID="lblCountry"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" Text="Zipcode" ID="lblZipcode"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtZipcode" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-2 col-md-offset-1">
                        <asp:Label runat="server" ID="lblPhoneNumber" Text="Mobile Number"></asp:Label>
                    </div>
                    <div class="col-md-3">
                        <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row margin-tp-15">
                    <div class="col-md-3 col-md-offset-3">
                        <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary btn-mrgn-top-10" Text="Submit" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row margin-15-topbt">
            <div class="col-md-3 col-md-offset-1">
                <h4><b>Change PassWord</b>
                <a href="~/User/PasswordSettings.aspx" runat="server">Click Here</a>
                </h4>
            </div>
        </div>
        <div class="row">
            <h4 class="fntwt" style="margin-left:10%;">Change your Profile Pic</h4>
            <div class="col-md-3 col-md-offset-2">
                <asp:FileUpload ID="fupProfImg" runat="server" CssClass="btn btn-default form-control" />
            </div>
            <div class="col-md-3">
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CausesValidation="false" CssClass="btn btn-info" />
            </div>
        </div>
        <div class="row margin-15-topbt">
            <div class="col-md-2 col-md-offset-1 fntwt">
                <a href="DeleteAccount.aspx">Delete Account</a>
            </div>
        </div>
        <asp:Literal runat="server" ID="ltrMsg"></asp:Literal>
    </div>
</asp:Content>

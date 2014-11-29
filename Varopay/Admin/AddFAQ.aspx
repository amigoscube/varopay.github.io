<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddFAQ.aspx.cs" Inherits="Varopay.Admin.AddFAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="well well-lg">
        <div class="row">
            <div class="col-md-2 col-md-offset-1">
                <asp:Label runat="server" ID="lblQuestion" ClientIDMode="Static" Text="Question"></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtQuestion" CssClass="form-control" AutoCompleteType="Disabled" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ID="rqvQuestion" ControlToValidate="txtQuestion" ErrorMessage="Enter Question"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 col-md-offset-1">
                <asp:Label runat="server" ID="lblAnswer" ClientIDMode="Static" Text="Answer"></asp:Label>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtAnswer" AutoCompleteType="Disabled" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqvAnswer" runat="server" CssClass="text-danger" ControlToValidate="txtAnswer" ErrorMessage="Enter Answer"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-3">
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" />
            </div>
        </div>

    </div>
</asp:Content>

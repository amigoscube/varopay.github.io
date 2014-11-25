<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="Varopay.User.AddAccount" Async="true" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id =" AddAct">
        <div class="row" style="margin-top:15%">
            <div class=" col-md-3 col-md-offset-4">
                 <asp:Label runat="server" ID="lblAccount" Text="Account"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="ddlAccount">
                            <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
            </div>
        </div>
        <div class="row" style="margin-top:5%;margin-bottom:15%">
            <div class="col-md-6 col-md-offset-5">
                 <asp:Button runat="server" ID="btnAdd" Text="AddAccount" CausesValidation="false" OnClick="btnAdd_Click" CssClass="btn btn-default"/>
            </div>
        </div>
      <%--  <div id="PageLoader"></div>--%>
    </div>
</asp:Content>

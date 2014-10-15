<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ComposeTicket.aspx.cs" Inherits="Varopay.User.ComposeTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblSubject" Text="Subject"></asp:Label>
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator runat="server" ID="rqvSubject" CssClass="text-warning" ControlToValidate="txtSubject" ErrorMessage="Pleae enter subject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblTo" Text="To"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtTo" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvTo" CssClass="text-warning" ControlToValidate="txtTo" ErrorMessage="Pleae enter To"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblMesaage" Text="Message"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rqvMessage" CssClass="text-warning" ControlToValidate="txtMessage" ErrorMessage="Pleae enter Message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-default" OnClick="btnSend_Click" />
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </div>
</asp:Content>

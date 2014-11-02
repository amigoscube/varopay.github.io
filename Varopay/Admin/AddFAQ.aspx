<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddFAQ.aspx.cs" Inherits="Varopay.Admin.AddFAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
                <table>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblQuestion" ClientIDMode="Static" Text="Question"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtQuestion" CssClass="form-control" AutoCompleteType="Disabled" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ID="rqvQuestion" ControlToValidate="txtQuestion" ErrorMessage="Enter Question"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" ID="lblAnswer" ClientIDMode="Static" Text ="Answer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAnswer" AutoCompleteType="Disabled" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rqvAnswer" runat="server" CssClass="text-danger" ControlToValidate="txtAnswer" ErrorMessage="Enter Answer"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-default" Text="Save" OnClick="btnSave_Click" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

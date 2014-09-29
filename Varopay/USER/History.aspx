<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Varopay.User.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-4">
            <h4>You can retrieve all transaction history of your account</h4>
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblFromDate" Text="Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtFromDate" CssClass="form-control" placeholder="From" ClientIDMode="Static"></asp:TextBox>
                    </td>
                     <td>
                        <asp:TextBox runat="server" ID="txtToDate" placeholder="To" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblAccount" Text="Account"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtFromAccount" CssClass="form-control" placeholder="From"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtToAccount" CssClass="form-control" placeholder="To"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblAction" Text="Action"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlAction" CssClass="form-control">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Login</asp:ListItem>
                            <asp:ListItem>Logout</asp:ListItem>
                            <asp:ListItem>Create</asp:ListItem>
                            <asp:ListItem>Make</asp:ListItem>
                            <asp:ListItem>Send</asp:ListItem>
                            <asp:ListItem>Complete</asp:ListItem>
                            <asp:ListItem>Discard</asp:ListItem>
                            <asp:ListItem>Transfer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblObject" Text="Object"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlObject" CssClass="form-control" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>Account</asp:ListItem>
                            <asp:ListItem>Deposit</asp:ListItem>
                            <asp:ListItem>Withdrawal</asp:ListItem>
                            <asp:ListItem>Mail</asp:ListItem>
                            <asp:ListItem>Security</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-primary btn-srch-mrgn" Text="Search"/>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-8"></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView runat="server" ID="gdvHistory">
                   <Columns>
                        <asp:TemplateField HeaderText="Created">
                            <ItemTemplate>
                                <asp:Label ID="lblCreated" runat="server" Text='<%# Eval("Date")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Object">
                           <ItemTemplate>
                               <asp:Label ID="lblObject" runat="server" Text='<%# Eval("Object") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Action">
                           <ItemTemplate>
                               <asp:Label ID="lblAction" runat="server" Text='<%# Eval("Action") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Amount">
                           <ItemTemplate>
                               <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount")%>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Details">
                           <ItemTemplate>
                               <asp:Label ID="lblDetails" runat="server" Text='<%# Eval("Details")%>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

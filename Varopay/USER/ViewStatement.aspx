<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewStatement.aspx.cs" Inherits="Varopay.User.ViewStatement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
    <div class="row">
        <div class="col-md-3">
            <h5>Select Account to view statement</h5>
        </div>
        <div class="col-md-3">
            <asp:DropDownList ID="ddlAccounts" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <h3>Account Balance</h3>
    </div>
    <div class="row">
        <div class="col-md-6">
            <table runat="server">
                <tr>
                    <td>
                        <asp:Label ID="lblAction" Text="Action" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlAction" runat="server" CssClass="form-control">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Withdraw</asp:ListItem>
                            <asp:ListItem>Deposit</asp:ListItem>
                        </asp:DropDownList> 
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFromDate" runat="server" Text="From"></asp:Label>
                    </td>
                    <td>
                       <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFromAmount" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtToAmount" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-default" Text="Search" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
     <div class="row">
         <asp:GridView runat="server" ID="gdvStatement">
             <Columns>
                 <asp:TemplateField HeaderText="">
                     <ItemTemplate>

                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
     </div>
</div>
</asp:Content>

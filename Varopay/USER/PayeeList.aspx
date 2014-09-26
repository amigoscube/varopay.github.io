<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="PayeeList.aspx.cs" Inherits="Varopay.USER.PayeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p>Payees in your acount are</p>
                <asp:GridView runat="server" ID="gdvPayeeList">
                    <Columns>
                        <asp:TemplateField HeaderText="Account">
                            <EditItemTemplate>
                                <asp:Label runat="server" ID="lblEditAccount" Text='<%#Eval("Account")%>'></asp:Label>
                             </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAccount" Text='<%#Eval("Account")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblEmail" Text='<%#Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblPhoneNumber" Text='<%#Eval("PhoneNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEdit" ImageUrl="~/Images/Edit.jpg" ToolTip="Edit" Height="20px" Width="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgDelete" ImageUrl="~/Images/delete.jpg" ToolTip="Delete" Height="20px" Width="20px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <a href="~/USER/AddPayee.aspx" runat="server" >Add Payee</a> 
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Varopay.Admin.Account" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table>
                    <tr>
                        <td>
                            <h4>Certified Partners</h4>
                        </td>
                        <td>
                            <div class="btn-group">
                                <asp:Button ID="btnAdd" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Add" data-target="#AddPartnerModal" data-toggle="modal" role="dialog"/>
                                <asp:Button ID="btnDelete" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Delete" data-target="#RemovePartnerModal" data-toggle="modal" role="dialog"/>
                            </div>
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            <h4>Manage User Role,Accounts</h4>
                        </td>
                        <td>
                            <div class="btn-group">
                                <asp:Button ID="btnUser" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="User"/>
                                <asp:Button ID="btnAdmin" runat="server" ClientIDMode="Static" CssClass="btn btn-default" Text="Admin" />
                            </div>
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            <h4>Deposit Amount</h4>
                        </td>
                        <td>
                            <asp:Button ID="btnDepAmt" runat="server" Text="Deposit" ClientIDMode="Static" CssClass="btn btn-default"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Disable User From LockedOut</h4>
                        </td>
                        <td>
                            <asp:Button ID="btnLockedOut" runat="server" Text="Unlock" CssClass="btn btn-default" ClientIDMode="Static" data-target="#UnlockUserModal" data-toggle="modal" role="dialog" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h4>Enable/Disabe Currency</h4>
                        </td>
                        <td><a href="~/Admin/Enable.aspx" runat="server">Enable/Disable</a></td>
                    </tr>
                </table>
                </div>
            </div>
        <div class="modal fade" id="AddPartnerModal" role="dialog" aria-hidden="true" tabindex="-1" aria-labelledby="AddPartnerLabel"> 
            <div class="modal-dialog">
                <asp:UpdatePanel ID="upAddPartner" runat="server">
                    <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4>Add Certified Partner</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Literal ID="ltrError" runat="server"></asp:Literal>
                        <table class="text-center">
                            <tr>
                                <td>
                                <asp:Label runat="server" ID="lbl" Text="Name"></asp:Label>
                                    </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtPartnerName" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="rqvPartnerName" ControlToValidate="txtPartnerName" CssClass="text-warning" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   <asp:Label runat="server" Text="Website Url" ID="lblUrl"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="txtUrl" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqvUrl" runat="server" ControlToValidate="txtUrl" ErrorMessage="RequiredField" CssClass="text-warning"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblDescription" Text="Description"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" AutoCompleteType="Disabled" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:Label ID="lblUpload" runat="server" Text="Upload Image"></asp:Label>
                                    </td>
                                <td>
                                    <asp:FileUpload ID="fupPartner" runat="server" CssClass="form-control" />
                                    <%-- <asp:RequiredFieldValidator ID="rqvImage" runat="server" ControlToValidate="fupPartner" ErrorMessage="RequiredField" CssClass="text-warning"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnSubmit_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                        </ContentTemplate>
                    <Triggers>
                        <asp:PostBackTrigger ControlID="btnSubmit" />
                    </Triggers>
                    </asp:UpdatePanel>
            </div>
        </div>
        <div class="modal fade" id="RemovePartnerModal" aria-labelledby="RemovePartnerLabel" tabindex="-1" aria-hidden="true" role="dialog">
            <div class="modal-dialog">
                <asp:UpdatePanel ID="upRemovePartner" runat="server">
                    <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4>Remove Certified Partner</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Literal ID="ltrMessage" runat="server"></asp:Literal> 
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblDeletePartner" runat="server" Text="Enter the certified partner name to delete"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDeletePartner" runat="server" AutoCompleteType="Disabled" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-default" OnClick="btnRemove_Click"/> 
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
            </div>
        </div>
        <div id="UnlockUserModal" class="modal fade" aria-labelledby="UnlockUserModal" tabindex="-1" aria-hidden="true" role="dialog">
            <div class="modal-dialog">
                <asp:UpdatePanel ID="upUnlock" runat="server">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4>Unlock User</h4>
                            </div>
                            <div class="modal-body">
                                <asp:Literal ID="ltrUnlocked" runat="server"></asp:Literal>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblUser" runat="server" Text="Email"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnUnlock" runat="server" CssClass="btn btn-default" Text="Unlock User" OnClick="btnUnlock_Click"/>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>

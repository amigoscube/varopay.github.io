<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="InternalMail.aspx.cs" Inherits="Varopay.User.InternalMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>If you have any queries send us a mail</h3>
                <h5><a href="ComposeTicket.aspx" runat="server">Compose a New Ticket</a></h5>
                <h5><a href="MailHistory.aspx" runat="server">History</a></h5>
               <%-- <div>
                    <asp:GridView ID="gvEmails" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField HeaderText="From" DataField="From" />
                            <asp:HyperLinkField HeaderText="Subject" DataNavigateUrlFields="MessageNumber" DataNavigateUrlFormatString="~/ShowMessageCS.aspx?MessageNumber={0}" DataTextField="Subject" />
                            <asp:BoundField HeaderText="Date" DataField="DateSent" />
                        </Columns>
                    </asp:GridView>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>

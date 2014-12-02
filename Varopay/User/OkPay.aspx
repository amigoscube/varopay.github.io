<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="OkPay.aspx.cs" Inherits="Varopay.User.OkPay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
 <asp:Content runat="server" ContentPlaceHolderID="ApiIntegration">
      <form  method="post" action="https://www.okpay.com/process.html">
    <div class="container well" style="margin-top:5%;">
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
            </div>
            <div class="col-md-3">
               
                <input type="text" name="ok_item_1_price" class="form-control" />
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblAccount" runat="server" Text="Account"></asp:Label>
            </div>
            <div class="col-md-3">
                <select id="ddlAccount" runat="server" class="form-control">

                </select>
                </div>
            </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblCurrency" runat="server" Text="Currency"></asp:Label>
            </div>
            <div class="col-md-3">
                 <select id="ddlCurrency" class="form-control">
                    <option value="USD">USD</option>
                    <option value="EUR">EUR</option>
                </select>
                <input type="hidden" id="Currency" name="ok_currency" class="form-control"/>
            </div>
        </div>
        <div class="row margin-tp-15">
            <div class="col-md-3 col-md-offset-6">
               <input type="image" id="SendOkPay" name="submit" value="Send" class="btn btn-primary"/>
            </div>
        </div>
        <input type="hidden" name="ok_receiver" value="OK702746927" />
        <input type="hidden" name="ok_item_1_name" value="VaroPay Transfer" />
        <input type="hidden" name="ok_payment_methods" value="OKPAY" />
        <input type="hidden" name="ok_item_1_custom_1_title" value="Description" />
        <input type="hidden" name="ok_item_1_custom_1_value" value="VaroPay Order" />
        <input type="hidden" name="ok_item_1_custom_2_title" value="Account" />
        <input type="hidden" id="Account" name="ok_item_1_custom_2_value" value="123456" />
    </div>
    </form>
  </asp:Content>

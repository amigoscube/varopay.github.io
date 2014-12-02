<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Money.aspx.cs" Inherits="Varopay.User.Add_Money" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/bootstrap.js" type="text/javascript"></script>
    <link href="~/Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form  method="post" action="https://www.okpay.com/process.html">
    <div class="container well" style="margin-top:5%;">
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label>
            </div>
            <div class="col-md-3">
                <input type="text" name="ok_item_1_price" class="form-control" />
            </div>
        </div>
        <%--<div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblAccount" runat="server" Text="Account"></asp:Label>
            </div>
            <div class="col-md-3">
                <%--<asp:DropDownList ID="ddlAccount" runat="server" CssClass="form-control"></asp:DropDownList>--%>
        <div class="row">
            <div class="col-md-3 col-md-offset-3">
                <asp:Label ID="lblCurrency" runat="server" Text="Currency"></asp:Label>
            </div>
            <div class="col-md-3">
                <input type="text" name="ok_currency" class="form-control" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-md-offset-6">
                <input type="image" name="submit" alt="OKPAY Payment" src="https://www.okpay.com/img/buttons/x02.gif" />
            </div>
        </div>
        <input type="hidden" name="ok_receiver" value="OK702746927" />
        <input type="hidden" name="ok_item_1_name" value="VaroPay Transfer" />
        <input type="hidden" name="ok_payment_methods" value="OKPAY" />
        <input type="hidden" name="ok_item_1_custom_1_title" value="Description" />
        <input type="hidden" name="ok_item_1_custom_1_value" value="VaroPay Order" />
        <input type="hidden" name="ok_item_1_custom_2_title" value="Accopunt" />
        <input type="hidden" name="ok_item_1_custom_2_value" value="123456" />
    </div>
    </form>
</body>
</html>

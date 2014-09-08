<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Varopay._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainbody-bg" id="CarouselMain" data-target="varo-carousel">
            <div class="container">
                <div class="row mainbody-content">
                    <h1>Make Fast And Safe Payments With VaroPay.</h1>
                    <ul>
                        <li>
                            <h4>Easy to use</h4>
                        </li>
                        <li>
                            <h4>Easy to Access</h4>
                        </li>
                        <li>
                            <h4>Faster Payments</h4>
                        </li>
                    </ul>                    
                    <a runat="server" href="#fixed-nav" class="arrow-down">
                        <span class="glyphicon glyphicon-chevron-down circle"></span>
                    </a>
                </div>

            </div>
        </div>
        <div id="fixed-nav" class="nav-tabs">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-8">
                        <ul class="nav nav-tabs fixednav">
                            <li><a href="#" runat="server">Fees</a></li>
                            <li><a href="#" runat="server">Prepaid Cards</a></li>
                            <li><a href="#" runat="server">Service Center</a></li>
                            <li><a href="#" runat="server">Exchangers</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <h1 style="text-align: center">Features of VaroPay</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>Wire Transfer</h3>
                        <p>It is a convenient way to fund your account. Upon receipt of the transfer the crediting of money to PM account is performed within 30 seconds.</p>
                        <p><a href="#" runat="server">More About Wire Transfer</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>Electronic Currency</h3>
                        <p>Perfect Money system works with a significant number of e-currencies and, owing to this, the account funding can be performed by means of e-currencies. Such transaction can be performed automatically via merchants of these payment systems.</p>
                        <p><a href="#" runat="server">More About E-Currency</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <div class="caption">
                        <h3>Exchange Partners</h3>
                        <p>Represent another way to fund your account. Multi-currency of exchange partners of Prefect Money and their time-proved reliability turns the funding of a system account into a simple and safe operation.</p>
                        <p><a href="#" runat="server">More About Exchange Partners</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="varo-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#var-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#var-carousel" data-slide-to="1"></li>
                <li data-target="#var-carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <div class="carousel-caption">
                        <h1>First Slide</h1>
                    </div>
                </div>
                <div class="item">
                    <div class="carousel-caption">
                        <h1>Second Slide</h1>
                    </div>
                </div>
                <div class="item">
                    <div class="carousel-caption">
                        <h1>Third Slide</h1>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#varo-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#varo-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
</asp:Content>

﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Varopay._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="row">
        <div class="col-md-12 pad-right-0">
            <div class="mainbody-bg">
                <div id="CarouselMain" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#CarouselMain" data-slide-to="0" class="active"></li>
                        <li data-target="#CarouselMain" data-slide-to="1"></li>
                        <li data-target="#CarouselMain" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Images/white.jpg" class="transparent-img" />
                            <div class="carousel-caption">
                                <h1>Make Fast And Safe Payments With VaroPay.</h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/white.jpg" class="transparent-img" />
                            <div class="carousel-caption">
                                <h1>Second Slide</h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/white.jpg" class="transparent-img" />
                            <div class="carousel-caption">
                                <h1>Third Slide</h1>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#CarouselMain" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#CarouselMain" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>                    
                    <a runat="server" href="#fixed-nav" class="arrow-down fixed-circle">
                        <span class="glyphicon glyphicon-chevron-down circle margin-15-topbt"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 pad-right-0">
            <div class="container">
                <div id="fixed-nav">
                    <div class="container">
                        <div class="row" id="navbar-bottom">
                            <div class="col-md-12">
                                <ul class="nav nav-tabs float-right navbar-font">
                                    <li><a href="#" runat="server">Fees</a></li>
                                    <li><a href="#" runat="server">Service Center</a></li>
                                    <li><a href="#" runat="server">Exchangers</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h1 style="text-align: center; padding-bottom: 5%">Features of VaroPay</h1>
                        </div>
                        </div>
                        <div class="row" id="thumbnail-feature">
                            <div class="col-md-4">
                                        <h3>Wire Transfer</h3>
                                        <p>It is a convenient way to fund your account. Upon receipt of the transfer the crediting of money to VaroPay account is performed within 30 seconds.</p>
                                        <p><a href="#" runat="server">More About Wire Transfer</a></p>
                                    </div>
                            <div class="col-md-4">
                                        <h3>Electronic Currency</h3>
                                        <p>VaroPay system works with a significant number of e-currencies and, owing to this, the account funding can be performed by means of e-currencies. Such transaction can be performed automatically via merchants of these payment systems.</p>
                                        <p><a href="#" runat="server">More About E-Currency</a></p>
                            </div>
                            <div class="col-md-4">
                                        <h3>Exchange Partners</h3>
                                        <p>Represent another way to fund your account. Multi-currency of exchange partners of VaroPay and their time-proved reliability turns the funding of a system account into a simple and safe operation.</p>
                                        <p><a href="#" runat="server">More About Exchange Partners</a></p>    
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <%--<a href="#" class="btn btn-primary" runat="server">Get Started</a>--%>
    </div>
</asp:Content>

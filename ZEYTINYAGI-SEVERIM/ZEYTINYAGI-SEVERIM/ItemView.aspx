<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ItemView.aspx.cs" Inherits="ZEYTINYAGI_SEVERIM.ItemView" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container" ng-app="yagviewapp" ng-controller="yagviewcontroller">
            <div class="row">
                <div class="col-lg-12 col-md-12 mb-5">
                    <!-- https://placehold.co/600x400?text=Ya%C4%9F%20Foto%C4%9Fraf%C4%B1 -->
                    <!-- <img class="img-thumbnail" src="https://placehold.co/600x400?text=Ya%C4%9F%20Foto%C4%9Fraf%C4%B1 "
                        alt=""> -->
                    <div id="demo" style="height:500px" class="carousel slide" data-interval="2000" data-ride="carousel"
                        data-pause="hover">
                        <!-- data-pause="hover" hoverda dur7durur -->
                        <!-- false otomatik dönmemesini sağlar-->
                        <ol class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1" class=""></li>
                            <li data-target="#demo" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner text-center secondaryBackgroundColor" style="height:500px">

                            <div class="carousel-item active align-middle" style="height:500px">
                                <div class="justify-content-center">
                                    <img ng-src="{{yagimizangular.Foto1}}" class="w-50 align-middle">
                                    <div class="carousel-caption  ">
                                        {{yagimizangular.Foto1}}
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item  justify-content-center" style="height:500px">
                                <img ng-src="{{yagimizangular.Foto2}}" class="w-50 m-auto ">
                                <div class="carousel-caption ">
                                    {{yagimizangular.Foto2}}
                                    <!-- yolunu verdim çünkü aklıma başka bir şey gelmedi -->
                                </div>
                            </div>
                            <div class="carousel-item align-middle" style="height:500px">
                                <img ng-src="{{yagimizangular.Foto3}}" class="w-50 align-middle">
                                <div class="carousel-caption ">
                                    {{yagimizangular.Foto3}}
                                </div>
                            </div>
                        </div>

                        <a class="carousel-control-prev carousel-control-prev-override"
                            style="filter: invert(100%) !important;" href="#demo" role="button" data-slide="prev">
                            <span class=" carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next carousel-control-next-override"
                            style="filter: invert(100%) !important;" href="#demo" role="button" data-slide="next">
                            <span class=" carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="card">

                        <div class="card-header secondaryBackgroundColor">
                            {{yagimizangular.Adi}}
                        </div>

                        <div class="card-body thirdlyBackgroundColor">
                            {{yagimizangular.aciklama}}
                        </div>

                        <div class="card-footer secondaryBackgroundColor">
                            {{yagimizangular.Fiyat}}TL+{{yagimizangular.KDV}}%KDV
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">

        <script>

            var url_string = window.location;
            var url = new URL(url_string);
            var yagID = url.searchParams.get("id");


            var yagimiz;

            var app = angular.module("yagviewapp", []);
            app.controller("yagviewcontroller", function ($scope, $http, $interval) {



                $http({
                    method: 'GET',
                    url: 'https://localhost:44361/DATABASE_BD.json'
                }).then(function (resp) {
                    var zeytinyaglari;
                    zeytinyaglari = resp.data.zeytinyaglari;
                    zeytinyaglari.forEach(element => {
                        if (element.id == yagID) {
                            yagimiz = element;
                        }
                    });
                    $scope.yagimizangular = yagimiz;
                });



            });

        </script>

    </asp:Content>
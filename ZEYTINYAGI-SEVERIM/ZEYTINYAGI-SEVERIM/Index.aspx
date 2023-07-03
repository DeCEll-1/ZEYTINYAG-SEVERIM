<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs"
    Inherits="ZEYTINYAGI_SEVERIM.Index" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div ng-app="list" ng-controller="listcontroller">

            <div class="container mt-4">
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
                            <img ng-src="{{randomyag1.Foto1}}" class="w-50 m-auto ">
                            <div class="carousel-caption">
                                {{ randomyag1.aciklama }}
                            </div>
                        </div>
                        <div class="carousel-item  justify-content-center" style="height:500px">
                            <img ng-src="{{randomyag2.Foto1}}" class="w-50 m-auto ">
                            <div class="carousel-caption">
                                {{ randomyag2.aciklama }}
                            </div>
                        </div>
                        <div class="carousel-item align-middle" style="height:500px">
                            <img ng-src="{{randomyag3.Foto1}}" class="w-50 m-auto ">
                            <div class="carousel-caption">
                                {{ randomyag3.aciklama }}
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





            <div class="container mt-4 ">
                <div class="row">
                    <!-- {{yomama}} -->

                    <div class="col-lg-3 col-md-4 col-sm-6" ng-repeat="yag in zeytinyaglari">
                        <div class="card">
                            <div class="card-body">
                                <img ng-src="{{yag.Foto1}}" class="rounded-circle img-thumbnail" alt="">
                                <p class="card-text">
                                    {{yag.Adi}} <br>
                                    {{yag.aciklama}}
                                </p>
                            </div>
                            <div class="card-footer">
                                <a href="/ItemView.aspx?id={{yag.id}}" class="btn btn-warning btn-sm w-100">Detay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">

        <script type="text/javascript">


            var app = angular.module("list", []);
            app.controller('listcontroller', function ($scope, $http, $interval) {
                $http({
                    method: 'GET',
                    url: 'https://localhost:44361/DATABASE_BD.json'
                }).then(function (resp) {
                    $scope.zeytinyaglari = resp.data.zeytinyaglari;
                    $scope.randomyag1 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                    $scope.randomyag2 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                    $scope.randomyag3 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                });
                $interval(function () {
                    $http({
                        method: 'GET',
                        url: 'https://localhost:44361/DATABASE_BD.json'
                    }).then(function (resp) {
                        $scope.zeytinyaglari = resp.data.zeytinyaglari;
                        $scope.randomyag1 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                        $scope.randomyag2 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                        $scope.randomyag3 = resp.data.zeytinyaglari[Math.floor(Math.random() * resp.data.zeytinyaglari.length)]
                    });
                    // $scope.yomama = "a";
                }, 10000);

            });


        </script>

    </asp:Content>
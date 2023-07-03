<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs"
    Inherits="ZEYTINYAGI_SEVERIM.AddItem" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div ng-app="additem" ng-controller="additemcontroller" class="card">

            <div class="card-header bg-gradient">
                <h4 class="card-title">Ürün Ekle</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ml-3">
                        <div class="mb-3 mt-3">
                            zattiri zort zut jsona bir şeyler eklemek için yaptıydım sonra yapmadım kaldı böyle<br>
                            <label class="form-label">İsim</label>
                            <input type="text" id="lbl_name" Class="form-control"></input>
                        </div>
                    </div>
                </div>



                <div class="row">
                    <div class="col-xlg-12 col-md-12 ml-3">
                        <div class="mb-3 mt-3">
                            <label class="form-label">Fiyat</label>
                            <input type="text" id="tb_Fiyat" Class="form-control"></input>
                        </div>
                    </div>

                </div>





                <div class="row">

                    <div class="col-lg-4 col-md-4 float-start">
                        <div class="float-left">
                            <div class="col-lg-12 col-md-12">
                                <div class="mb-3 mt-3">
                                    <label class="form-label">Resim Seçiniz</label>
                                    <input type="file" ID="fu_Image" Class="form-control"></input>
                                </div>
                            </div>
                            <div class="mb-3 mt-3 ml-3">
                                <label class="form-label ">Resim Seçiniz</label><br>
                                <img id="img_image" class="img-thumbnail" style=""
                                    src="https://via.placeholder.com/600x400" alt="600x400">
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-4 float-start">
                        <div class="float-left">
                            <div class="col-lg-12 col-md-12">
                                <div class="mb-3 mt-3">
                                    <label class="form-label">Resim Seçiniz</label>
                                    <input type="file" ID="fu_Image" Class="form-control"></input>
                                </div>
                            </div>
                            <div class="mb-3 mt-3 ml-3">
                                <label class="form-label ">Resim Seçiniz</label><br>
                                <img id="img_image" class="img-thumbnail" style=""
                                    src="https://via.placeholder.com/600x400" alt="600x400">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 float-start">
                        <div class="float-left">
                            <div class="col-lg-12 col-md-12">
                                <div class="mb-3 mt-3">
                                    <label class="form-label">Resim Seçiniz</label>
                                    <input type="file" ID="fu_Image" Class="form-control"></input>
                                </div>
                            </div>
                            <div class="mb-3 mt-3 ml-3">
                                <label class="form-label ">Resim Seçiniz</label><br>
                                <img id="img_image" class="img-thumbnail" style=""
                                    src="https://via.placeholder.com/600x400" alt="600x400">
                            </div>
                        </div>
                    </div>

                </div>

                <div class="card-footer float-left w-100 align-middle">

                    <div class="float-right">

                        <button id="btn_create" class="btn btn-success">Ürün Ekle</button>

                        <a href="#" class=" btn float-end btn-secondary me-4">Ürünler Listesine Git</a>

                    </div>
                </div>

            </div>


    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
        <script src="../Assets/Scripts/ImagePreview.js"></script>






    </asp:Content>
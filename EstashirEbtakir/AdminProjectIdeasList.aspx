<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminProjectIdeasList.aspx.cs" Inherits="EstashirEbtakir.AdminProjectIdeasList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6">
        </button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 7">
        </button>
    </div>



    <!-- *********************** Innovation Lab Description ************************** -->

    <div class="description-container m-5">
        <div class="row">
            <div class="logo-section col-3 p-0 m-0">
                <img class="img-fluid w-75" src="Images/Innovation_Lab_Logo.png" alt="">
            </div>

        </div>

    </div>

    <!-- **********************Sections Tabs*************************** -->

    <div class="sections-tabs row m-5 p-lg-5">

        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link active m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="ideas-tab" data-bs-toggle="tab"
                    data-bs-target="#ideas" type="button" role="tab" aria-controls="ideas" aria-selected="false">
                    قيد المراجعة</button>
            </li>

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="consultancies-tab" data-bs-toggle="tab"
                    data-bs-target="#consultancies" type="button" role="tab" aria-controls="consultancies" aria-selected="false">
                    تم النشر</button>
            </li>



        </ul>


        <div class="tab-content" id="myTabContent">

            <!------------------------------------------ Ideas Section ------------------------------------>
            <div class="tab-pane fade" id="ideas" role="tabpanel" aria-labelledby="ideas-tab">
                <div class="tabs-content-container row">

                    <!-- Cards -->
                    <asp:DataList ID="DataListIdea" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="IdeaTable">

                                <tr>

                                    <th>اسم المشروع</th>
                                    <th>التاريخ</th>
                                    <th>الحالة</th>
                                    <th>عرض</th>
                                </tr>
                                <tr>
                                    <td>اسم المشروع</td>

                                    <td></td>
                                    <td>نشر</td>
                                    <div class="go-to-sections-homepage-container-area row mt-lg-5">
                        <div class="go-to-ideas-homepage-container col-6 ps-lg-3">
                            <h3 class="go-to-ideas-homepage">
                                <td><a href="IdeasSectionHomePage.aspx">الانتقال إلى القسم</a></td>
                            </h3>
                            <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                </div>

            </div>




            <!------------------------------------------ Consultancies Section ------------------------------------>
            <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
                <div class="tabs-content-container row">

                    <h3> Ideas Section</h3>
                    <!-- Cards -->
                    <asp:DataList ID="DataListCons" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="ConsTable">


                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                </div>
                <!--------------->

                <div class="go-to-sections-homepage-container-area row mt-lg-5">
                    <div class="go-to-consultancies-homepage-container col-6 ps-lg-3">
                        <h3 class="go-to-consultancies-homepage">

                            <a href="ConsultationsSectionHomePage.aspx">الانتقال إلى القسم</a>


                        </h3>
                        <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                    </div>
                </div>

            </div>


        </div>

    </div>

</asp:Content>

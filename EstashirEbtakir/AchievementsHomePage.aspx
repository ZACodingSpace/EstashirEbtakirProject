<%@ Page Title="الإنجازات" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AchievementsHomePage.aspx.cs" Inherits="EstashirEbtakir.AchievementsHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="achievements-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">


        <div class="achievements-links-container">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="AchievementsHomePage.aspx">الإنجازات</a>
        </div>

        <div class="achievements-subsections-tabs-container row m-0 p-0 p-lg-5">
            <div class="subsections-tabs-container row m-0 p-0">

                <div class="subsection-name-container col-3">
                    <a href="EventsHomePage.aspx" class="subsection-name">الفعاليات</a>
                </div>

                <div class="subsection-name-container col-3">
                    <a href="ParticipationsHomePage.aspx" class="subsection-name">المشاركات</a>
                </div>

                <div class="subsection-name-container col-3">
                    <a href="AchievementsHomePage.aspx" class="subsection-name active">الإنجازات</a>
                </div>

            </div>
        </div>

        <div class="achievements-description-container row pe-lg-4 mt-lg-5">

            <div class="achievements-page-name-container">
                <h3 class="achievements-page-name">الإنجازات</h3>
            </div>

            <div class="achievements-page-description-container">
                <p class="achievements-page-description mt-lg-2">
                    نبذة عن قسم الإنجازات
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="achievements-search-bar-container col-6">

                <div class="achievements-serach-bar ms-lg-1 me-lg-1">
                    <input class="achievements-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="achievements-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-achievements ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-achievements ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 ">

        <!-- Cards -->

        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_6.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز الأول</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_1.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز الثاني</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_6.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز الثالث</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_1.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز الرابع</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_6.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز الخامس</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Achievement Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_1.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">الإنجاز السادس</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>




    </div>


    <div class="d-flex justify-content-center">

        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>

    </div>


</asp:Content>

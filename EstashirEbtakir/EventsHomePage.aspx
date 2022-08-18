<%@ Page Title="الفعاليات" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="EventsHomePage.aspx.cs" Inherits="EstashirEbtakir.EventsHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="events-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">


        <div class="events-links-container">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="EventsHomePage.aspx">الفعاليات</a>
        </div>

        <div class="events-subsections-tabs-container row m-0 p-0 p-lg-5">
            <div class="subsections-tabs-container row m-0 p-0">

                <div class="subsection-name-container col-3">
                    <a href="EventsHomePage.aspx" class="subsection-name active">الفعاليات</a>
                </div>

                <div class="subsection-name-container col-3">
                    <a href="ParticipationsHomePage.aspx" class="subsection-name">المشاركات</a>
                </div>

                <div class="subsection-name-container col-3">
                    <a href="AchievementsHomePage.aspx" class="subsection-name">الإنجازات</a>
                </div>

            </div>
        </div>

        <div class="events-description-container row pe-lg-4 mt-lg-5">

            <div class="events-page-name-container">
                <h3 class="events-page-name">الفعاليات</h3>
            </div>

            <div class="events-page-description-container">
                <p class="events-page-description mt-lg-2">
                    نبذة عن قسم الفعاليات
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="events-search-bar-container col-6">

                <div class="events-serach-bar ms-lg-1 me-lg-1">
                    <input class="events-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="events-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-events ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-events ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 ">

        <!-- Cards -->

        <!-- Event Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_2.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">اسم الفعالية</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Event Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_4.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">اسم الفعالية</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Event Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_2.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">اسم الفعالية</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Event Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_4.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">اسم الفعالية</h3>
                        </div>
                        <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                    </div>

                </div>
            </div>
        </div>


        <!-- Event Card -->
        <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

                <div class="event-img-container row m-0 p-0">
                    <img class="event-img p-0 m-0" src="Images/Event_Img_2.jpg" alt="Logo">

                    <div class="overlay-content-container">
                        <div class="event-name-container">
                            <h3 class="event-name">اسم الفعالية</h3>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ParticipationsEventsAchievementsHomePage.aspx.cs" Inherits="EstashirEbtakir.ParticipationsEventsAchievementsHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <!-- Sections -->
    <div class="sections-tabs row p-lg-5">

        <!-- Tabs Names -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="events-tab" data-bs-toggle="tab" data-bs-target="#events" type="button"
                    role="tab" aria-controls="events" aria-selected="true">
                    الفعاليات</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="participations-tab" data-bs-toggle="tab" data-bs-target="#participations" type="button" role="tab"
                    aria-controls="participations" aria-selected="false">
                    المشاركات</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="achievements-tab" data-bs-toggle="tab" data-bs-target="#achievements"
                    type="button" role="tab" aria-controls="achievements" aria-selected="false">
                    الإنجازات</button>
            </li>

        </ul>

        <!-- Tabs Contents -->
        <div class="tab-content" id="myTabContent">

            <!------------------------------------------ Events Section ------------------------------------>
            <div class="tab-pane fade show active" id="events" role="tabpanel" aria-labelledby="events-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

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
            </div>


            <!------------------------------------------ Participations Section ------------------------------------>
            <div class="tab-pane fade" id="participations" role="tabpanel" aria-labelledby="participations-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

                    <!-- Cards -->

                    <!-- Participation Card -->
                    <div class="event-card-container col p-xl-3 p-lg-2">
                        <div class="event-card p-lg-1 p-0 m-0">

                            <div class="event-img-container row m-0 p-0">
                                <img class="event-img p-0 m-0" src="Images/Event_Img_3.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
                                    </div>
                                    <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!-- Participation Card -->
                    <div class="event-card-container col p-xl-3 p-lg-2">
                        <div class="event-card p-lg-1 p-0 m-0">

                            <div class="event-img-container row m-0 p-0">
                                <img class="event-img p-0 m-0" src="Images/Event_Img_5.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
                                    </div>
                                    <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                                </div>

                            </div>
                        </div>
                    </div>

              
                    <!-- Participation Card -->
                    <div class="event-card-container col p-xl-3 p-lg-2">
                        <div class="event-card p-lg-1 p-0 m-0">

                            <div class="event-img-container row m-0 p-0">
                                <img class="event-img p-0 m-0" src="Images/Event_Img_3.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
                                    </div>
                                    <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!-- Participation Card -->
                    <div class="event-card-container col p-xl-3 p-lg-2">
                        <div class="event-card p-lg-1 p-0 m-0">

                            <div class="event-img-container row m-0 p-0">
                                <img class="event-img p-0 m-0" src="Images/Event_Img_5.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
                                    </div>
                                    <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                                </div>

                            </div>
                        </div>
                    </div>

                    
                    <!-- Participation Card -->
                    <div class="event-card-container col p-xl-3 p-lg-2">
                        <div class="event-card p-lg-1 p-0 m-0">

                            <div class="event-img-container row m-0 p-0">
                                <img class="event-img p-0 m-0" src="Images/Event_Img_3.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
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
                                <img class="event-img p-0 m-0" src="Images/Event_Img_5.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
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
                                <img class="event-img p-0 m-0" src="Images/Event_Img_3.jpg" alt="Logo">

                                <div class="overlay-content-container">
                                    <div class="event-name-container">
                                        <h3 class="event-name">المشاركات</h3>
                                    </div>
                                    <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">تفاصيل</button>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
            </div>



            <!------------------------------------------ Achievements Section ------------------------------------>
            <div class="tab-pane fade" id="achievements" role="tabpanel" aria-labelledby="achievements-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

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
            </div>


        </div>
    </div>


</asp:Content>

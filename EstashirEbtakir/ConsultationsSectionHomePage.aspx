<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultationsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ConsultationsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="consultingPage-container">
    <div class="consultingPage">
       <p>الرئيسية / الأقسام/ الاستشارات</p>
        <h1>الاستشارات</h1>
        <p>نص بسيط عن قسم الاستشارات</p>

        <div class="search-bar">

            <button class="b1">احجز استشارة</button>

            <div class="search-consultants">
                <input type="search" name="search-feild" value="البحث" />
                <button class="b2"> <img src="Images/data-transfer.png" width="35" height="35" /></button>
                <button class="b3"><img src="Images/filter-list.png" width="35" height="35"/>  </button>
            </div>
        </div>
    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 "> 

         <!-- Cards -->

                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. عفراء عطية</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مساعد - قسم تقنية المعلومات</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>


                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. منار سلامة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مشارك - قسم علوم الحاسب</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>


                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">أ. حنان الأحمدي</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">محاضر - قسم علوم الحاسب</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>

                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. هند بيطار</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مساعد - قسم نظم معلومات</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>


         <!-- Cards -->

                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. عفراء عطية</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مساعد - قسم تقنية المعلومات</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>


                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. منار سلامة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مشارك - قسم علوم الحاسب</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>


                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">أ. حنان الأحمدي</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">محاضر - قسم علوم الحاسب</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>

                    <!-- Consultation Card -->
                    <div class="consultation-card-container col p-xl-3 p-lg-2">

                        <div class="consultation-card">

                            <!-- First Section of the card -->
                            <div class="counselor-img-container row m-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png" alt="Logo">
                            </div>


                            <!-- Second Section of the card -->
                            <div class="counselor-name-container row mt-5">
                                <h3 class="counselor-name mt-xl-4 mt-lg-3">د. هند بيطار</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="counselor-information-container p-0 m-0">
                                <p class="counselor-information m-0 p-0">أستاذ مساعد - قسم نظم معلومات</p>
                                <p class="counselor-information m-0 p-0">كلية الحاسبات وتقنيةالمعلومات</p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row m-0 p-0 mt-4 mb-3">
                                <button class="consultation-details-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">تفاصيل</button>
                                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" formaction="BrowsProject.aspx">احجز</button>
                            </div>

                        </div>

                    </div>

    </div>
          </div>
</asp:Content>

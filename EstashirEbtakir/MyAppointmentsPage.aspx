<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="MyAppointmentsPage.aspx.cs" Inherits="EstashirEbtakir.MyAppointmentsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img class="img-fluid" src="Images/Profile_Icon.png" alt="..." />
                    <input id="name" runat="server" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="job" runat="server" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a href="UserProfile.aspx"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="MyIdeasPage.aspx"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a class="active" href="MyAppointmentsPage.aspx"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="MyProjectsPage.aspx"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ مواعيدي</div>

            <div class="tabs-content-container row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">

                <!-- Cards -->

                <!-- Idea Card -->
                <div class="idea-card-container col p-xl-3 p-lg-2">
                    <div class="idea-card">

                         <!-- Second Section of the card -->
                        <div class="idea-name-container row">
                            <h3 class="idea-name">الموعد الاول</h3>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">
                                التاريخ: 
                                <input id="date1" type="text" class="text-field4" placeholder="02/05/2022" readonly/>
                            </p>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">
                                الوقت: 
                                <input id="time1" type="text" class="text-field4" placeholder="10:30" readonly/>
                            </p>
                        </div>
                        <!-- Last Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">اسم المستشار
                                : 
                                <input id="consultantname1" type="text" class="text-field4" placeholder="د.هند بيطار" readonly/>
                            </p>
                        </div>
                    </div>
                  </div>

                <!-- Idea Card -->
                <div class="idea-card-container col p-xl-3 p-lg-2">
                    <div class="idea-card">

                        <!-- First Section of the card -->
                        <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                            <img class="idea-logo img-fluid p-xl-4 p-lg-4"  src="Icons/appointment.png" alt="Logo">
                        </div>
                         <!-- Second Section of the card -->
                        <div class="idea-name-container row">
                            <h3 class="idea-name">الموعد الثاني</h3>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">
                                التاريخ: 
                                <input id="date2" type="text" class="text-field4" placeholder="05/08/2022" readonly/>
                            </p>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">
                                الوقت: 
                                <input id="time2" type="text" class="text-field4" placeholder="1:00" readonly/>
                            </p>
                        </div>
                        <!-- Last Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">
                                اسم المستشار: 
                                <input id="consultantname2" type="text" class="text-field4" placeholder="د. منار سلامة" readonly/>
                            </p>
                        </div>
                    </div>
                  </div>

    
            </div>
        </div>
    </div>
</asp:Content>

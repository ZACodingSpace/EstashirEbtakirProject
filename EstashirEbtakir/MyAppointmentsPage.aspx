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

                         <!-- First Section of the card -->
                        <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                            <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
                        </div>
                        <!-- Second Section of the card -->
                        <div class="idea-name-container row">
                            <h4 class="idea-name">الموعد</h4>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">تفاصيل الموعد </p>
                        </div>
                        <!-- Last Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">تفاصيل الموعد </p>
                        </div>
                    </div>
                  </div>

                <!-- Idea Card -->
                <div class="idea-card-container col p-xl-3 p-lg-2">
                    <div class="idea-card">

                        <!-- First Section of the card -->
                        <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                            <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
                        </div>
                        <!-- Second Section of the card -->
                        <div class="idea-name-container row">
                            <h4 class="idea-name">الموعد</h4>
                        </div>
                        <!-- Third Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">تفاصيل الموعد </p>
                        </div>
                        <!-- Last Section of the card -->
                        <div class="idea-description-container">
                            <p class="idea-description m-0 col-8">تفاصيل الموعد </p>
                        </div>

                    </div>
                </div>



            </div>
        </div>
    </div>
</asp:Content>

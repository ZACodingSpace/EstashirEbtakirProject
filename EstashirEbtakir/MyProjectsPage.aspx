<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="MyProjectsPage.aspx.cs" Inherits="EstashirEbtakir.MyProjectsPage" %>

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
                <li><a href="#"><i class="fas fa-id-card"></i>معلومات الحساب </a></li>
                <li><a href="#"><i class="fas fa-lightbulb"></i>أفكاري </a></li>
                <li><a href="#"><i class="fas fa-calendar-check"></i>مواعيدي </a></li>
                <li><a class="active" href="#"><i class="fas fa-file-alt"></i>مشاريعي </a></li>
                <li><a href="#"><i class="fas fa-award"></i>الترقية لمستشار </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="tabs-content-container row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 ">

                <!-- Cards -->

                <!-- Project Card -->
                <div class="project-card-container col p-xl-3 p-lg-2">
                    <div class="project-card">

                        <!-- First Section of the card -->
                        <div class="project-logo-container row m-0">
                            <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_1.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-container row mt-3">
                            <h3 class="project-name" id="nameP" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-container row mt-3 p-0">
                            <div class="college-name-container row p-0">
                                <h6 class="college-label col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-name col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-container row p-0">
                                <h6 class="major-label col-4 p-0">التخصص</h6>
                                <h6 class="major-name col-8" id="majorP" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>


                        <!-- Last Section of the card -->
                        <div class="card-button-container row mt-4 mb-3">
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


                <!-- Project Card -->
                <div class="project-card-container col p-xl-3 p-lg-2">
                    <div class="project-card">

                        <!-- First Section of the card -->
                        <div class="project-logo-container row m-0">
                            <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_2.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-container row mt-3">
                            <h3 class="project-name" id="H1" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-container row mt-3 p-0">
                            <div class="college-name-container row p-0">
                                <h6 class="college-label col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-name col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-container row p-0">
                                <h6 class="major-label col-4 p-0">التخصص</h6>
                                <h6 class="major-name col-8" id="H3" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>

                        <!-- Last Section of the card -->
                        <div class="card-button-container row mt-4 mb-3">
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


                <!-- Project Card -->
                <div class="project-card-container col p-xl-3 p-lg-2">
                    <div class="project-card">

                        <!-- First Section of the card -->
                        <div class="project-logo-container row m-0">
                            <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_3.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-container row mt-3">
                            <h3 class="project-name" id="H4" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-container row mt-3 p-0">
                            <div class="college-name-container row p-0">
                                <h6 class="college-label col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-name col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-container row p-0">
                                <h6 class="major-label col-4 p-0">التخصص</h6>
                                <h6 class="major-name col-8" id="H6" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>

                        <!-- Last Section of the card -->
                        <div class="card-button-container row mt-4 mb-3">
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


            </div>

        </div>


    </div>
   


</asp:Content>

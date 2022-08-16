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
                <li><a href="UserProfile.aspx"><i class="fas fa-id-card"></i>&nbsp معلومات الحساب</a></li>
                <li><a href="MyIdeasPage.aspx"><i class="fas fa-lightbulb"></i>&nbsp أفكاري</a></li>
                <li><a href="MyAppointmentsPage.aspx"><i class="fas fa-calendar-check"></i>&nbsp مواعيدي </a></li>
                <li><a class="active" href="MyProjectsPage.aspx"><i class="fas fa-file-alt"></i>&nbsp مشاريعي </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="tabs-content-containerP row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">

                <!-- Cards -->

                <!-- Project Card -->
                <div class="project-card-containerP col p-xl-3 p-lg-2">
                    <div class="project-cardP">

                        <!-- First Section of the card -->
                        <div class="project-logo-containerP row m-0">
                            <img class="Project-logoP img-fluid p-0" src="Images/Project_Logo_1.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-containerP row mt-3">
                            <h3 class="project-nameP" id="nameP" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-containerP row mt-3 p-0">
                            <div class="college-name-containerP row p-0">
                                <h6 class="college-labelP col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-nameP col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-containerP row p-0">
                                <h6 class="major-labelP col-4 p-0">التخصص</h6>
                                <h6 class="major-nameP col-8" id="majorP" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>


                        <!-- Last Section of the card -->
                        <div class="card-button-containerP row mt-4 mb-3">
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <div class="buttinDivider"></div>
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


                <!-- Project Card -->
                <div class="project-card-containerP col p-xl-3 p-lg-2">
                    <div class="project-cardP">

                        <!-- First Section of the card -->
                        <div class="project-logo-containerP row m-0">
                            <img class="Project-logoP img-fluid p-0" src="Images/Project_Logo_2.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-containerP row mt-3">
                            <h3 class="project-nameP" id="H1" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-containerP row mt-3 p-0">
                            <div class="college-name-containerP row p-0">
                                <h6 class="college-labelP col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-nameP col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-containerP row p-0">
                                <h6 class="major-labelP col-4 p-0">التخصص</h6>
                                <h6 class="major-nameP col-8" id="H3" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>

                        <!-- Last Section of the card -->
                        <div class="card-button-containerP row mt-4 mb-3">
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <div class="buttinDivider"></div>
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


                <!-- Project Card -->
                <div class="project-card-containerP col p-xl-3 p-lg-2">
                    <div class="project-cardP">

                        <!-- First Section of the card -->
                        <div class="project-logo-containerP row m-0">
                            <img class="Project-logoP img-fluid p-0" src="Images/Project_Logo_3.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-containerP row mt-3">
                            <h3 class="project-nameP" id="H4" runat="server">اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-containerP row mt-3 p-0">
                            <div class="college-name-containerP row p-0">
                                <h6 class="college-labelP col-4 p-0">حالة المشروع</h6>
                                <h6 class="college-nameP col-8">مقبول/مرفوص</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-containerP row p-0">
                                <h6 class="major-labelP col-4 p-0">التخصص</h6>
                                <h6 class="major-nameP col-8" id="H6" runat="server">تقنية المعلومات</h6>
                            </div>
                        </div>

                        <!-- Last Section of the card -->
                        <div class="card-button-containerP row mt-4 mb-3">
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="EditDeleteProject.aspx">تعديل/حذف</button>
                            <div class="buttinDivider"></div>
                            <button class="project-details-buttonP p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>


            </div>

        </div>


    </div>
   


</asp:Content>

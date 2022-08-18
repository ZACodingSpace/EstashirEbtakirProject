<%@ Page Title="المشاريع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ProjectsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="projects-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

        <div class="projects-links-container pe-lg-4 pt-lg-2 ">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="">المشاريع</a>
        </div>

        <div class="projects-description-container row pe-lg-4 mt-lg-5">

            <div class="projects-page-name-container">
                <h3 class="projects-page-name">المشاريع</h3>
            </div>

            <div class="projects-page-description-container">
                <p class="projects-page-description mt-xl-2">
                    نبذة عن قسم المشاريع
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="add-project-button-container col-6">
                <button class="add-project-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="AddProject.aspx">إضافة مشروع</button>
            
            
            </div>

            <div class="projects-search-bar-container col-6">

                <div class="projects-serach-bar ms-lg-1 me-lg-1">
                    <input class="projects-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="projects-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 ">

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
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="collegeP" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="majorP" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
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
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H2" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H3" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
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
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H5" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H6" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                </div>

            </div>
        </div>


        <!-- Project Card -->
        <div class="project-card-container col p-xl-3 p-lg-2">
            <div class="project-card">

                <!-- First Section of the card -->
                <div class="project-logo-container row m-0">
                    <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_4.jpg" alt="Logo">
                </div>

                <!-- Second Section of the card -->
                <div class="project-name-container row mt-3">
                    <h3 class="project-name" id="H7" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H8" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H9" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                </div>

            </div>
        </div>


        <!-- Project Card -->
        <div class="project-card-container col p-xl-3 p-lg-2">
            <div class="project-card">

                <!-- First Section of the card -->
                <div class="project-logo-container row m-0">
                    <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_5.jpg" alt="Logo">
                </div>

                <!-- Second Section of the card -->
                <div class="project-name-container row mt-3">
                    <h3 class="project-name" id="H10" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H11" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H12" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                </div>

            </div>
        </div>

        <!-- Project Card -->
        <div class="project-card-container col p-xl-3 p-lg-2">
            <div class="project-card">

                <!-- First Section of the card -->
                <div class="project-logo-container row m-0">
                    <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_6.jpg" alt="Logo">
                </div>

                <!-- Second Section of the card -->
                <div class="project-name-container row mt-3">
                    <h3 class="project-name" id="H13" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H14" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H15" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
                </div>

            </div>
        </div>


        <!-- Project Card -->
        <div class="project-card-container col p-xl-3 p-lg-2">
            <div class="project-card">

                <!-- First Section of the card -->
                <div class="project-logo-container row m-0">
                    <img class="Project-logo img-fluid p-0" src="Images/Project_Logo_1.jpg" alt="Logo">
                </div>

                <!-- Second Section of the card -->
                <div class="project-name-container row mt-3">
                    <h3 class="project-name" id="H16" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H17" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H18" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
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
                    <h3 class="project-name" id="H19" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H20" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H21" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
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
                    <h3 class="project-name" id="H22" runat="server">اسم المشروع</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="project-information-container row mt-3 p-0">
                    <div class="college-name-container row p-0">
                        <h6 class="college-label col-4 p-0">الكلية</h6>
                        <h6 class="college-name col-8" id="H23" runat="server">كلية الحاسبات وتقنية المعلومات</h6>
                    </div>

                    <!-- Forth Section of the card -->
                    <div class="major-information-container row p-0">
                        <h6 class="major-label col-4 p-0">التخصص</h6>
                        <h6 class="major-name col-8" id="H24" runat="server">تقنية المعلومات</h6>
                    </div>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="ProjectDetails.aspx">تفاصيل</button>
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

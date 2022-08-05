<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EstashirEbtakir.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ************************************************* -->

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                aria-label="Slide 4">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
                aria-label="Slide 5">
            </button>
        </div>

        <!-- Slides -->
        <div class="carousel-inner">

            <!-- Statistics Slide -->
            <div class="carousel-item active">
                <img src="Images/Statistics.jpg" class="d-block w-100" style="height: 70vh;" alt="...">
            </div>

            <!-- Projects Section Slide -->
            <div class="carousel-item">
                <img src="Images/Projects.jpg" class="d-block w-100" style="height: 70vh;" alt="...">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="ProjectsSectionHomePage.aspx" class="slide-button p-lg-2">المشاريع</a>
                </div>
            </div>

            <!-- Events & Activities Section Slide -->
            <div class="carousel-item">
                <img src="Images/Events & Activities.jpg" class="d-block w-100" style="height: 70vh;" alt="...">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="#" class="slide-button p-lg-2">الفعاليات والمشاركات</a>
                </div>
            </div>

            <!-- Ideas Section Slide -->
            <div class="carousel-item">
                <img src="Images/Ideas.jpg" class="d-block w-100" style="height: 70vh;" alt="...">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="IdeasSectionHomePage.aspx" class="slide-button p-lg-2">الأفكار المقترحة</a>
                </div>
            </div>

            <!-- Consultancy Section Slide -->
            <div class="carousel-item">
                <img src="Images/Consultancy.jpg" class="d-block w-100" style="height: 70vh;" alt="...">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="ConsultingSectionHomePage.aspx" class="slide-button p-lg-2">الاستشارات</a>
                </div>
            </div>


        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- *********************** Innovation Lab Description ************************** -->

    <div class="description-container mt-lg-5 mb-lg-5 ps-lg-5 pe-lg-5">
        <div class="row">
            <div class="logo-section col-3 p-0 m-0">
                <img class="img-fluid w-75" src="Images/Innovation Lab Logo.png" alt="">
            </div>
            <div class="description-section col-9 p-0 m-0">
                <p class="IL-description">
                    منصة استشر وابتكر هي منصة تابعة لمعمل الابتكارات بعمادة التعلم الإلكتروني والتعليم عن بعد بجامعة الملك
          عبدالعزيز. تستهدف المنصة جميع المهتمين بالأفكار والاستشارات والمشاريع الأكاديمية من كافة فئات المجتمع.
                </p>
            </div>
        </div>


    </div>

    <!-- ************************************************* -->

    <div class="sections-tabs row p-lg-5">

        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="projects-tab" data-bs-toggle="tab" data-bs-target="#projects" type="button"
                    role="tab" aria-controls="projects" aria-selected="true">
                    المشاريع</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="events-activities-tab" data-bs-toggle="tab" data-bs-target="#events-activities"
                    type="button" role="tab" aria-controls="events-activities" aria-selected="false">
                    الفعاليات والمشاركات</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="ideas-tab" data-bs-toggle="tab" data-bs-target="#ideas" type="button" role="tab"
                    aria-controls="ideas" aria-selected="false">
                    الأفكارالمقترحة</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="consultancies-tab" data-bs-toggle="tab" data-bs-target="#consultancies"
                    type="button" role="tab" aria-controls="consultancies" aria-selected="false">
                    الاستشارات</button>
            </li>

        </ul>


        <div class="tab-content" id="myTabContent">

            <!------------------------------------------ Projects Section ------------------------------------>
            <div class="tab-pane fade show active" id="projects" role="tabpanel" aria-labelledby="projects-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

                    <!-- Cards -->

                    <!-- Project Card -->
                    <div class="project-card-container col p-xl-4 p-lg-3">
                        <div class="project-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="project-logo-container row m-0">
                                <img class="Project-logo img-fluid p-0" src="Images/Project Logo 1.jpg" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="project-name-container row mt-3">
                                <h3 class="project-name">اسم المشروع</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="project-information-container row mt-3 pe-2">
                                <div class="college-name-container row">
                                    <h6 class="college-label col-4">الكلية</h6>
                                    <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                                </div>

                                <!-- Forth Section of the card -->
                                <div class="major-information-container row">
                                    <h6 class="major-label col-4">التخصص</h6>
                                    <h6 class="major-name col-8">تقنية المعلومات</h6>
                                </div>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                            </div>

                        </div>
                    </div>


                    <!-- Project Card -->
                    <div class="project-card-container col p-xl-4 p-lg-3">
                        <div class="project-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="project-logo-container row m-0">
                                <img class="Project-logo img-fluid p-0" src="Images/Project Logo 3.jpg" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="project-name-container row mt-3">
                                <h3 class="project-name">اسم المشروع</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="project-information-container row mt-3 pe-2">
                                <div class="college-name-container row">
                                    <h6 class="college-label col-4">الكلية</h6>
                                    <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                                </div>

                                <!-- Forth Section of the card -->
                                <div class="major-information-container row">
                                    <h6 class="major-label col-4">التخصص</h6>
                                    <h6 class="major-name col-8">تقنية المعلومات</h6>
                                </div>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                            </div>

                        </div>
                    </div>


                    <!-- Project Card -->
                    <div class="project-card-container col p-xl-4 p-lg-3">
                        <div class="project-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="project-logo-container row m-0">
                                <img class="Project-logo img-fluid p-0" src="Images/Project Logo 2.jpg" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="project-name-container row mt-3">
                                <h3 class="project-name">اسم المشروع</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="project-information-container row mt-3 pe-2">
                                <div class="college-name-container row">
                                    <h6 class="college-label col-4">الكلية</h6>
                                    <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                                </div>

                                <!-- Forth Section of the card -->
                                <div class="major-information-container row">
                                    <h6 class="major-label col-4">التخصص</h6>
                                    <h6 class="major-name col-8">تقنية المعلومات</h6>
                                </div>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                            </div>

                        </div>
                    </div>


                    <!-- Project Card -->
                    <div class="project-card-container col p-xl-4 p-lg-3">
                        <div class="project-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="project-logo-container row m-0">
                                <img class="Project-logo img-fluid p-0" src="Images/Project Logo 4.jpg" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="project-name-container row mt-3">
                                <h3 class="project-name">اسم المشروع</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="project-information-container row mt-3 pe-2">
                                <div class="college-name-container row">
                                    <h6 class="college-label col-4">الكلية</h6>
                                    <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                                </div>

                                <!-- Forth Section of the card -->
                                <div class="major-information-container row">
                                    <h6 class="major-label col-4">التخصص</h6>
                                    <h6 class="major-name col-8">تقنية المعلومات</h6>
                                </div>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                            </div>

                        </div>
                    </div>


                    <!-- Projects Section Button -->
                    <div class="arrow-section-container row w-100 mt-5">
                        <a class="arrow-container" href="ProjectsSectionHomePage.aspx">
                            <h5 class="arrow-label p-xl-2">الانتقال إلى قسم المشاريع</h5>
                            <i class="fa-solid fa-arrow-left-long px-lg-2"></i>
                        </a>
                    </div>

                </div>
            </div>

            <!------------------------------------------ Events & Activities Section ------------------------------------>
            <div class="tab-pane fade" id="events-activities" role="tabpanel" aria-labelledby="events-activities-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

                    <!-- Cards -->

                    <!-- Event or Activity Card -->
                    <div class="project-card-container col p-xl-4 p-lg-3">
                        <div class="project-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="project-logo-container row m-0">
                                <img class="Project-logo img-fluid p-0" src="Images/Project Logo 3.jpg" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="project-name-container row mt-3">
                                <h3 class="project-name">اسم المشروع</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="project-information-container row mt-3 pe-2">
                                <div class="college-name-container row">
                                    <h6 class="college-label col-4">الكلية</h6>
                                    <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                                </div>

                                <!-- Forth Section of the card -->
                                <div class="major-information-container row">
                                    <h6 class="major-label col-4">التخصص</h6>
                                    <h6 class="major-name col-8">تقنية المعلومات</h6>
                                </div>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                            </div>

                        </div>
                    </div>

                    <!-- Events & Activities Section Button -->
                    <div class="arrow-section-container row w-100 mt-5">
                        <a class="arrow-container" href="#">
                            <h5 class="arrow-label p-xl-2">الانتقال إلى قسم المشاريع</h5>
                            <i class="fa-solid fa-arrow-left-long px-lg-2"></i>
                        </a>
                    </div>

                </div>
            </div>


            <!------------------------------------------ Ideas Section ------------------------------------>
            <div class="tab-pane fade" id="ideas" role="tabpanel" aria-labelledby="ideas-tab">
                <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

                    <!-- Cards -->

                    <!-- Project Card -->
                    <div class="idea-card-container col p-xl-4 p-lg-3">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                                <img class="idea-logo img-fluid p-5" src="Images/lightbulb.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">عنوان الفكرة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

                    <!-- Project Card -->
                    <div class="idea-card-container col p-xl-4 p-lg-3">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                                <img class="idea-logo img-fluid p-5" src="Images/lightbulb.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">عنوان الفكرة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

                    <!-- Project Card -->
                    <div class="idea-card-container col p-xl-4 p-lg-3">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                                <img class="idea-logo img-fluid p-5" src="Images/lightbulb.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">عنوان الفكرة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

                    <!-- Project Card -->
                    <div class="idea-card-container col p-xl-4 p-lg-3">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                                <img class="idea-logo img-fluid p-5" src="Images/lightbulb.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">عنوان الفكرة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="crad-button-container row mt-4 mb-3">
                                <button class="details-button" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

                </div>



                <!-- ***************************************************************** -->

                <!------------------------------------------ Project Sction ------------------------------------>

                <div class="arrow-section-container row w-100 mt-5">
                    <a class="arrow-container" href="IdeasSectionHomePage.aspx">
                        <h5 class="arrow-label p-xl-2">الانتقال إلى قسم الأفكار المقترحة</h5>
                        <i class="fa-solid fa-arrow-left-long px-lg-2"></i>
                    </a>
                </div>

            </div>
        </div>


        <!------------------------------------------ Consultancies Section ------------------------------------>
        <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
            <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">
                <!-- Project Card -->
                <div class="project-card-container col p-xl-4 p-lg-3">
                    <div class="project-card p-lg-1">

                        <!-- First Section of the card -->
                        <div class="project-logo-container row m-0">
                            <img class="Project-logo img-fluid p-0" src="Images/Project Logo 4.jpg" alt="Logo">
                        </div>

                        <!-- Second Section of the card -->
                        <div class="project-name-container row mt-3">
                            <h3>اسم المشروع</h3>
                        </div>

                        <!-- Third Section of the card -->
                        <div class="project-information-container row mt-3 pe-2">
                            <div class="college-name-container row">
                                <h6 class="college-label col-4">الكلية</h6>
                                <h6 class="college-name col-8">كلية الحاسبات وتقنية المعلومات</h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-container row">
                                <h6 class="major-label col-4">التخصص</h6>
                                <h6 class="major-name col-8">تقنية المعلومات</h6>
                            </div>
                        </div>

                        <!-- Last Section of the card -->
                        <div class="crad-button-container row mt-4 mb-3">
                            <button class="details-button" formaction="BrowsProject.aspx">تفاصيل</button>
                        </div>

                    </div>
                </div>

                <!------------------------------------------ Project Sction ------------------------------------>

                <div class="arrow-section-container row w-100 mt-5">
                    <a class="arrow-container" href="ConsultingSectionHomePage.aspx">
                        <h5 class="arrow-label p-xl-2">الانتقال إلى قسم الاستشارات</h5>
                        <i class="fa-solid fa-arrow-left-long px-lg-2"></i>
                    </a>
                </div>

            </div>
        </div>

    </div>
</asp:Content>

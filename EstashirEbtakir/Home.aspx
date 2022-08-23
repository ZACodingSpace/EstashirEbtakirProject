<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EstashirEbtakir.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ************************Carousel (slideshow)************************* -->

    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6">
            </button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 7">
            </button>
        </div>


        <!-- Slides -->
        <div class="carousel-inner">

            <!-- Statistics Slides 
      <div class="carousel-item active d-block w-100" id="Div1" runat="server" style="height: 70vh;">
  
      </div>

      <div class="carousel-item active d-block w-100" id="Div2" runat="server" style="height: 70vh;">
        
      </div>

      <div class="carousel-item active d-block w-100" id="Div3" runat="server" style="height: 70vh;">

      </div>-->

            <!-- Ideas Section Slide -->
            <div class="carousel-item active">
                <img src="Images/Ideas_Img.jpg" class="d-block w-100" style="height: 70vh;" alt="ideas">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="IdeasSectionHomePage.aspx" class="slide-button p-lg-2">الأفكار المقترحة</a>
                </div>
            </div>

            <!-- Consultancy Section Slide -->
            <div class="carousel-item">
                <img src="Images/Consultancy.jpg" class="d-block w-100" style="height: 70vh;" alt="consultations">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="ConsultationsSectionHomePage.aspx" class="slide-button p-lg-2">الاستشارات</a>
                </div>
            </div>

            <!-- Projects Section Slide -->
            <div class="carousel-item">
                <img src="Images/Projects.jpg" class="d-block w-100" style="height: 70vh;" alt="projects">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="ProjectsSectionHomePage.aspx" class="slide-button p-lg-2">المشاريع</a>
                </div>
            </div>

            <!-- Events & Activities Section Slide -->
            <div class="carousel-item">
                <img src="Images/EventsActivities.jpg" class="d-block w-100" style="height: 70vh;" alt="events & activities">
                <div class="overlay"></div>
                <div class="carousel-caption d-none d-md-flex flex-column h-50 align-items-start">
                    <a href="EventsHomePage.aspx" class="slide-button p-lg-2">الفعاليات والمشاركات</a>
                </div>
            </div>

        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
    </div>

    <!-- *********************** Innovation Lab Description ************************** -->

    <div class="description-container m-5">
        <div class="row">
            <div class="logo-section col-3 p-0 m-0">
                <img class="img-fluid w-75" src="Images/Innovation_Lab_Logo.png" alt="">
            </div>
            <div class="description-section col-9 p-0 m-0">
                <p class="IL-description">
                    منصة استشر وابتكر هي منصة تابعة لمعمل الابتكارات بعمادة التعلم الإلكتروني والتعليم عن بعد بجامعة الملك
          عبدالعزيز. تستهدف المنصة جميع المهتمين بالأفكار والاستشارات والمشاريع الأكاديمية من كافة فئات المجتمع.
                </p>
            </div>
        </div>

    </div>

    <!-- **********************Sections Tabs*************************** -->

    <div class="sections-tabs row m-5 p-lg-5">

        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link active m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="ideas-tab" data-bs-toggle="tab"
                    data-bs-target="#ideas" type="button" role="tab" aria-controls="ideas" aria-selected="false">
                    الأفكار المقترحة</button>
            </li>

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="consultancies-tab" data-bs-toggle="tab"
                    data-bs-target="#consultancies" type="button" role="tab" aria-controls="consultancies" aria-selected="false">
                    الاستشارات</button>
            </li>

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="projects-tab" data-bs-toggle="tab"
                    data-bs-target="#projects" type="button" role="tab" aria-controls="projects" aria-selected="true">
                    المشاريع</button>
            </li>

            <li class="nav-item m-0 p-0" role="presentation">
                <button class="nav-link m-0 ps-lg-3 pe-lg-3 pt-lg-2 pb-lg-2" id="events-activities-tab" data-bs-toggle="tab"
                    data-bs-target="#events-activities" type="button" role="tab" aria-controls="events-activities"
                    aria-selected="false">
                    الفعاليات والإنجازات</button>
            </li>

        </ul>


        <div class="tab-content" id="myTabContent">

            <!------------------------------------------ Ideas Section ------------------------------------>
            <div class="tab-pane fade show active" id="ideas" role="tabpanel" aria-labelledby="consultancies-tab">
                <!-- Cards -->
                <div class="tabs-content-container row mt-lg-5 p-5">

                    <asp:DataList ID="DataListIdea" class="page-data-container" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="ideas-table mt-4">

                                <%--First Section of the card--%>
                                <tr class="idea-logo-area">
                                    <td class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4 ps-lg-2 pe-lg-2">
                                        <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png">
                                    </td>
                                </tr>

                                <%--Second Section of the card--%>
                                <tr class="idea-name-area">
                                    <td class="idea-name-container row p-1">
                                        <h3 class="idea-name p-1"><%#Eval("Idea_Name") %></h3>
                                    </td>
                                </tr>

                                <%--Third Section of the card--%>
                                <tr class="idea-descroption-area">
                                    <td class="idea-description-container">
                                        <p class="idea-description m-0 col-8"><%#Eval("Brief") %></p>
                                    </td>
                                </tr>

                                <%-- Last Section of the card --%>
                                <tr class="card-button-area">
                                    <td class="card-button-container row mt-4 mb-3">
                                        <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">عرض الفكرة</button>
                                    </td>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:DataList>


                    <asp:ListBox ID="ListBox1" runat="server" Style="display: none"></asp:ListBox>

                </div>

                <div class="go-to-sections-homepage-container-area row mt-lg-5">
                    <div class="go-to-ideas-homepage-container col-6 ps-lg-3">

                        <a class="go-to-ideas-homepage" href="IdeasSectionHomePage.aspx">الانتقال إلى القسم</a>

                        <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                    </div>
                </div>

            </div>


            <!------------------------------------------ Consultancies Section ------------------------------------>
            <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
                <div class="tabs-content-container row mt-lg-5 p-5">

                    <asp:DataList ID="DataListCons" class="page-data-container" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="counselors-table mt-4 p-0">

                                <%--First Section of the card--%>
                                <tr class="counselor-img-area m-0 p-0">
                                    <td class="counselor-img-container row m-0 p-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                                        <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png">
                                    </td>
                                </tr>

                                <%--Second Section of the card--%>
                                <tr class="counselor-name-area">
                                    <td class="counselor-name-container row mt-5 p-1">
                                        <h3 class="counselor-name mt-xl-4 mt-lg-3 p-1"><%#Eval("Fname") %>  <%#Eval("Lname") %></h3>
                                    </td>
                                </tr>

                                <%--Third Section of the card--%>
                                <tr class="counselor-information-area">
                                    <td class="counselor-information-container p-0 m-0">
                                        <h3 class="counselor-information m-0 p-1"><%#Eval("Position") %> - <%#Eval("Department") %></h3>
                                        <h3 class="counselor-information m-0 p-1"><%#Eval("Faculty") %></h3>
                                    </td>
                                </tr>

                                <!-- Last Section of the card -->
                                <tr class="card-button-area">
                                    <td class="card-button-container row m-0 p-0 mt-4 mb-3">
                                        <button class="consultation-details-button col-4 p-0 ps-2 pe-2">تفاصيل</button>
                                        <button class="consultation-booking-button col-4 p-0 ps-2 pe-2">احجز</button>
                                    </td>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:ListBox ID="ListBoxConsDetails" runat="server" Style="display: none"></asp:ListBox>
                    <asp:ListBox ID="ListBoxConsBooking" runat="server" Style="display: none"></asp:ListBox>

                </div>
                <!--------------->

                <div class="go-to-sections-homepage-container-area row mt-lg-5">
                    <div class="go-to-consultancies-homepage-container col-6 ps-lg-3">

                        <a class="go-to-consultancies-homepage" href="ConsultationsSectionHomePage.aspx">الانتقال إلى القسم</a>

                        <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                    </div>
                </div>

            </div>


            <!------------------------------------------ Projects Section ------------------------------------>

            <div class="tab-pane fade" id="projects" role="tabpanel" aria-labelledby="consultancies-tab">

                <div class="tabs-content-container row mt-lg-5 p-5">

                    <asp:DataList ID="DataListProject" class="page-data-container" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="projects-table mt-4 p-0">

                                <%--First Section of the card--%>
                                <tr class="project-logo-area m-0 p-0">
                                    <td class="project-logo-container row m-0">
                                        <img class="project-logo img-fluid p-0" src="Images/Project_Logo_3.jpg">
                                    </td>
                                </tr>
                                <div class="pic-collegeDetails-container row m-0 pt-4">
                                    <div class="project-picDetails-container col p-xl-5 p-lg-4 pt-md-5">
                                        <h4 class="projectDetails-pic">صورة</h4>
                                        <asp:Image ID="Image1" runat="server" />
                                    </div>
                                </div>


                                <%--Second Section of the card--%>
                                <tr class="project-name-area">
                                    <td class="project-name-container row mt-3 p-1">
                                        <h3 class="project-name p-1"><%#Eval("Project_Name") %></h3>
                                    </td>
                                </tr>

                                <tr class="project-information-area">
                                    <td class="project-information-container row mt-3 p-0">

                                        <%--Third Section of the card--%>
                                        <div class="college-name-container row p-0">
                                            <h6 class="college-label col-4 p-0">الكلية</h6>
                                            <h6 class="college-name col-8" id="H1" runat="server"><%#Eval("Faculty") %></h6>
                                        </div>

                                        <!-- Forth Section of the card -->
                                        <div class="major-information-container row p-0">
                                            <h6 class="major-label col-4 p-0">التخصص</h6>
                                            <h6 class="major-name col-8" id="H2" runat="server"><%#Eval("Major") %></h6>
                                        </div>

                                    </td>
                                </tr>

                                <%-- Last Section of the card --%>
                                <tr class="card-button-area">
                                    <td class="card-button-container row mt-4 mb-3">
                                        <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">تفاصيل</button>
                                    </td>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:ListBox ID="ListBox3" runat="server" Style="display: none"></asp:ListBox>

                </div>

                <!------------------>
                <div class="go-to-sections-homepage-container-area row mt-lg-5">
                    <div class="go-to-projects-homepage-container col-6 ps-lg-3">

                        <a class="go-to-projects-homepage" href="ProjectsSectionHomePage.aspx">الانتقال إلى القسم</a>

                        <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                    </div>
                </div>

            </div>




            <!------------------------------------------ Events & Activities Section ------------------------------------>
            <div class="tab-pane fade" id="events-activities" role="tabpanel" aria-labelledby="events-activities-tab">

                <!-- Cards -->
                <div class="tabs-content-container row mt-lg-5 p-5">

                    <asp:DataList ID="DataListEvent" class="page-data-container" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="events-table mt-4">
                                <tr class="event-img-area">
                                    <td class="event-img-container row m-0 p-0">
                                        <img class="event-img p-0 m-0" src="Images/Event_Img_2.jpg" alt="Logo">

                                        <div class="overlay-content-container">
                                            <div class="event-name-container">
                                                <h3 class="event-name"><%#Eval("Name") %></h3>
                                            </div>
                                            <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">تفاصيل</button>
                                        </div>

                                    </td>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:ListBox ID="ListBox4" runat="server" Style="display: none"></asp:ListBox>

                </div>

                <!------------------>
                <div class="go-to-sections-homepage-container-area row mt-lg-5">
                    <div class="go-to-events-homepage-container col-6 ps-lg-3">

                        <a class="go-to-events-homepage" href="EventsHomePage.aspx">الانتقال إلى القسم</a>

                        <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
                    </div>
                </div>

            </div>


        </div>
    </div>
    <!--------------------------------------------------------->
    <script>
        //Ideas
        var b1 = document.getElementsByClassName("idea-details-button");
        var b2 = document.getElementById("ContentPlaceHolder1_ListBox1").children;

        var lst2 = []
        for (var y = 0; y < b2.length; y++) {
            lst2.push(b2[y].value)
        }

        for (var z = 0; z < lst2.length; z++) {
            b1[z].id = lst2[z]
            b1[z].addEventListener('click', function special() { window.open(`IdeasDetails.aspx?id=${this.id}`) })
        }

        //---------------------------

        //Consultant-details
        var b1 = document.getElementsByClassName("consultation-details-button");
        var b2 = document.getElementById("ContentPlaceHolder1_ListBoxConsDetails").children;

        var lst2 = []
        for (var y = 0; y < b2.length; y++) {
            lst2.push(b2[y].value)
        }

        for (var z = 0; z < lst2.length; z++) {
            b1[z].id = lst2[z]

            b1[z].addEventListener('click', function special() { window.open(`ConsultantDetails.aspx?id=${this.id}`) })

        }

        //---------------------------

        //Consultant-booking

        var b1 = document.getElementsByClassName("consultation-booking-button");
        var b2 = document.getElementById("ContentPlaceHolder1_ListBoxConsBooking").children;

        var lst2 = []
        for (var y = 0; y < b2.length; y++) {
            lst2.push(b2[y].value)
        }

        for (var z = 0; z < lst2.length; z++) {
            b1[z].id = lst2[z]

            b1[z].addEventListener('click', function special() { window.open(`BookConsultation.aspx?id=${this.id}`) })

        }

        //---------------------------

        //Projects
        var p1 = document.getElementsByClassName("project-details-button");
        var p2 = document.getElementById("ContentPlaceHolder1_ListBox3").children;

        var lstp2 = []
        for (var y = 0; y < p2.length; y++) {
            lstp2.push(p2[y].value)
        }

        for (var z = 0; z < lstp2.length; z++) {
            p1[z].id = lstp2[z]
            p1[z].addEventListener('click', function special() { window.open(`ProjectDetails.aspx?id=${this.id}`) })
        }

        //---------------------------

        //Events and participation
        var e1 = document.getElementsByClassName("event-details-button");
        var e2 = document.getElementById("ContentPlaceHolder1_ListBox4").children;

        var lste2 = []
        for (var y = 0; y < e2.length; y++) {
            lste2.push(e2[y].value)
        }

        for (var z = 0; z < lste2.length; z++) {
            e1[z].id = lste2[z]
            e1[z].addEventListener('click', function special() { window.open(`UserViewEvent.aspx?id=${this.id}`) })
        }

    </script>

</asp:Content>

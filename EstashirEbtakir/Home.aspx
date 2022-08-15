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
      <!--<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5">
      </button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6">
      </button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 7">
      </button>-->
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
        <img src="Images/Ideas.jpg" class="d-block w-100" style="height: 70vh;" alt="ideas">
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
          <a href="ConsultingSectionHomePage.aspx" class="slide-button p-lg-2">الاستشارات</a>
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
        <img src="Images/Events & Activities.jpg" class="d-block w-100" style="height: 70vh;" alt="events & activities">
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
      <div class="tab-pane fade  show active" id="ideas" role="tabpanel" aria-labelledby="ideas-tab">
        <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

          <!-- Cards -->

          <!-- Idea Card -->
          <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
              </div>

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h3 class="idea-name">الفكرة الأولى</h3>
              </div>

              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة
                  مختصرة عن الفكرة المضافة </p>
              </div>

              <!-- Last Section of the card -->
              <div class="card-button-container row mt-4 mb-3">
                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض
                  الفكرة</button>
              </div>

            </div>
          </div>

          <!-- Idea Card -->
          <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
              </div>
              <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h3 class="idea-name">الفكرة الثانية</h3>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة
                  مختصرة عن الفكرة المضافة </p>
              </div>

              <!-- Last Section of the card -->
              <div class="card-button-container row mt-4 mb-3">
                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض
                  الفكرة</button>
              </div>

            </div>
          </div>


          <!-- Idea Card -->
          <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
              </div>
              <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h3 class="idea-name">الفكرة الثالثة</h3>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة
                  مختصرة عن الفكرة المضافة </p>
              </div>

              <!-- Last Section of the card -->
              <div class="card-button-container row mt-4 mb-3">
                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض
                  الفكرة</button>
              </div>

            </div>
          </div>


          <!-- Idea Card -->
          <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png" alt="Logo">
              </div>
              <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h3 class="idea-name">الفكرة الرابعة</h3>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة
                  مختصرة عن الفكرة المضافة </p>
              </div>

              <!-- Last Section of the card -->
              <div class="card-button-container row mt-4 mb-3">
                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض
                  الفكرة</button>
              </div>

            </div>
          </div>

        </div>

        <div class="go-to-sections-homepage-container-area row mt-lg-5">
          <div class="go-to-ideas-homepage-container col-6 ps-lg-3">
            <h3 class="go-to-ideas-homepage">
              الانتقال إلى القسم
            </h3>
            <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
          </div>
        </div>

      </div>


      <!------------------------------------------ Consultancies Section ------------------------------------>
      <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
        <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

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
                <button class="consultation-details-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">تفاصيل</button>
                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">احجز</button>
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
                <button class="consultation-details-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">تفاصيل</button>
                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">احجز</button>
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
                <button class="consultation-details-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">تفاصيل</button>
                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">احجز</button>
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
                <button class="consultation-details-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">تفاصيل</button>
                <button class="consultation-booking-button col-4 p-0 ps-2 pe-2"
                  formaction="BrowsProject.aspx">احجز</button>
              </div>

            </div>

          </div>

        </div>

        <div class="go-to-sections-homepage-container-area row mt-lg-5">
          <div class="go-to-consultancies-homepage-container col-6 ps-lg-3">
            <h3 class="go-to-consultancies-homepage">
              الانتقال إلى القسم
            </h3>
            <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
          </div>
        </div>

      </div>


      <!------------------------------------------ Projects Section ------------------------------------>
      <div class="tab-pane fade" id="projects" role="tabpanel" aria-labelledby="projects-tab">
        <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

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
                <h3>
                 <!--   <asp:Label ID="ProjName" runat="server" Text=""></asp:Label>
              -->   </h3>
              </div>

              <!-- Third Section of the card -->
              <div class="project-information-container row mt-3 p-0">
                <div class="college-name-container row p-0">
                  <h6 class="college-label col-4 p-0">الكلية</h6>
                  <h6 class="college-name col-8" id="collegeP" runat="server">
                    
                     <!-- <asp:Label ID="CollegeName" runat="server" Text="Remove This Text" ></asp:Label>
                -->
                  </h6>
                </div>

                <!-- Forth Section of the card -->
                <div class="major-information-container row p-0">
                  <h6 class="major-label col-4 p-0">التخصص</h6>
                  <h6 class="major-name col-8" id="majorP" runat="server">
                      
                 <!--     <asp:Label ID="MajorName" runat="server" Text="" ></asp:Label>
                -->
                  </h6>
                </div>
              </div>

              <!-- Last Section of the card -->
              <div class="card-button-container row mt-4 mb-3">
                <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx">تفاصيل</button>
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
                <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx">تفاصيل</button>
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
                <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx">تفاصيل</button>
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
                <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx">تفاصيل</button>
              </div>

            </div>
          </div>

        </div>

        <div class="go-to-sections-homepage-container-area row mt-lg-5">
          <div class="go-to-projects-homepage-container col-6 ps-lg-3">
            <h3 class="go-to-projects-homepage">
              الانتقال إلى القسم
            </h3>
            <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
          </div>
        </div>

      </div>


      <!------------------------------------------ Events & Activities Section ------------------------------------>
      <div class="tab-pane fade" id="events-activities" role="tabpanel" aria-labelledby="events-activities-tab">
        <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5">

          <!-- Cards -->

          <!-- Event Card -->
          <div class="event-card-container col p-xl-3 p-lg-2">
            <div class="event-card p-lg-1 p-0 m-0">

              <div class="event-img-container row m-0 p-0">
                <img class="event-img p-0 m-0" src="Images/Event_Img_1.jpg" alt="Logo">

                <div class="overlay-content-container">
                  <div class="event-name-container">
                    <h3 class="event-name">اسم الفعالية</h3>
                  </div>
                  <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                    formaction="#">تفاصيل</button>
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
                  <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                    formaction="#">تفاصيل</button>
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
                    <h3 class="event-name">اسم الفعالية</h3>
                  </div>
                  <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                    formaction="#">تفاصيل</button>
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
                  <button class="event-details-button mt-5 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                    formaction="#">تفاصيل</button>
                </div>

              </div>
            </div>
          </div>

        </div>

        <div class="go-to-sections-homepage-container-area row mt-lg-5">
          <div class="go-to-events-homepage-container col-6 ps-lg-3">
            <h3 class="go-to-events-homepage">
              الانتقال إلى القسم
            </h3>
            <i class="fa-solid fa-arrow-left-long me-lg-3"></i>
          </div>
        </div>

      </div>


    </div>
  </div>

</asp:Content>

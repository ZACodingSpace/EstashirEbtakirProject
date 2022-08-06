<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ProjectsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="project">

        <h1>المشاريع</h1>
        <p>نص بسيط عن قسم المشاريع</p>

        <div class="search-add-bar">

            <button class="project-btn" formaction="AddProject.aspx">اضافة مشروع</button>

            <div class="search-project">

                <input type="search" name="search-feild" value="البحث" />
                <button class="project-btn">بحث</button>
                <button class="project-btn">تصفية</button>

            </div>

        </div>

    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 ps-lg-5 pe-lg-5">

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


        </div>
</asp:Content>

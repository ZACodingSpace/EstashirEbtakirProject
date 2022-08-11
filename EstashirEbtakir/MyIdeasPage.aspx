<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="MyIdeasPage.aspx.cs" Inherits="EstashirEbtakir.MyIdeasPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img src="Images/ProfileIcon.png" alt="..." />
                    <input id="Text1" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="Text2" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a href="#"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a class="active" href="#"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a href="#"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="#"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
                <li><a href="#"><i class="fas fa-award"></i> الترقية لمستشار </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="profile-path">الرئيسية/ الملف الشخصي/ أفكاري</div>

            <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 ps-lg-5 pe-lg-5">

          <!-- Cards -->

          <!-- Project Card -->
          <div class="idea-card-container col p-xl-4 p-lg-3">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                <img src="Images/lightbulb.png" alt="Logo">
              </div>

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h5>عنوان الفكرة</h5>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">  نبذة مختصرة عن الفكرة  </p>
              </div>

              <!-- Last Section of the card -->
              <div class="crad-button-container row mt-4 mb-3">
                <button class="details-button" formaction="#">عرض الفكرة</button>
              </div>

            </div>
          </div>

          <!-- Project Card -->
          <div class="idea-card-container col p-xl-4 p-lg-6">
            <div class="idea-card p-lg-1">

              <!-- First Section of the card -->
              <div class="idea-logo-container row m-0 p-3 ps-5 pe-5">
                <img src="Images/lightbulb.png" alt="Logo">
              </div>

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h5>عنوان الفكرة</h5>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">  نبذة مختصرة عن الفكرة  </p>
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
                <img src="Images/lightbulb.png" alt="Logo">
              </div>

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h5>عنوان الفكرة</h5>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">    نبذة مختصرة عن الفكرة  </p>
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
                <img src="Images/lightbulb.png" alt="Logo">
              </div>

              <!-- Second Section of the card -->
              <div class="idea-name-container row">
                <h5>عنوان الفكرة</h5>
              </div>


              <!-- Third Section of the card -->
              <div class="idea-description-container">
                <p class="idea-description m-0 col-8">    نبذة مختصرة عن الفكرة  </p>
              </div>

              <!-- Last Section of the card -->
              <div class="crad-button-container row mt-4 mb-3">
                <button class="details-button" formaction="#">عرض الفكرة</button>
              </div>

            </div>
          </div>

        </div>



        </div>
    </div>
</asp:Content>

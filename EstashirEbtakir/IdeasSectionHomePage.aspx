<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.IdeasSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="idea">

        <h1 class="idea-name">الأفكار</h1>
        <p>لإستعراض أبرز الأفكار الإبداعية والإستفادة منها</p>

        <div class="search-idea-bar">

 
        </div>
      
        

      <button formaction="AddIdea.aspx">إضافة الفكرة</button>
   
         <br>
         
         </br>
        
             <div class="search-idea">
                <input type="search" name="search-feild" value="البحث" />
                <button>بحث</button>
                <button>تصفية</button>
        </div>
    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 ps-lg-5 pe-lg-5">

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
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
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
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
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
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
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
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
                <p class="idea-description m-0 col-8"> هنا تتم كتابة نبذة مختصرة عن الفكرة kkjhjhjmmnjالمضافة </p>
              </div>

              <!-- Last Section of the card -->
              <div class="crad-button-container row mt-4 mb-3">
                <button class="details-button" formaction="#">عرض الفكرة</button>
              </div>

            </div>
          </div>

        </div>


</asp:Content>

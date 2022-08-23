<%@ Page Title="اسم المشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="EstashirEbtakir.ProjectDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a class="project-btn" href="ProjectsSectionHomePage.aspx">رجوع</a>
    
    <div class="browse-project-area">
       
         <div class="projectDetails-ideaLabel-container row">
        <div class="projectDetails-name-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-nameDetails">اسم الفكرة</h4>
            <input type="text" class="projectDetails-name-field" id="projectDetailsNameField" runat="server"  >
            <asp:Label ID="done" class="projectDetails-name" runat="server" Text=" "></asp:Label>
        </div>
        </div>



        <div class="projectDetails-description-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-description-label">نبذة عن الفكرة</h4>
            <textarea class="projectDetails-description-textarea" id="ProjectDetailsDescription" rows="10" runat="server"></textarea>
        </div>


         <div class="pic-collegeDetails-container row m-0 pt-4">
        <div class="project-picDetails-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-pic">صورة</h4>
            <input type="file" class="Porject-Details-img" id="Pimg" accept="image/png, image/gif, image/jpeg" runat="server"/>
       </div>

         <div class="projectDetails-college-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-college">الكلية</h4>
            <input type="text" class="projectDetails-CollegeI" id="collegeProjectDetails" runat="server"/> </div>
        </div>

         <div class="major-supervisorDetails-container row m-0 pt-4">
         <div class="projectDetails-major-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-major">التخصص</h4>
            <input type="text" class="projectDetails-Major" id="majorProjectDetails" runat="server"/>
         </div>

         <div class="projectDetails-supervisor-container col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="projectDetails-supervisor">المشرف</h4>
            <input type="text"  class="projectDetails-Supervisor" id="supervisorP" runat="server"/> 
         </div>
         </div>

        <div class="projectDetails-members-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-members-label">الأعضاء</h4>
            <textarea class="projectDetails-members-textarea" id="TextareaProjectDetails" rows="10" runat="server">   </textarea>       
        </div>

        <div class="gradeDetails-file-container row m-0 pt-4">
         <div class="projectDetails-grade-container col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="projectDetails-grade">الدرجة</h4>
            <input type="text"  class="projectDetails-Grade" id="gradeP" runat="server"/>
         </div>

         <div class="projectDetails-file-container col p-xl-5 p-lg-4 pt-md-5">
             <h4  class="projectDetails-file">الملف</h4>
              <input type="file" class="projectDetails-File" id="fileProjectDetails" accept="application/pdf" runat="server"/>
         </div>
       </div>


        <div class="projectDetails-technology-container row">
        <div class="projectDetails-technology-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-technologyDetails">التقنيات الممكن استخدامها لتنفيذ المشروع</h4>
            <input type="text" class="projectDetails-technology-field" id="Text1" runat="server"  >
            <asp:Label ID="Label1" class="projectDetails-technology" runat="server" Text=" "></asp:Label>
        </div>
        </div>


        </div>
               <div class="add-projectDetails-page-buttons-container m-lg-0 mt-md-5">
            <button formaction="" class="edit-projectDetails-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">تعديل</button>
            <button formaction="" class="delete-projectDetails-button m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>

    </div>

        <script>
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
        </script>

               
</asp:Content>

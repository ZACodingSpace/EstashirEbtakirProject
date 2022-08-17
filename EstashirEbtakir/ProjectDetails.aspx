<%@ Page Title="اسم المشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="EstashirEbtakir.ProjectDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="projectDetails-page-content">
    <div class="browse-project-area">
        
        <h1 id="nameP" runat="server">اسم المشروع</h1>
        
            <div class="projectBrowse-description-container row p-xl-5 p-lg-4 pt-md-5">
            <h4>نبذة عن المشروع</h4>
            <label for="proname">نبذة:</label>
            </div>


        <div class="pic-college-container row m-0 pt-4">
            <div class="project-pic-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-pic">صورة</h4>
                <a href="path_to_file" download="proposed_file_name">تحميل</a>

            </div>

            <div class="project-college-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-college">الكلية</h4>
                <label for="proname">الكلية:</label>
            </div>

        </div>

        <div class="major-supervisor-container row m-0 pt-4">
            <div class="project-major-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-major">التخصص</h4>
                <label for="proname">التخصص:</label>
            </div>

            <div class="project-supervisor-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-supervisor">المشرف</h4>
                 <label for="proname">المشرف:</label>
            </div>
        </div>

        <div class="project-members-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-members-label">الأعضاء</h4>
            <label for="proname">الأعضاء:</label>
        </div>

        <div class="grade-file-container row m-0 pt-4">
            <div class="project-grade-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-grade">الدرجة</h4>
                <label for="proname">الدرجة:</label>
            </div>

            <div class="project-file-container col p-xl-5 p-lg-4 pt-md-5">
                <h4 class="project-file">الملف</h4>
                <input type="file" class="projectFile" id="fileP" runat="server" />
            </div>
        </div>


        <div class="projectBrowse-tech-container row p-xl-5 p-lg-4 pt-md-5">
            <h4>التقنيات التي تم استخدامها لتنفيذ المشروع</h4>
            <label for="proname">التقنيات:</label>
            </div>





        </div>

            <div class="project-details-buttons-container m-lg-0 mt-md-5">
            <button formaction="" class="edit-projectDetails-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">تعديل</button>
            <button formaction="" class="delete-projectDetails-button m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>

        </div>

</div>

</asp:Content>

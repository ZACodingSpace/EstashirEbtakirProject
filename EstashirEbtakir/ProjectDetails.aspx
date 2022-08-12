<%@ Page Title="اسم المشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="EstashirEbtakir.ProjectDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a class="project-btn" href="ProjectsSectionHomePage.aspx">رجوع</a>

    <div class="browse-project-area">
        
        <h1 id="nameP" runat="server">اسم المشروع</h1>
        
        <div class="browse-project-info">
            <h4>نبذة عن المشروع</h4>
            <p id="aboutP" runat="server">هنا ناخذ النبذة من الداتابيس</p>
            
            <h4>التقنيات المستخدمة</h4>
            <p id="techP"></p>

            <!-- نعرض الصورة؟ -->
            <h4>صورة</h4>
            <img id="imgP" src="#"/> 

            <h4>الكلية</h4>
            <p id="collegeP" runat="server">---</p>

            <h4>التخصص</h4>
            <p id="majorP" runat="server">---</p>
            
            <h4>المشرف</h4>
            <p id="supervisorP" runat="server">---</p>

            <h4>الدرجة</h4>
            <p id="gradeP" runat="server">---</p>

            <!-- يحمل الملف -->
            <h4>ملف المشروع</h4>
            <button class="project-btn">تحميل</button>

        </div>
        <button class="project-btn" formaction="EditDeleteProject.aspx">تعديل\حذف</button>
    </div>
</asp:Content>

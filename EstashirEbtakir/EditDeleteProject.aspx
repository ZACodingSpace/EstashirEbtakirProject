<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="EditDeleteProject.aspx.cs" Inherits="EstashirEbtakir.EditDeleteProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a class="project-btn" href="ProjectsSectionHomePage.aspx">رجوع</a>

    <div class="edit-delete-project-area">
        
        <h1 id="nameP" runat="server">اسم المشروع</h1>

        <div class="edit-delete-project-info">

            <h4>نبذة عن المشروع</h4>
            <textarea class="about-project" id="aboutP" runat="server"></textarea>

            <h4>الكلية</h4>
            <input type="text" id="collegeP" runat="server"/>

            <h4>التخصص</h4>
            <input type="text" id="majorP" runat="server"/>

            <h4>المشرف</h4>
            <input type="text"/>

            <h4>الدرجة</h4>
            <input type="text" id="gradeP"  runat="server"/>

            <h4>ملف المشروع</h4>
            <button class="project-btn">تحميل</button>

        </div>

        <button class="project-btn">تعديل</button>
        <button class="project-btn">حذف</button>

    </div>
</asp:Content>

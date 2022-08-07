<%@ Page Title="اضافة مشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="EstashirEbtakir.AddProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="add-project-area">

        <a class="project-btn" href="ProjectsSectionHomePage.aspx">رجوع</a>

        <h1>اضافة مشروع</h1>

        <div class="add-project-form">

            <label for="nameP">اسم المشروع</label>
            <input type="text" id="nameP" runat="server"/>

            <label for="aboutP">نبذة عن المشروع</label>
            <textarea class="about-project" id="aboutP" runat="server"></textarea>

            <label for="collegeP">الكلية</label>
            <input type="text" id="collegeP" runat="server"/>

            <label for="majorP">التخصص</label>
            <input type="text" id="majorP" runat="server"/>

            <label for="supervisorP">المشرف</label>
            <input type="text" id="supervisorP" runat="server"/>

            <label for="gradeP">الدرجة</label>
            <input type="text" id="gradeP" runat="server"/>

            <label for="fileP">الملف</label>
            <input type="file" id="fileP"  runat="server"/>

        </div>

        <button class="project-btn" onclick="">اضافة</button>
        <button class="project-btn" formaction="ProjectsSectionHomePage.aspx">الغاء</button>

    </div>
</asp:Content>

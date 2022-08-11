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

            <!-- change to check list -->
          <div class="project-tech-check-list">
                <label for="lang">التقنية المستخدمه</label>
                <select name="التقنية المستخدمه" id="lang">

                    <option value="كتب الكترونية او تطبيقات جوال مدعمة بالواقع المعزز">كتب الكترونية او الواقع المعزز</option>
                    <option value="واجهات التحكم والتفاعل الطبيعي">واجهات التحكم والتفاعل الطبيعي</option>
                    <option value="الواقع الافتراضي و الواقع المعزز">الواقع الافتراضي والمعزز</option>
                    <option value="الذكاء الإصطناعي، تحليل البيانات و الروبوتيك">الذكاء الإصطناعي و تحليل البيانات و الروبوتيك</option>
                    <option value="العرض التجسيمي و الطباعة ثلاثية الأبعاد">العرض التجسيمي و الطباعة ثلاثية الأبعاد</option>
                    <option value="استديو انتاج الوسائط المتعددة">استديو انتاج الوسائط المتعددة</option>

                </select>
            </div>

            <label for="gradeP">صورة</label>
            <input type="file" id="img" runat="server"/>

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
<div class="edit-delete-project-btn">
        <button class="project-btn" onclick="">اضافة</button>
        <button class="project-btn" formaction="ProjectsSectionHomePage.aspx">الغاء</button>
</div>
    </div>
</asp:Content>

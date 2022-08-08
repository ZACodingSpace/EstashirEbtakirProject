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

            <label for="technDropDownList">التقنية المستخدمة</label>
            <asp:DropDownList ID="technDropDownList" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>الذكاء الإصطناعي</asp:ListItem>
                <asp:ListItem>تحليل البيانات و الروبوتيك</asp:ListItem>
                <asp:ListItem>الواقع الافتراضي</asp:ListItem>
                <asp:ListItem>الواقع المعزز</asp:ListItem>
                <asp:ListItem>واجهات التحكم والتفاعل الطبيعي</asp:ListItem>
                <asp:ListItem>العرض التجسيمي</asp:ListItem>
                <asp:ListItem>الطباعة ثلاثية الأبعاد</asp:ListItem>
                <asp:ListItem>استديو انتاج الوسائط المتعددة</asp:ListItem>
                <asp:ListItem>كتب الكترونية</asp:ListItem>
                <asp:ListItem>تطبيقات جوال مدعمة بالواقع المعزز</asp:ListItem>
                <asp:ListItem>أخرى</asp:ListItem>
            </asp:DropDownList>

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

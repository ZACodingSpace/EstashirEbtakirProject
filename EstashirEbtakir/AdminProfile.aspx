<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="EstashirEbtakir.AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="profile_path">الرئيسية/الملف الشخصي/معلومات الحساب</div>
    
    <div class="side_bar">
        <div class="title">
            <div class="logo">
                <img src="Images/ProfileIcon.png" alt="..." />
                <input id="Text1" type="text" class="TextField1" placeholder="الاسم الثنائي" readonly/>
                <input id="Text2" type="text" class="TextField1" placeholder="نوع المستخدم" readonly/>
            </div>
        </div>
        <ul>
            <li><a href="#"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
            <li><a href="#"><i class="fa fa-bar-chart"></i> الإحصائيات </a></li>
            <li><a href="#"><i class="fas fa-lightbulb"></i> الأفكار </a></li>
            <li><a href="#"><i class="fas fa-file-alt"></i> المشاريع</a></li>
            <li><a href="#"><i class="fas fa-comments"></i> الاستشارات </a></li>
            <li><a href="#"><i class="fas fa-check-square"></i> طلبات الترقية </a></li>
        </ul>
    </div>


    <div class="profile_container">
        <p>الاسم: <input id="Text3" type="text" class="TextField2" placeholder="الاسم الثنائي" readonly/></p> 
        <p>البريد الإلكتروني: <input id="Text4" type="text" class="TextField2" placeholder="example@gmail.com" readonly/></p>
        <p>رقم الجوال: <input id="Text5" type="text" class="TextField2" placeholder="05xxxxxxxx"/>   <a href="#">تعديل       </a></p>
        <p>الرقم الوظيفي: <input id="Text6" type="text" class="TextField2" placeholder="2220000" readonly/></p>
        <a href="#"><i class="fas fa-lock"></i> تغيير كلمة المرور </a>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="EstashirEbtakir.UserProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="profile_path">الرئيسية/الملف الشخصي/معلومات الحساب</div>
    <div class="side_bar">
        <div class="title">
            <div class="logo">
                <img src="Images/profile-icon.png" alt="..." />
                <input id="Text1" type="text" class="TextField1" placeholder="الاسم الثنائي" readonly/>
                <input id="Text2" type="text" class="TextField1" placeholder="نوع المستخدم" readonly/>
            </div>
        </div>
        <ul>
            <li><a href="#"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
            <li><a href="#"><i class="fas fa-lightbulb"></i> الأفكار </a></li>
            <li><a href="#"><i class="fas fa-file-alt"></i> المشاريع</a></li>
            <li><a href="#"><i class="fas fa-comments"></i> الاستشارات </a></li>
            <li><a href="#"><i class="fas fa-award"></i> الترقية لمستشار </a></li>
        </ul>
    </div>
    <div class="profile_container">
        <p>الاسم: <input id="Text3" type="text" class="TextField2" placeholder="الاسم الثنائي" readonly/></p> 
        <p>البريد الإلكتروني: <input id="Text4" type="text" class="TextField2" placeholder="example@gmail.com" readonly/></p>
        <p>رقم الجوال: <input id="Text5" type="text" class="TextField2" placeholder="05xxxxxxxx"/>   <a href="#">تعديل       </a></p>
        <p>الرقم الجامعي: <input id="Text6" type="text" class="TextField2" placeholder="2220000" readonly/></p>
        <a href="#"><i class="fas fa-lock"></i> تغيير كلمة المرور </a>
    </div>

</asp:Content>

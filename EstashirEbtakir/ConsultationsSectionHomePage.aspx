<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultationsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ConsultationsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="consultingPage">
       <p>الرئيسية / الأقسام/ الاستشارات</p>
        <h1>الاستشارات</h1>
        <p>نص بسيط عن قسم الاستشارات</p>

        <div class="search-bar">

            <button class="b1">احجز استشارة</button>

            <div class="search-consultants">
                <input type="search" name="search-feild" value="البحث" />
                <button class="b2"> <img src="Images/data-transfer.png" width="35" height="35" /></button>
                <button class="b3"><img src="Images/filter-list.png" width="35" height="35"/>  </button>

             

            </div>

        </div>

        <div class="cards">

            <div class="consultants-cards">
                <div class="top-card">
                    <img src="Images/profile-icon.png" />
                </div>
                <h3>د. عفراء زهير عطية</h3>
                <p>أستاذ مساعد - قسم تقنية المعلومات</p>
                <p>كلية الحاسبات وتقنية المعلومات</p>
                <button class="b4">احجز</button>
                <button class="b5">تفاصيل</button>

            </div>

        </div>
    </div>
</asp:Content>

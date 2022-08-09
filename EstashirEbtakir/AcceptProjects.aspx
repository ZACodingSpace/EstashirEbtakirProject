<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptProjects.aspx.cs" Inherits="EstashirEbtakir.AcceptProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="containerAccept row">

    <div class="profile-page-content-container col-3 row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img src="Images/ProfileIcon.png" alt="..." />
                    <input id="Text1" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="Text2" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a class="active" href="#"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="#"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a href="#"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="#"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
                <li><a href="#"><i class="fas fa-award"></i> الترقية لمستشار </a></li>
            </ul>
        </div>
            </div>
        <div class="left-content-container col-9"> 
     <div class="row behined-navbar"></div>

          <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="profileAccept">

                <div class="profileAcceptcontainer">
     <div class="Accept">
      <h1>قبول المشاريع
       
        </h1>
        
        <div class="accepForm">

            <label for="proname">اسم المشروع:</label>
            <label for="proname"> المشروع</label>


            <label for="supe"> المشرف:</label>
             <label for="supe"> اسم المشرف</label>


            <label for="particit"> الأعضاء المشاركين:</label>
            <label for="particit">اسماء الأعضاء المشاركين</label>


            <label for="abstrac"> نبذة عن المشروع:</label>
            <label for="abstrac">نبذة عن المشروع</label>



            <label for="coll"> الكلية:</label>
            <label for="coll">اسم الكلية</label>

             <label for="major"> التخصص:</label>
             <label for="major">اسم التخصص</label>

            <label for="degree"> الدرجة:</label>
            <label for="degree"> الدرجة</label>

            <label for="fil">تحميل المرفقات</label>
            <a href="test_file.zip" download="تحميل">تحميل</a>
        </div>

        <button>قبول المشروع</button>
        <button>رفض المشروع</button>

    </div>

    </div>


                 </div>
                     </div>
         </div>



</asp:Content>

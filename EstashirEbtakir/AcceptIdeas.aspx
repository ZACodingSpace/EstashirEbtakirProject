<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptIdeas.aspx.cs" Inherits="EstashirEbtakir.AcceptIdeas" %>

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
                <li><a class="active" href="#"><i class="fas fa-id-card"></i>معلومات الحساب </a></li>
                <li><a href="#"><i class="fas fa-lightbulb"></i>أفكاري </a></li>
                <li><a href="#"><i class="fas fa-calendar-check"></i>مواعيدي </a></li>
                <li><a href="#"><i class="fas fa-file-alt"></i>مشاريعي </a></li>
                <li><a href="#"><i class="fas fa-award"></i>الترقية لمستشار </a></li>
            </ul>
        </div>

    </div>

<div class="left-content-container col-9"> 
     <div class="row behined-navbar"></div>

    <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

    <div class="profileAccept">

        <div class="profileAcceptcontainer">
            <div class="Accept">
                <h1>قبول الأفكار
       
                </h1>

                <div class="accepForm">
                    <p>
                        <label for="proname">عنوان الفكرة:</label>
                        <label for="proname">الفكرة</label>
                    </p>


                    <p>
                        <label for="degree">الدرجة:</label>
                        <label for="degree">الدرجة</label>
                    </p>
                    <p>
                        <label for="particit">الأعضاء المشاركين:</label>
                        <label for="particit">اسماء الأعضاء المشاركين</label>
                    </p>
                    <p>
                        <label for="abstrac">نبذة عن الفكرة:</label>
                        <label for="abstrac">نبذة عن الفكرة</label>
                    </p>
                    <p>
                        <label for="fil">تحميل المرفقات</label>
                        <a href="test_file.zip" download="تحميل">تحميل</a>
                    </p>
                </div>
                <p>
                    <button>قبول الفكرة</button>
                    <button>رفض الفكرة</button>
                </p>
            </div>
        </div>
    </div>
    </div>

 </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptProjectPage.aspx.cs" Inherits="EstashirEbtakir.AccepteProjectPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <a href="test_file.zip" download>تحميل</a>
        </div>

        <button>قبول المشروع</button>
        <button>رفض المشروع</button>

    </div>
</asp:Content>

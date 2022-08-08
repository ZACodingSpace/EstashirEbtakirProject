<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptIdeaPage.aspx.cs" Inherits="EstashirEbtakir.AccepteIdeaPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="Accept">
      <h1>قبول الأفكار
       
        </h1>
        
        <div class="accepForm">

            <label for="proname">عنوان الفكرة:</label>
            <label for="proname"> الفكرة</label>


           

            <label for="degree"> الدرجة:</label>
            <label for="degree"> الدرجة</label>
           

            <label for="particit"> الأعضاء المشاركين:</label>
            <label for="particit">اسماء الأعضاء المشاركين</label>


            <label for="abstrac"> نبذة عن الفكرة:</label>
            <label for="abstrac">نبذة عن الفكرة</label>


            <label for="fil">تحميل المرفقات</label>
            <a href="test_file.zip" download>تحميل</a>
        </div>

        <button>قبول الفكرة</button>
        <button>رفض الفكرة</button>

    </div>
</asp:Content>

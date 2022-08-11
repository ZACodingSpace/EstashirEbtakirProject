<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddParticipationEventAchievement.aspx.cs" Inherits="EstashirEbtakir.AddParticipationEventAchievement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="add-Participation-Event">
      <h1>إضافة فعاليات ومشاركات
       
        </h1>
         <div class="radio-butyons">

          <label>تصنيف</label>

           <input type="radio" id="html" name="chice" value="فعالية"/>
           <label1 for="html">فعالية</label1>
           <input type="radio" id="html1" name="chice" value="مشاركة"/>
           <label1 for="html1">مشاركة</label1>
          </div>
        <div class="add-form">

            <label for="p-name"> اسم الفعالية/المشاركة</label>
            <input type="text" id="p-name" />

            <label for="p-about">إضافة نبذة</label>
            <input type="text" id="p-about" />

            

            <label for="p-department">التاريخ</label>
            <input type="text" id="p-department" />

            <label for="p-supervisor">المشرف</label>
            <input type="text" id="p-supervisor" />

            <label for="p-file">إرفاق صور</label>
            <input type="file" id="pp-file" />

            <label for="p-file">إرفاق ملفات</label>
            <input type="file" id="p-file" />

        </div>

        <button>اضافة</button>
        <button>الغاء</button>

    </div>
</asp:Content>

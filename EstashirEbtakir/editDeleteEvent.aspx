<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="editDeleteEvent.aspx.cs" Inherits="EstashirEbtakir.editDeleteEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="event-view-areaU">
         
        <div class="event-name-containerU p-xl-5 p-lg-4 pt-md-5">
            <h4 class="event-nameU">اسم الفعالية</h4>
        </div>

        <div class="event-description-containerU p-xl-5 p-lg-4 pt-md-5">
            <h4 class="event-description-labelU">نبذة عن الفعالية</h4>
            <textarea class="event-description-textareaU" id="eventDescriptionTextareaU" rows="10" runat="server"></textarea>

        </div>

        <div class="eventButtonsU m-lg-0 mt-md-5">
            <button formaction="ParticipationsHomePage.aspx" class="delete-event-buttonU m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>
            <button formaction="ParticipationsHomePage.aspx" class="edit-event-buttonU m-1 ms-xl-4 ms-lg-3" id="Button2" runat="server">تعديل</button>
            <button formaction="ParticipationsHomePage.aspx" class="return-event-buttonU m-1 ms-xl-4 ms-lg-3" id="editEventButtonU" runat="server">رجوع</button>

        </div>
        </div>

</asp:Content>

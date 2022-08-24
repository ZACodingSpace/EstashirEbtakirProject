<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="UserViewEvent.aspx.cs" Inherits="EstashirEbtakir.UserViewEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
           <div class="event-view-areaU">
         
        <div class="event-name-containerU p-xl-5 p-lg-4 pt-md-5" runat="server" id="eventName">
            <h4 class="event-nameU">اسم الفعالية</h4>
        </div>

        <div class="event-description-containerU p-xl-5 p-lg-4 pt-md-5" runat="server" id="eventdes">
             <label for="abstrac" class="event-description-labelU">نبذة عن الفعالية:</label>
        </div>

               <div class="projectDetails-supervisor-container col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="projectDetails-supervisor">المشرف</h4>
            <input type="text"  class="projectDetails-Supervisor" id="supervisorP" runat="server" disabled /> 
         </div>
         </div>

               <div class="pic-collegeDetails-container row m-0 pt-4">
        <div class="project-picDetails-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="projectDetails-pic">صورة</h4>
            <asp:Image ID="Image1" runat="server" />
       </div>
                   <div class="projectDetails-file-container col p-xl-5 p-lg-4 pt-md-5">
             <h4  class="projectDetails-file">الملف</h4>
             <asp:Button ID="downloadFile" class="downloadFile-projectDetails-button m-1 ms-xl-4 ms-lg-3" OnClick="downloadFile_Click" runat="server" Text="تنزيل" />
         </div>
       </div>

        <div class="eventButtonsU m-lg-0 mt-md-5">
            <button formaction="IdeasSectionHomePage.aspx" class="return-event-buttonU m-1 ms-xl-4 ms-lg-3" id="returnEventButtonU" runat="server">رجوع</button>
        </div>
        </div>
</asp:Content>

<%@ Page Title="ادارة مشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="EditDeleteProject.aspx.cs" Inherits="EstashirEbtakir.EditDeleteProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="edit-delete-project-area">
         
        <div class="project-name-containerED p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-nameED">اسم المشروع</h4>
        </div>

        <div class="project-description-containerED p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-description-labelED">نبذة عن المشروع</h4>
            <textarea class="project-description-textareaED" id="projectDescriptionTextareaED" rows="10" runat="server"></textarea>
            <asp:Label id="projectDescriptionMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

        </div>

        <div class="pic-college-containerED row m-0 pt-4">
        <div class="project-pic-containerED col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-picED">صورة</h4>
            <input type="file" class="PorjectimgED" id="PimgED" accept="image/png, image/gif, image/jpeg" runat="server"/>
            <asp:Label id="projectImgMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
       </div>

         <div class="project-college-containerED col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-collegeED">الكلية</h4>
            <input type="text" class="projectCollegeED" id="collegePED" runat="server"/> </div>
            <asp:Label id="projectCollegeMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
        </div>

         <div class="major-supervisor-containerED row m-0 pt-4">
         <div class="project-major-containerED col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-majorED">التخصص</h4>
            <input type="text" class="projectMajorED" id="majorPED" runat="server"/>
             <asp:Label id="projectMajorMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
         </div>

         <div class="project-supervisor-containerED col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="project-supervisorED">المشرف</h4>
            <input type="text"  class="projectSupervisorED" id="supervisorPED" runat="server"/> 
            <asp:Label id="projectSupervisorMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         </div>
         </div>

        <div class="project-members-containerED p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-members-labelED">الأعضاء</h4>
            <textarea class="project-members-textareaED" id="TextareaED" rows="10" runat="server">   </textarea>
           <asp:Label id="projectMembersMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         
        </div>

        <div class="grade-file-container row m-0 pt-4">
         <div class="project-grade-containerED col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="project-gradeED">الدرجة</h4>
            <input type="text"  class="projectGradeED" id="gradePED" runat="server"/>
            <asp:Label id="projectGradeMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         </div>

         <div class="project-file-containerED col p-xl-5 p-lg-4 pt-md-5">
             <h4  class="project-fileED">الملف</h4>
              <input type="file" class="projectFileED" id="fileP" accept="application/pdf" runat="server"/>
              <i class='fa fa-question-circle question-circle'></i>
            <asp:Label id="projectFileMsgED" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
         </div>
       </div>



        <div class="projectButtonsED m-lg-0 mt-md-5">
            <button formaction="ProjectsSectionHomePage.aspx" class="delete-project-buttonED m-1 ms-xl-4 ms-lg-3" id="deleteButtonED" runat="server">حذف</button>
            <button formaction="ProjectsSectionHomePage.aspx" class="edit-project-buttonED m-1 ms-xl-4 ms-lg-3" id="editButtionED" runat="server">تعديل</button>
            <button formaction="ProjectsSectionHomePage.aspx" class="return-project-buttonED m-1 ms-xl-4 ms-lg-3" id="returnButtonED" runat="server">رجوع</button>
        </div>
        </div>



</asp:Content>

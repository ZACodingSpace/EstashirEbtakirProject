<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="EditDeleteIdea.aspx.cs" Inherits="EstashirEbtakir.EditDeleteIdea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div class="edit-delete-idea-areaED">
         
        <div class="idea-name-containerED p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-nameED">اسم الفكرة</h4>
        </div>

        <div class="idea-description-containerED p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-description-labelED">نبذة عن الفكرة</h4>
            <textarea class="idea-description-textareaED" id="ideaDescriptionTextareaED" rows="10" runat="server"></textarea>
            <asp:Label id="ideatDescriptionMsgED" class="error-msg-idea" runat="server" ForeColor="Red"></asp:Label>

        </div>

        <div class="ideaButtonsED m-lg-0 mt-md-5">
            <button formaction="IdeasSectionHomePage.aspx" class="delete-idea-buttonED m-1 ms-xl-4 ms-lg-3" id="deleteIdeaButtonED" runat="server">حذف</button>
            <button formaction="IdeasSectionHomePage.aspx" class="edit-idea-buttonED m-1 ms-xl-4 ms-lg-3" id="editIdeaButtionED" runat="server">تعديل</button>
            <button formaction="IdeasSectionHomePage.aspx" class="return-idea-buttonED m-1 ms-xl-4 ms-lg-3" id="returnIdeaButtonED" runat="server">رجوع</button>
        </div>
        </div>


</asp:Content>

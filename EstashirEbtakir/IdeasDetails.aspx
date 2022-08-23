<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasDetails.aspx.cs" Inherits="EstashirEbtakir.IdeasDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="browse-ideas-area">
       
         <div class="ideaDetails-ideaLabel-container row">
        <div class="ideaDetails-name-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-nameDetails">اسم الفكرة</h4>
            <input type="text" class="ideaDetails-name-field" id="ideaDetailsNameField" runat="server" disabled  >
            <asp:Label ID="done" class="ideaDetails-name" runat="server" Text=" "></asp:Label>
        </div>
        </div>



        <div class="ideaDetails-description-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="ideaDetails-description-label">نبذة عن الفكرة</h4>
            <textarea class="ideaDetails-description-textarea" id="ideaDetailsDescription" rows="10" runat="server" disabled></textarea>
        </div>

        <div class="ideaDetails-technology-container row">
        <div class="ideaDetails-technology-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-technologyDetails">التقنيات الممكن استخدامها لتنفيذ المشروع</h4>
            <input type="text" class="ideaDetails-technology-field" id="Text1" runat="server" disabled  >
            <asp:Label ID="Label1" class="ideaDetails-technology" runat="server" Text=" "></asp:Label>
        </div>
        </div>


        </div>
               <div class="add-ideaDetails-page-buttons-container m-lg-0 mt-md-5">
            <button formaction="" class="edit-ideaDetails-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">تعديل</button>
            <button formaction="" class="delete-ideaDetails-button m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>

    </div>


</asp:Content>

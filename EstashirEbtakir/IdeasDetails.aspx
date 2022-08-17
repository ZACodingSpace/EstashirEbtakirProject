<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasDetails.aspx.cs" Inherits="EstashirEbtakir.IdeasDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ideasDetails-page-content">
    <div class="browse-idea-area">
        
        <h1 id="nameP" runat="server">اسم الفكره</h1>
        
            <div class="ideaBrowse-description-container row p-xl-5 p-lg-4 pt-md-5">
            <h4>نبذة عن الفكرة</h4>
              <label for="proname">نبذة:</label>
            </div>

            <div class="ideaBrowse-tech-container row p-xl-5 p-lg-4 pt-md-5">
            <h4>التقنيات التي تم استخدامها لتنفيذ الفكرة</h4>
            <label for="proname">التقنيات:</label>
            </div>
        </div>

            <div class="ideas-details-buttons-container m-lg-0 mt-md-5">
            <button formaction="" class="edit-ideaDetails-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">تعديل</button>
            <button formaction="" class="delete-ideaDetails-button m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>

        </div>

</div>

</asp:Content>

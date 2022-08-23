<%@ Page Title="تفاصيل الفكرة" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasDetails.aspx.cs" Inherits="EstashirEbtakir.IdeasDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ideas-details-page-container p-5">
        <div class="ideas-details-content-container row p-5">

            <div class="idea-name-details-container row mt-3">
                <h4 class="idea-name-details-label">اسم الفكرة</h4>
                <input type="text" class="idea-details-name pe-5" id="ideaDetailsNameField" runat="server" disabled>
            </div>

            <div class="idea-description-details-container row mt-4">
                <h4 class="idea-description-details-label">نبذة عن الفكرة</h4>
                <textarea class="idea-details-description pe-5" id="ideaDetailsDescription" runat="server" disabled></textarea>
            </div>

            <div class="idea-technology-details-container row mt-3">
                <h4 class="idea-technology-details-label">التقنيات الممكن استخدامها لتنفيذ المشروع</h4>
                <input type="text" class="idea-details-technology" id="Text1" runat="server" disabled>
            </div>

            <div class="idea-etails-back-button-container row mt-3">
                <button formaction="IdeasSectionHomePage.aspx" class="idea-etails-back-button p-1">رجوع</button>
            </div>

        </div>
    </div>


</asp:Content>

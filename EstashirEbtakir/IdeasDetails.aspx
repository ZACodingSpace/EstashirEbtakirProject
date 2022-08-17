<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasDetails.aspx.cs" Inherits="EstashirEbtakir.IdeasDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="add-idea-page-contentD row mt-xl-1 ps-xl-5 pe-xl-5 mt-lg-1 ps-lg-4 pe-lg-4 mt-md-5 ps-md-4 pe-md-4 ">

            <div class="idea-name-containerD p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-nameD">اسم الفكرة</h4>
            <input type="text" class="idea-name-fieldD" id="ideaNameFieldD" runat="server">
            <asp:Label ID="doneD" class="idea-nameD" runat="server" Text=" "></asp:Label>
            </div>

        <div class="idea-description-containerD p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-description-labelD">نبذة عن الفكرة</h4>
            <textarea class="idea-description-textareaD" id="ideaDescriptionTextareaD" rows="10" runat="server"></textarea>
        </div>

            <div class="innovation-containerD p-xl-5 p-lg-4 pt-md-5">
            <h4 class="innovation-lab-technologiesD">التقنيات الممكن استخدامها لتنفيذ الفكرة</h4>
            <input type="text" class="innovationD" id="Text2" runat="server">
            <asp:Label ID="Label2" class="innovationD" runat="server" Text=" "></asp:Label>
            </div>


            <div class="add-idea-page-buttons-containerD m-lg-0 mt-md-5">
            <button formaction="" class="edit-idea-buttonD m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">تعديل</button>
            <button formaction="" class="cancel-idea-buttonD m-1 ms-xl-4 ms-lg-3" id="Button1" runat="server">حذف</button>
           
        </div>
      </div>

</asp:Content>

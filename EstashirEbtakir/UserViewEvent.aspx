<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="UserViewEvent.aspx.cs" Inherits="EstashirEbtakir.UserViewEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
           <div class="event-view-areaU">
         
        <div class="event-name-containerU p-xl-5 p-lg-4 pt-md-5">
            <h4 class="event-nameU">اسم الفعالية</h4>
        </div>

        <div class="event-description-containerU p-xl-5 p-lg-4 pt-md-5">
             <label for="abstrac" class="event-description-labelU">نبذة عن الفعالية:</label>
        </div>

        <div class="eventButtonsU m-lg-0 mt-md-5">
            <button formaction="IdeasSectionHomePage.aspx" class="return-event-buttonU m-1 ms-xl-4 ms-lg-3" id="returnEventButtonU" runat="server">رجوع</button>
        </div>
        </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultantDetails.aspx.cs" Inherits="EstashirEbtakir.consultantDetailes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="consultantDetails-container">
        <div class="consultantDetails">
        <h3>د. عفراء عطية</h3>
        <p>كلية الحاسبات وتقنيةالمعلومات - قسم تقنية المعلومات</p>
        <p>تخصص....</p>
        <p>الخبرات..</p>
        <p>مجالات الاستشارة...</p></div>

        <div class="consultantDate-container">
            <asp:Calendar class="Calendar1" runat="server"></asp:Calendar>
        </div>

        <div class="consultantTime-container"></div>

    </div>




</asp:Content>

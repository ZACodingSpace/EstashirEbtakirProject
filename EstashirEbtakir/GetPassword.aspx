<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="GetPassword.aspx.cs" Inherits="EstashirEbtakir.GetPassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="get-password-container">
     <div class="get-password-form" >
          <div class="get-password" >استعادة كلمة المرور</div> 
        <br><br>
        <div class="email">
            <label > البريد الإلكتروني</label> <br>
            <input class="place" type="email" name="email" required>
        </div>
        <br><br><br>
        <input class="send" type="submit" value="ارسال">
    </div></div>
</asp:Content>

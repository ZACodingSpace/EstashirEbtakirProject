<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="EstashirEbtakir.ChangePassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-change-password">
      
        <div class="change-password" >تغيير كلمة المرور</div> 
        <br><br><br>
        <div class="new-password">
            <label>  كلمة المرور الجديدة</label> <br>
            <input class="place" type="password" name="new-password" required>
        </div>
        <br>

        <div class="confirm-password">
            <label>  تأكيد كلمة المرور </label> <br>
            <input class="place" type="password" name="confirm-password" required>
        </div>
       
        
         <input class="send-password" type="submit" value="تأكيد">
        <!--Redirect to "Password-changed.aspx" -->
       

    </div>
</asp:Content>

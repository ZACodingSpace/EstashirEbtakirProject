<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="EstashirEbtakir.ChangePassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-change-password">
      
        <div class="change-password" >تغيير كلمة المرور</div> 
        <br><br><br>
        <asp:Label id="generalEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
        <div class="new-password">
            <asp:Label id="npassEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
            <label>  كلمة المرور الجديدة</label> <br>
            <input class="place" type="password" runat="server" id="newPassword" name="new-password" required >
        </div>
        <br>

        <div class="confirm-password">
            <asp:Label id="cpassEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
            <label>  تأكيد كلمة المرور </label> <br>
            <input class="place" type="password" runat="server" id="confirmPassword" name="confirm-password" required >
        </div>
       
        
         <!-- <input class="send-password" type="submit" value="تأكيد"> -->
        <asp:Button ID="Button1" runat="server" Text="تغيير"  onclick="ChangePass_Click"/>
        <!--Redirect to "Password-changed.aspx" -->
       

    </div>
</asp:Content>

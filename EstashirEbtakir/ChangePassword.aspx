﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="EstashirEbtakir.ChangePassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-change-password">

        <div class="change-password ">تغيير كلمة المرور</div>
        <asp:Label ID="generalEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>




        <div class="logIn-content-container " role="tabpanel" aria-labelledby="logInTab">

            <div class="logIn-form " method="post">

                <div class="data pt-3">

                    <div class="general-msg-error-container">
                        <asp:Label ID="Label2" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>

                    </div>

                    <div class="logIn-email-container">



                        <asp:Label class="logIn-email" runat="server">كلمة المرور الجديدة</asp:Label>


                        <input class="inputPlace mt-1" type="password" runat="server" id="Password1" name="new-password" required>
                    </div>

                    <div class="logIn-password-container mt-3">
                        <asp:Label ID="logInPassword" class="logIn-password" runat="server">تأكيد كلمة المرور</asp:Label>
                        <input id="passwordInputPlace" class="inputPlace mt-1" runat="server" type="password" name="logInPassword" />
                        <asp:Label ID="Label1" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
                    </div>

                </div>

                <div class="logIn-button-container ">
                    <asp:Button ID="Button2" OnClick="ChangePass_Click" class="logIn-button p-0 ps-xl-5 pe-xl-5 ps-lg-4 pe-lg-4" runat="server" Text="تغيير" />

                </div>


            </div>


        </div>

    </div>




    <!--  <div class="logIn-password-container mt-3">
       
            <asp:Label id="npassEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
           
         <asp:Label  class="logIn-email" runat="server">كلمة المرور الجديدة</asp:Label>
<br>

            <input class="place" type="password" runat="server" id="newPassword" name="new-password" required >
        </div>
        </div>
            <div class="logIn-password-container mt-3">

        <div class="confirm-password">
            <asp:Label id="cpassEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label  class="logIn-email" runat="server">تأكيد كلمة المرور</asp:Label>

             <br>
            <input class="place" type="password" runat="server" id="confirmPassword" name="confirm-password" required >
        </div>
               </div>

        
       <input class="send-password" type="submit" value="تأكيد"> 
        <asp:Button ID="Button1" runat="server" Text="تغيير"  onclick="ChangePass_Click"/>
        Redirect to "Password-changed.aspx"
       

    </div> -->





</asp:Content>

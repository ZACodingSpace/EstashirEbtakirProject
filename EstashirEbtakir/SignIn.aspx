<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="EstashirEbtakir.SignIn" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sign-in-sign-in-page">تسجيل دخول</div>
        <a href="Sign-up.aspx" class="sign-up-sign-in-page">إنشاء حساب</a>

        <div class="sign-in-form" method="post">
            <div class="data">
                <div>
                    <asp:Label ID="Lbmsg" runat="server" Text="" ForeColor="Red"></asp:Label></div>
                <div class="email">
                    <label>البريد الإلكتروني  </label>
                    <br />
                    <input ID="Email" runat="server" class="place" type="email" name="email" />
                    <br />
                    <br />

                </div>

                <div class="password">
                    <label>كلمة المرور  </label>
                    <br />
                    <input ID="Pass" class="place" runat="server" type="password" name="password" />
                    <br />
                    <br />
                </div>

            </div>
            <br>
            <label>
              <!--  <input class="submit" runat="server" type="submit" value="تسجيل الدخول" onclick="login_Click" /> -->
                <asp:Button ID="Button1" runat="server" Text="تسجيل الدخول" onclick="login_Click" /> 
            </label>
            <br>
            <a href="Get-password.aspx" class="forget">هل نسيت كلمة المرور؟</a>

        </div>
</asp:Content>

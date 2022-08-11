<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EstashirEbtakir.SignUp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="signIn.aspx" class="sign-in-sign-up-page">تسجيل دخول</a>
    <div class="sign-up-sign-up-page">إنشاء حساب</div>

    <div class="sign-up-form">
        <div class="data">
            <div>
                <asp:Label ID="Lbmsg" runat="server" Text="" ForeColor="Red"></asp:Label></div>
            <div class="first-name">
                <label>الاسم الأول  </label>
                <br />
                <input class="place" type="text" runat="server" name="firstName" required id="firstname" />
                <br />
                <br />
            </div>

            <div class="last-name">
                <label>الاسم الأخير  </label>
                <br />
                <input class="place" type="text" runat="server" name="lastName" required id="lastname" />
                <br />
                <br />
            </div>

            <div class="email">
                <label>البريد الإلكتروني  </label>
                <br />
                <input class="place" type="email" runat="server" name="email" required id="Email" />
                <br />
                <br />
            </div>

            <div class="password">
                <label>كلمة المرور  </label>
                <br />
                <input class="place" type="password" runat="server" name="password" required id="Password" />
                <br />
                <br />
            </div>

            <br />
            <div class="confirm-password-sign-up">
                <label>تأكيد كلمة المرور  </label>
                <br />
                <input class="place" type="password" runat="server" name="confirm-password" required id="Password2" />
                <br />
            </div>
        </div>

        <br />
        <div class="student-faculty">
            <p>هل أنت منسوب في جامعة الملك عبدالعزيز؟</p>
            <label class="student-faculty-yes">
                <input type="radio" name="std-faculty" value="yes" onclick="text(0)" />
                نعم </label>
            <input id="ID" placeholder="الرقم الجامعي/الرقم الوظيفي ">
            <br>
            <label class="student-faculty-no">
                <input type="radio" name="std-faculty" value="no" onclick="text(1)" />
                لا </label>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="إنشاء حساب" OnClick="Registration_Click" />
    </div>

</asp:Content>

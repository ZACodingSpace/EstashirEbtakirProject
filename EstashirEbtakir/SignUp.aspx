<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EstashirEbtakir.SignUp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="signIn.aspx" class="sign-in-sign-up-page">تسجيل دخول</a>
<div class="sign-up-sign-up-page">إنشاء حساب</div>

<div class="sign-up-form">
    <div class="data">

        <div class="first-name">
        <label>الاسم الأول  </label><br />
        <input class="place" type="text" name="firstName" required/> <br /> <br />
        </div>

        <div class="last-name">
        <label>الاسم الأخير  </label><br />
        <input class="place" type="text" name="lastName" required/> <br /> <br />
        </div>

        <div class="email">
        <label>البريد الإلكتروني  </label> <br />
        <input class="place" type="email" name="email" required/> <br /> <br />
        </div>

        <div class="password">
        <label>كلمة المرور  </label> <br />
        <input class="place" type="password" name="password" required/> <br /> <br />
        </div>

        <br />
        <div class="confirm-password-sign-up">
        <label>تأكيد كلمة المرور  </label> <br />
        <input class="place" type="password" name="confirm-password" required/> <br />
        </div>
    </div>

    <br />
    <div class="student-faculty" >
        <p >هل أنت منسوب في جامعة الملك عبدالعزيز؟</p>
        <label class="student-faculty-yes"> <input type="radio"  name="std-faculty" value="yes"/> نعم </label>
        <input class="ID" placeholder="الرقم الجامعي/الرقم الوظيفي ">
        <br>
        <label class="student-faculty-no"> <input type="radio" name="std-faculty" value="no"/> لا </label>
        <br /><br />
    </div>
    <label > <input class="submit" type="submit" value="إنشاء حساب" /> </label>
</div>

</asp:Content>

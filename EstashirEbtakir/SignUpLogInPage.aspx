<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUpLogInPage.aspx.cs" Inherits="EstashirEbtakir.SignUpLogInPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="signUp-logIn-page-content">
    <div class="signUp-logIn-content-container row p-5 ms-lg-5 me-lg-5">

      <!-- Tabs -->
      <ul class="nav nav-tabs p-0 m-0" id="myTab" role="tablist">

        <li class="nav-item p-0 m-0" role="presentation">
          <button class="nav-link m-0 active" id="logInTab" data-bs-toggle="tab" data-bs-target="#logIn" type="button"
            role="tab" aria-controls="logIn" aria-selected="true">تسجيل الدخول</button>
        </li>

        <li class="nav-item p-0 m-0" role="presentation">
          <button class="nav-link m-0" id="signUpTab" data-bs-toggle="tab" data-bs-target="#signUp" type="button"
            role="tab" aria-controls="signUp" aria-selected="false">إنشاء حساب</button>
        </li>

      </ul>

      <!-- Tabs content -->
      <div class="tab-content" id="myTabContent">

        <div class="logIn-content-container tab-pane fade show active" id="logIn" role="tabpanel"
          aria-labelledby="logInTab">

          <div class="logIn-form pt-lg-3 pb-lg-3" method="post">

            <div class="data pt-3">

              <div class="general-msg-error-container">
                <asp:Label id="generalEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="logIn-email-container">
                <asp:Label id="logInEmail" class="logIn-email" runat="server">البريد الالكتروني</asp:Label>
                <input id="emailInputPlace" class="inputPlace mt-1" runat="server" type="email" name="logInEmail" />
                <asp:Label id="logInEmailEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="logIn-password-container mt-3">
                <asp:Label id="logInPassword" class="logIn-password" runat="server">كلمة المرور</asp:Label>
                <input id="passwordInputPlace" class="inputPlace mt-1" runat="server" type="password" name="logInPassword"
                   />
                <asp:Label id="logInPasswordEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

            </div>

            <div class="logIn-button-container mt-5">
                <asp:Button id="logInButton" onclick="login_Click" class="logIn-button p-0 ps-xl-5 pe-xl-5 ps-lg-4 pe-lg-4" runat="server" Text="تسجيل الدخول" /> 
               
              </div>

            <div class="question mt-4">
              <a href="Get-password.aspx" class="forget">هل نسيت كلمة المرور؟</a>
            </div>

          </div>


        </div>

        <div class="signUp-content-container tab-pane fade" id="signUp" role="tabpanel" aria-labelledby="signUpTab">

          <div class="signUp-form m-0 p-0 pt-lg-3 pb-lg-3">

            <div class="data m-0 p-0 pt-3">

              <div class="general-msg-error-container">
                <asp:Label id="Label1" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="signUp-Fname-container">
                <asp:Label id="signUpFname" class="signUp-Fname" runat="server">الاسم الأول</asp:Label>
                <input id="fNameInputPlace" class="inputPlace mt-1" runat="server" type="text" name="signUpFname"
                   />
                <asp:Label id="signUpFnameEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="signUp-Lname-container mt-3">
                <asp:Label id="signUpLname" class="signUp-Lname" runat="server">الاسم الأخير</asp:Label>
                <input id="lNameInputPlace" class="inputPlace mt-1" runat="server" type="text" name="signUpLname"
                   />
                <asp:Label id="signUpLnameEmsg" class="error-msg-place mt-1" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="signUp-email-container mt-3">
                <asp:Label id="signUpEmail" class="signUp-email" runat="server">البريد الالكتروني</asp:Label>
                <input id="email1" class="inputPlace mt-1" runat="server" type="email" name="signUpEmail"
                   />
                <asp:Label id="signUpEmailEmsg" class="error-msg-place mt-1" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="signUp-password-container mt-3">
                <asp:Label id="signUpPassword" class="signUp-password" runat="server">كلمة المرور</asp:Label>
                <input id="password1" class="inputPlace mt-1 mt-1" runat="server" type="password"
                  name="signUpPassword"  />
                <asp:Label id="signUpPasswordEmsg" class="error-msg-place" runat="server" ForeColor="Red"></asp:Label>
              </div>

              <div class="signUp-confPassword-container mt-3 mb-3">
                <asp:Label id="signUpConfPassword" class="signUp-confPassword" runat="server">تأكيد كلمة المرور
                </asp:Label>
                <input id="confPasswordInputPlace" class="inputPlace mt-1" runat="server" type="password"
                  name="signUpConfPassword"  />
                <asp:Label id="signUpConfPasswordEmsg" class="error-msg-place mt-1" runat="server" ForeColor="Red">
                </asp:Label>
              </div>

            </div>




            <div class="user-type-container m-0 p-0">

              <p class="stu-dr-question mt-2">هل أنت منسوب في جامعة الملك عبدالعزيز؟</p>

              <asp:Label id="stuDrYesLabel" class="stu-dr-yes" runat="server">
                <input id="stuDrYesRadioButton" class="stuDr-RadioButton ms-2" runat="server" type="radio"
                  name="stuDrRadioButton" value="yes" />
                نعم
                <input id="idNumber" class="inputPlace me-3" runat="server" type="text" name="idNumber"
                  placeholder="الرقم الوظيفي/الجامعي"  />
              </asp:Label>

              <asp:Label id="stuDrNoLabel" class="stu-dr-no mt-3" runat="server">
                <input id="stuDrNoRadioButton" class="stuDr-RadioButton ms-2" runat="server" type="radio"
                  name="stuDrRadioButton" value="no"/>
                لا
              </asp:Label>
            </div>

            <div class="signUp-button-container m-0 p-0 mt-5">
                <asp:Button id="signUpButton" OnClick="Registration_Click" class="signUp-button p-0 ps-xl-5 pe-xl-5 ps-lg-4 pe-lg-4" runat="server" Text="إنشاء حساب"/>          
            </div>
          </div>


        </div>

      </div>

    </div>
  </div>


</asp:Content>

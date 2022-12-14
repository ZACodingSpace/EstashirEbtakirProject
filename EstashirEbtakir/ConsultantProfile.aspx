<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultantProfile.aspx.cs" Inherits="EstashirEbtakir.ConsultantProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo col-6">
                    <img class="img-fluid" src="Images/Profile_Icon.png" alt="..." />
                    <input id="name" runat="server" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="job" runat="server" type="text" class="text-field1" placeholder="نوع المستخدم/مستشار" readonly />
                </div>
            </div>
            <ul>
                <li><a class="active" href="UserProfile.aspx"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="MyIdeasPage.aspx"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a href="MyAppointmentsPage.aspx"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="MyProjectsPage.aspx"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
            </ul>
        </div>
        <div class="left-side col-9 m-0">

              <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="profile-tab-content-container">

                <div class="profile-container">
                    <p>
                        الاسم:
                        <input id="name2" runat="server" type="text" class="text-field2" placeholder="الاسم الثنائي" readonly />
                    </p>
                    <br />
                    <p>
                        البريد الإلكتروني:
                        <input id="email" runat="server" type="text" class="text-field2 col-5" placeholder="example@gmail.com" readonly />
                    </p>                    <br />

                    <p>
                        <!-- placeholder="05xxxxxxxx" -->
                        رقم الجوال:
                        <input id="phone" runat="server" type="text" class="text-field3 ps-2 pe-2" placeholder="05xxxxxxxx" readonly/>
                        <asp:Button class="change-pass-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" ID="editPhone" runat="server" Text="تعديل" onclick="EditPhone_Click" />
                        <asp:Label ID="testchange" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </p>
                                        <br />

                    
                    <p>
                        الرقم الجامعي / الرقم الوظيفي:
                        <input id="uniID" runat="server" type="text" class="text-field2" placeholder="2220000" readonly />
                    </p>
                    <a href="ChangePassword.aspx"><i class="fas fa-lock"></i> تغيير كلمة المرور </a>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

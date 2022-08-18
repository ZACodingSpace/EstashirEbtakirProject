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
                        <input id="Text1" runat="server" type="text" class="text-field2" placeholder="الاسم الثنائي" readonly />
                    </p>
                    <p>
                        البريد الإلكتروني:
                        <input id="Text2" runat="server" type="text" class="text-field2 col-5" placeholder="example@gmail.com"
                            readonly />
                    </p>
                    <p>
                        <!-- placeholder="05xxxxxxxx" -->
                        رقم الجوال:
                        <input id="Text3" runat="server" type="text" class="text-field3" placeholder="05xxxxxxxx" readonly/>
                        <asp:Button class="change-pass-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" ID="Button1" runat="server" Text="تعديل" onclick="EditPhone_Click"/>
                        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                        <input id="name2" runat="server" type="text" class="text-field2" placeholder="الاسم الثنائي" readonly />
                    </p>
                    <br />

                    <div class="profilo row">
                        <div class="col-3">
                            <label for="fil">البريد الإلكتروني:</label>
                                                    </div>

                                                    <div class="col-8">

                            <input id="email" runat="server" type="text" class="text-fi" placeholder="example@gmail.com" readonly />
                        </div>
                    </div>

                    <br />
                    <!-- placeholder="05xxxxxxxx" -->
                    <div class="profilo row">
                        <div class="col-6">
                            <label for="fil">رقم الجوال:</label>

                            <input id="phone" runat="server" type="text" class="text-field2" placeholder="05xxxxxxxx" readonly />
                        </div>
                        <div class="col-2">
                            <div class="accepBtns-container">
                                <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                                    <asp:Button class="accepBtn " ID="editPhone" runat="server" Text="تعديل" OnClick="EditPhone_Click" />
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="testchange" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <br />
                    <p>
                        الرقم الجامعي/الرقم الوظيفي:
                        <input id="uniID" runat="server" type="text" class="text-field2" placeholder="2220000" readonly />
                    </p>
                    
                    
                    <p>
                        الرقم الجامعي/الرقم الوظيفي:
                        <input id="Text4" runat="server" type="text" class="text-field2" placeholder="2220000" readonly />
                    </p>
                    <a href="ChangePassword.aspx"><i class="fas fa-lock"></i> تغيير كلمة المرور </a>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

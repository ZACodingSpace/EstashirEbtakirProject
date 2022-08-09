<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="EstashirEbtakir.UserProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img src="Images/ProfileIcon.png" alt="..." />
                    <input id="name" runat="server" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="job" runat="server" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a class="active" href="#"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="#"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a href="#"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="#"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
                <li><a href="#"><i class="fas fa-award"></i> الترقية لمستشار </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="profile-tab-content-container">

                <div class="profile-container">
                    <p>
                        الاسم:
                        <input id="name2" runat="server" type="text" class="text-field2" placeholder="الاسم الثنائي" readonly />
                    </p>
                    <p>
                        البريد الإلكتروني:
                        <input id="email" runat="server" type="text" class="text-field2" placeholder="example@gmail.com"
                            readonly />
                    </p>
                    <p>
                        رقم الجوال:
                        <input id="phone" runat="server" type="text" class="text-field2" placeholder="05xxxxxxxx" />
                        <!-- تغيير الى بوتون -->
                        <a href="#">تعديل
                        </a>
                    </p>
                    <p>
                        الرقم الجامعي:
                        <input id="uniID" runat="server" type="text" class="text-field2" placeholder="2220000" readonly />
                    </p>
                    <a href="#"><i class="fas fa-lock"></i> تغيير كلمة المرور </a>
                </div>
            </div>

        </div>
    </div>


</asp:Content>

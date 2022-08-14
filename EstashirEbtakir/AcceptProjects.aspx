<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptProjects.aspx.cs" Inherits="EstashirEbtakir.AcceptProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="containerAccept row">

        <div class="profile-page-content-container col-3 row p-0 m-0">
            <div class="side-bar col-3 m-0">
                <div class="title">
                    <div class="logo">
                        <img src="Images/Profile_Icon.png" alt="..." />
                        <input id="Text1" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                        <input id="Text2" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                    </div>
                </div>
                <ul>
                    <li><a href="#"><i class="fas fa-id-card"></i>معلومات الحساب </a></li>
                    <li><a href="#"><i class="fa fa-line-chart"></i>الإحصائيات </a></li>
                    <li><a href="#"><i class="fas fa-lightbulb"></i>الأفكار </a></li>
                    <li><a class="active" href="#"><i class="fas fa-file-alt"></i>المشاريع </a></li>
                    <li><a href="#"><i class="fas fa-comments"></i>الاستشارات </a></li>
                    <li><a href="#"><i class="fas fa-check-square"></i>طلبات الترقية </a></li>
                </ul>
            </div>
        </div>
        <div class="left-content-container col-9">
            <div class="row behined-navbar"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="profileAccept">

                <div class="profileAcceptcontainer">
                    <div class="Accept">
                        <h1>قبول المشاريع
       
                        </h1>
                        <div class="accepForm ">

                            <div class="accepForm row ">


                                <div class="col-6">
                                    <label for="proname">اسم المشروع:</label>
                                </div>
                                <div class="col-6">
                                    <label for="proname">المشروع</label>
                                </div>

                            </div>

                            <div class="accepForm row ">
                                <div class="col-6">
                                    <label for="supe">المشرف:</label>
                                </div>

                                <div class="col-6">
                                    <label for="supe">اسم المشرف</label>
                                </div>
                            </div>

                            <div class="accepForm row ">
                                <div class="col-6">

                                    <label for="particit">الأعضاء المشاركين:</label>
                                </div>
                                <div class="col-6">
                                    <label for="particit">اسماء الأعضاء المشاركين</label>
                                </div>
                            </div>
                            <div class="accepForm row ">

                                <div class="col-6">
                                    <label for="coll">التقنية المستخدمة:</label>
                                </div>

                                <div class="col-6">
                                    <label for="coll">التقنية المستخدمة</label>
                                </div>
                            </div>
                            <div class="accepForm row ">

                                <div class="col-6">


                                    <label for="abstrac">نبذة عن المشروع:</label>
                                </div>
                                <div class="col-6">

                                    <label for="abstrac">نبذة عن المشروع</label>
                                </div>
                            </div>

                            <div class="accepForm row ">

                                <div class="col-6">

                                    <label for="major">التخصص:</label>
                                </div>
                                <div class="col-6">

                                    <label for="major">اسم التخصص</label>
                                </div>
                            </div>
                            <div class="accepForm row ">

                                <div class="col-6">


                                    <label for="degree">الدرجة:</label>
                                </div>

                                <div class="col-6">

                                    <label for="degree">الدرجة</label>
                                </div>
                            </div>
                            <div class="accepForm row ">

                                <div class="col-6">

                                    <label for="fil">تحميل المرفقات</label>
                                </div>
                                <div class="col-6">

                                    <a href="file.zip" download="تحميل">تحميل</a>


                                </div>
                            </div>


                            <div class="accepBtn">
                               
                                    <div class="col-19">
                                        <asp:Button class="accepBtn" ID="Button2" runat="server" Text="رفض المشروع" />
                                    </div>

                                    <div class="col-1">
                                        <asp:Button class="accepBtn" ID="Button1" runat="server" Text="قبول المشروع" />
                                    </div>
                                
                            </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>




</asp:Content>

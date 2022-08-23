<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptProjects.aspx.cs" Inherits="EstashirEbtakir.AcceptProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img src="Images/Profile_Icon.png" alt="..." />
                    <input id="Text1" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="Text2" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a href="AdminProfile.aspx"><i class="fas fa-id-card"></i>معلومات الحساب </a></li>
                <li><a href="StatisticsPage.aspx"><i class="fa fa-line-chart"></i>الإحصائيات </a></li>
                <li><a href="AcceptIdeas.aspx"><i class="fas fa-lightbulb"></i>الأفكار </a></li>
                <li><a class="active" href="AcceptProjects.aspx"><i class="fas fa-file-alt"></i>المشاريع </a></li>
                <li><a href="#"><i class="fas fa-comments"></i>الاستشارات </a></li>
            </ul>
        </div>

        <div class="left-content-container col-9">
            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ الأفكار</div>

            <div class="profileAccept">

                <div class="profileAcceptcontainer">
                    <div class="Accept">
                        <h1>قبول المشاريع
       
                        </h1>
                        <div class="browse-project-area">

                            <div class="projectDetails-ideaLabel-container row">
                                <div class="projectDetails-name-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="project-nameDetails">اسم المشروع</h4>
                                    <input type="text" class="projectDetails-name-field" id="projectDetailsNameField" runat="server">
                                    <asp:Label ID="done" class="projectDetails-name" runat="server" Text=" "></asp:Label>
                                </div>
                            </div>



                            <div class="projectDetails-description-container p-xl-5 p-lg-4 pt-md-5">
                                <h4 class="projectDetails-description-label">نبذة عن المشروع</h4>
                                <textarea class="projectDetails-description-textarea" id="ProjectDetailsDescription" rows="10" runat="server"></textarea>
                            </div>


                            <div class="pic-collegeDetails-container row m-0 pt-4">
                                <div class="project-picDetails-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-pic">صورة</h4>
                                    <asp:Image ID="Image1" runat="server" />
                                </div>

                                <div class="projectDetails-college-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-college">الكلية</h4>
                                    <input type="text" class="projectDetails-CollegeI" id="collegeProjectDetails" runat="server" />
                                </div>
                            </div>

                            <div class="major-supervisorDetails-container row m-0 pt-4">
                                <div class="projectDetails-major-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-major">التخصص</h4>
                                    <input type="text" class="projectDetails-Major" id="majorProjectDetails" runat="server" />
                                </div>

                                <div class="projectDetails-supervisor-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-supervisor">المشرف</h4>
                                    <input type="text" class="projectDetails-Supervisor" id="supervisorP" runat="server" />
                                </div>
                            </div>

                            <div class="projectDetails-members-container p-xl-5 p-lg-4 pt-md-5">
                                <h4 class="projectDetails-members-label">الأعضاء</h4>
                                <textarea class="projectDetails-members-textarea" id="TextareaProjectDetails" rows="10" runat="server">   </textarea>
                            </div>

                            <div class="gradeDetails-file-container row m-0 pt-4">
                                <div class="projectDetails-grade-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-grade">الدرجة</h4>
                                    <input type="text" class="projectDetails-Grade" id="gradeP" runat="server" />
                                </div>

                                <div class="projectDetails-file-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="projectDetails-file">الملف</h4>
                                    <asp:Button ID="downloadFile" class="downloadFile-projectDetails-button m-1 ms-xl-4 ms-lg-3" OnClick="downloadFile_Click" runat="server" Text="تنزيل" />
                                </div>
                            </div>


                            <div class="projectDetails-technology-container row">
                                <div class="projectDetails-technology-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="project-technologyDetails">التقنيات الممكن استخدامها لتنفيذ المشروع</h4>
                                    <input type="text" class="projectDetails-technology-field" id="Text3" runat="server">
                                    <asp:Label ID="Label1" class="projectDetails-technology" runat="server" Text=" "></asp:Label>
                                </div>
                            </div>


                        </div>
                        <asp:GridView ID="GridViewAcceptIdeas" runat="server" AutoGenerateColumns="False" CssClass="gridAcceptIdeas">

                            <Columns>

                                <asp:BoundField DataField="Project_Name" runat="server" />

                            </Columns>
                        </asp:GridView>



                        <!-------------------->

                        <div class="accepBtns-container">
                            <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                                <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="AcceptB" OnClick="AcceptB_Click" runat="server" Text="قبول المشروع" />
                            </div>
                            <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                                <asp:Button class="accepBtn p-0 ps-2 pe-2"  ID="RejectB" OnClick="RejectB_Click" runat="server" Text="رفض المشروع" />
                            </div>
                        </div>


                    </div>

                </div>

            </div>
        </div>

    </div>

</asp:Content>

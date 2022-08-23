<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="MyProjectsPage.aspx.cs" Inherits="EstashirEbtakir.MyProjectsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img class="img-fluid" src="Images/Profile_Icon.png" alt="..." />
                    <input id="name" runat="server" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="job" runat="server" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a href="UserProfile.aspx"><i class="fas fa-id-card"></i>&nbsp معلومات الحساب</a></li>
                <li><a href="MyIdeasPage.aspx"><i class="fas fa-lightbulb"></i>&nbsp أفكاري</a></li>
                <li><a href="MyAppointmentsPage.aspx"><i class="fas fa-calendar-check"></i>&nbsp مواعيدي </a></li>
                <li><a class="active" href="MyProjectsPage.aspx"><i class="fas fa-file-alt"></i>&nbsp مشاريعي </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="tabs-content-containerP row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">
                

        <!------------------------------------------------------->
                <!-- Cards -->


        <asp:DataList ID="DataListProject" class="page-data-container" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <table class="projects-table mt-4 p-0">

                    <%--First Section of the card--%>
                    <tr class="project-logo-area m-0 p-0">
                        <td class="project-logo-container row m-0">
                            <img class="project-logo img-fluid p-0" src="Images/Project_Logo_3.jpg">
                        </td>
                    </tr>

                    <%--Second Section of the card--%>
                    <tr class="project-name-area">
                        <td class="project-name-container row mt-3 p-1">
                            <h3 class="project-name p-1"><%#Eval("Project_Name") %></h3>
                            <p class="project-state">حالة المشروع: <%#Eval("State") %>  </p>
                        </td>
                    </tr>
                    

                    <tr class="project-information-area">
                        <td class="project-information-container row mt-3 p-0">

                            <%--Third Section of the card--%>
                            <div class="college-name-container row p-0">
                                <h6 class="college-label col-4 p-0">الكلية</h6>
                                <h6 class="college-name col-8" id="H1" runat="server"><%#Eval("Faculty") %></h6>
                            </div>

                            <!-- Forth Section of the card -->
                            <div class="major-information-container row p-0">
                                <h6 class="major-label col-4 p-0">التخصص</h6>
                                <h6 class="major-name col-8" id="H2" runat="server"><%#Eval("Major") %></h6>
                            </div>

                        </td>
                    </tr>

                    <%-- Last Section of the card --%>
                    <tr class="card-button-area">
                        <td class="card-button-container row mt-4 mb-3">
                              <button class="project-details-buttonP1 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                                          >تعديل/حذف</button>
                            <button class="project-details-buttonP2 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">تفاصيل</button>
                            

                        </td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>


                <!---->
                           

                     <asp:ListBox id="ListBoxEditDeleteProject" runat="server" style="display:none">

            </asp:ListBox>

                       <asp:ListBox id="ListBox3" runat="server" style="display:none">

            </asp:ListBox>

                 <!-------------------------------------------------------------------->



            </div>

        </div>


    </div>

   <script>
       var p1 = document.getElementsByClassName("project-details-buttonP1");
       var p2 = document.getElementById("ContentPlaceHolder1_ListBoxEditDeleteProject").children;

       var lstp2 = []
       for (var y = 0; y < p2.length; y++) {
           lstp2.push(p2[y].value)
       }

       for (var z = 0; z < lstp2.length; z++) {
           p1[z].id = lstp2[z]
           p1[z].addEventListener('click', function special() { window.open(`EditDeleteProject.aspx?id=${this.id}`) })
       }

       //---------------------------------------------------------------
       var p1 = document.getElementsByClassName("project-details-buttonP2");
       var p2 = document.getElementById("ContentPlaceHolder1_ListBox3").children;

       var lstp2 = []
       for (var y = 0; y < p2.length; y++) {
           lstp2.push(p2[y].value)
       }

       for (var z = 0; z < lstp2.length; z++) {
           p1[z].id = lstp2[z]
           p1[z].addEventListener('click', function special() { window.open(`ProjectDetails.aspx?id=${this.id}`) })
       }
   </script>


</asp:Content>

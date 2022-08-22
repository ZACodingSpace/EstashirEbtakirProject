<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="MyIdeasPage.aspx.cs" Inherits="EstashirEbtakir.MyIdeasPage" %>
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
                <li><a href="UserProfile.aspx"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a class="active" href="MyIdeasPage.aspx"><i class="fas fa-lightbulb"></i> أفكاري </a></li>
                <li><a href="MyAppointmentsPage.aspx"><i class="fas fa-calendar-check"></i> مواعيدي </a></li>
                <li><a href="MyProjectsPage.aspx"><i class="fas fa-file-alt"></i> مشاريعي </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ أفكاري</div>

            <div class="tabs-content-container row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">

                <!----------------------------------------------------------------------------------->
                <!-- Idea Cards -->

                <div class="tabs-content-container row mt-lg-5 p-5">

        <asp:DataList ID="DataListIdea" class="page-data-container" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <table class="idea-table mt-4">

                    <%--First Section of the card--%>
                    <tr class="idea-logo-area">
                        <td class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4 ps-lg-2 pe-lg-2">
                            <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Icons/Lightbulb.png">
                        </td>
                    </tr>

                    <%--Second Section of the card--%>
                    <tr class="idea-name-area">
                        <td class="idea-name-container row p-1">
                            <h3 class="idea-name p-1"><%#Eval("Idea_Name") %></h3>
                        </td>        
                        <td>حالة الفكرة</td>
                        <td> <%#Eval("State") %> </td>
                    </tr>

                    <%--Third Section of the card--%>
                    <tr class="idea-descroption-area">
                        <td class="idea-description-container">
                            <p class="idea-description m-0 col-8"><%#Eval("Brief") %></p>
                        </td>
                    </tr>


                    <tr class="card-button-area">
                        <td class="card-button-container row mt-4 mb-3">
                            <button class="ideas-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                               >عرض الفكرة</button>
                        </td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>
                    <asp:ListBox id="ListBox1" runat="server" style="display:none">

            </asp:ListBox>



    </div>
                 


               


               <!------------------------------------------------------------------------------------->
          </div>
        </div>


          <script>
       var p1 = document.getElementsByClassName("ideas-details-button");
       var p2 = document.getElementById("ContentPlaceHolder1_ListBox1").children;

       var lstp2 = []
       for (var y = 0; y < p2.length; y++) {
           lstp2.push(p2[y].value)
       }

       for (var z = 0; z < lstp2.length; z++) {
           p1[z].id = lstp2[z]
           p1[z].addEventListener('click', function special() { window.open(`IdeasDetails.aspx?id=${this.id}`) })
       }
          </script>
</asp:Content>

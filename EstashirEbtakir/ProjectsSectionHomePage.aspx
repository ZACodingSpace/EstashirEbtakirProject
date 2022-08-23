<%@ Page Title="المشاريع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ProjectsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="projects-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

        <div class="projects-links-container pe-lg-4 pt-lg-2 ">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="ProjectsSectionHomePage.aspx">المشاريع</a>
        </div>

        <div class="projects-description-container row pe-lg-4 mt-lg-5">

            <div class="projects-page-name-container">
                <h3 class="projects-page-name">المشاريع</h3>
            </div>

            <div class="projects-page-description-container">
                <p class="projects-page-description mt-xl-2">
                    مساحة لمشاركة المشاريع التي تم تنفيذها
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="add-project-button-container col-6">
                <button class="add-project-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="AddProject.aspx">إضافة مشروع</button>


            </div>

            <div class="projects-search-bar-container col-6">

                <div class="projects-serach-bar ms-lg-1 me-lg-1">
                    <input class="projects-form-control form-control " id="searchText" runat="server" type="search" placeholder="البحث" aria-label="Search">
                    <asp:Button ID="Search" class="projects-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" runat="server" OnClick="Search_Click" Text="ابحث" />
                </div>

                <div class="sort-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>

            </div>
        </div>

    </div>

    <%-------------------- Cards --------------------%>

    <div class="tabs-content-container row mt-lg-5 p-5">

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
                            <button class="project-details-buttonP2 p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">تفاصيل</button>
                        </td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:ListBox ID="ListBox3" runat="server" Style="display: none"></asp:ListBox>

    </div>

    <%-------------------- Scripts --------------------%>

    <script>
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

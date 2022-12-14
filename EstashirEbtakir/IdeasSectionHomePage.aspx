<%@ Page Title="قسم الأفكار" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.IdeasSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ideas-page-header-container row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

        <div class="ideas-links-container pe-lg-4 pt-lg-2 ">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="IdeasSectionHomePage.aspx">الأفكار</a>
        </div>

        <div class="ideas-description-container row pe-lg-4 mt-lg-5">

            <div class="ideas-page-name-container">
                <h3 class="ideas-page-name">الأفكار</h3>
            </div>

            <div class="ideas-page-description-container">
                <p class="ideas-page-description mt-xl-2">
                    مساحة لمشاركة الأفكار وطلب تنفيذها مع مراعاة حقوق الملكية
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="add-idea-button-container col-6">
                <button id="addIdeaButton" runat="server" class="add-idea-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="AddIdea.aspx">إضافة فكرة</button>
            </div>

            <div class="ideas-search-bar-container col-6">

                <div class="ideas-serach-bar ms-lg-1 me-lg-1">
                    <input class="ideas-form-control form-control " id="searchText" runat="server" type="search" placeholder="البحث" aria-label="Search" >
                    <!--<button class="ideas-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button> -->
                    <asp:Button ID="Search" class="ideas-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" runat="server" OnClick="Search_Click" Text="ابحث" />
                </div>

                <div class="sort-ideas ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-ideas ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>

    <!-------------------------------------------------------------------------->
    <!-- Cards -->
    <div class="tabs-content-container row mt-lg-5 p-5">

        <asp:DataList ID="DataListIdea" class="page-data-container" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <table class="ideas-table mt-4">

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
                    </tr>

                    <%--Third Section of the card--%>
                    <tr class="idea-descroption-area">
                        <td class="idea-description-container">
                            <p class="idea-description m-0 col-8"><%#Eval("Brief") %></p>
                        </td>
                    </tr>

                    <%-- Last Section of the card --%>
                    <tr class="card-button-area">
                        <td class="card-button-container row mt-4 mb-3">
                            <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2">عرض الفكرة</button>
                        </td>            
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>

         
        <asp:ListBox id="ListBox1" runat="server" style="display:none"></asp:ListBox>

    </div>
    <!-- Cards End -->
    <!-------------------------------------------------------------------------->

    <script>
        //Ideas
        var b1 = document.getElementsByClassName("idea-details-button");
        var b2 = document.getElementById("ContentPlaceHolder1_ListBox1").children;

        var lst2 = []
        for (var y = 0; y < b2.length; y++) {
            lst2.push(b2[y].value)
        }

        for (var z = 0; z < lst2.length; z++) {
            b1[z].id = lst2[z]
            b1[z].addEventListener('click', function special() { window.open(`IdeasDetails.aspx?id=${this.id}`) })
        }
    </script>

</asp:Content>

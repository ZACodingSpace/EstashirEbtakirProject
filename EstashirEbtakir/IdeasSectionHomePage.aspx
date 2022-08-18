<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.IdeasSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ideas-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

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
                    نبذة عن قسم الأفكار
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="add-idea-button-container col-6">
                <button class="add-idea-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="AddIdea.aspx">إضافة فكرة</button>
            </div>

            <div class="ideas-search-bar-container col-6">

                <div class="ideas-serach-bar ms-lg-1 me-lg-1">
                    <input class="ideas-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="ideas-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-ideas ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-ideas ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>
    
    <!-------------------------------------------------------------------------->
        <!-- Cards -->
    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">

        <asp:DataList ID="DataListIdea" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="IdeaTable">

                                <tr>
                                    <td>
                                        <img class="IdeaImage" src="Icons/Lightbulb.png">
                                    </td>
                                    <td>
                                        <br />
                                        <br />
                                    </td>
                                </tr>

                                <tr>
                                    <td class="IdeaName"><%#Eval("Idea_Name") %> </td>
                                    <td></td>

                                </tr>

                                <tr>
                                    <td class="BriefDB"><%#Eval("Brief") %> </td>
                                </tr>


                                <tr>
                                    <td class="IdeasButton">
                                        <button class="ideas-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                                            formaction="IdeasDetails.aspx">
                                            تفاصيل</button>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>




    </div>
            <!-- Cards End -->
    <!-------------------------------------------------------------------------->
    <div class="d-flex justify-content-center">

        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>

    </div>

</asp:Content>

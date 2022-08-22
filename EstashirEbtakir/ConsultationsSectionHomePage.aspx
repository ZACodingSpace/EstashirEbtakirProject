<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultationsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ConsultationsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="consultations-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

        <div class="consultations-links-container pe-lg-4 pt-lg-2 ">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="">الاستشارات</a>
        </div>

        <div class="consultations-description-container row pe-lg-4 mt-lg-5">

            <div class="consultations-page-name-container">
                <h3 class="consultations-page-name">الاستشارات</h3>
            </div>

            <div class="consultations-page-description-container">
                <p class="consultations-page-description mt-xl-2">
                    مساحة لحجز موعد استشارة مع خبراء جامعة المؤسس
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="book-consultation-button-container col-6">
                <button class="book-consultation-button ps-lg-3 pe-lg-3 pt-1 pb-1">حجز استشارة</button>
            </div>

            <div class="consultations-search-bar-container col-6">

                <div class="consultations-serach-bar ms-lg-1 me-lg-1">
                    <input class="consultations-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="consultations-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-consultations ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-consultations ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>


    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5 ">
    <!------------------------------------------------------------------------------>  
        <!-----Cards---->
    
        <asp:DataList ID="DataListCons" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="ConsTable">

                                <tr>
                                    <td>
                                        <img class="ConsImage" src="Images/Profile_Icon.png" />
                                    </td>

                                </tr>

                                <tr>

                                    <td class="ConsName"><%#Eval("Fname") %>  <%#Eval("Lname") %>  - 
                                        
                                        <%#Eval("Position") %>
                                    </td>
                                   
                                </tr>

                                
                                <tr>
                                    <td class="ConsCollegeMajorDB"><%#Eval("Department") %> - <%#Eval("Faculty") %> </td>
                                </tr>

                                

                                <tr>
                                    <td class="ConsDetailsBookButton">

                                        <button class="consultation-details-button col-4 p-0 ps-2 pe-2"
                                            formaction="BrowsProject.aspx">
                                            تفاصيل</button>

                                        <button class="consultation-booking-button col-4 p-0 ps-2 pe-2"
                                            formaction="BrowsProject.aspx">
                                            احجز</button>

                                    </td>
                               </tr>

                                

                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                           
    </div>
    <!------------------------------------------------------------------------------>
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

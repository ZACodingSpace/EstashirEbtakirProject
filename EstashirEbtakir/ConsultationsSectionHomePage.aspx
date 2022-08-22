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
                <button class="book-consultation-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="BookConsultation.aspx">حجز استشارة</button>
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

    <!------------------------------------------------------------------------------>
    <!-- Cards -->
    <div class="tabs-content-container row mt-lg-5 p-5">

        <asp:DataList ID="DataListCons" class="page-data-container" runat="server" RepeatColumns="4">
            <ItemTemplate>
                <table class="counselor-table mt-4 p-0">

                    <%--First Section of the card--%>
                    <tr class="counselor-img-area m-0 p-0">
                        <td class="counselor-img-container row m-0 p-0 pt-xl-4 ps-xl-4 pe-xl-4 pt-lg-3 ps-lg-3 pe-lg-3">
                            <img class="counselor-img img-fluid p-3" src="Images/Profile_Icon.png">
                        </td>
                    </tr>

                    <%--Second Section of the card--%>
                    <tr class="counselor-name-area">
                        <td class="counselor-name-container row mt-5 p-1">
                            <h3 class="counselor-name mt-xl-4 mt-lg-3 p-1"><%#Eval("Fname") %>  <%#Eval("Lname") %></h3>
                        </td>
                    </tr>

                    <%--Third Section of the card--%>
                    <tr class="counselor-information-area">
                        <td class="counselor-information-container p-0 m-0">
                            <h3 class="counselor-information m-0 p-1"><%#Eval("Position") %> - <%#Eval("Department") %></h3>
                            <h3 class="counselor-information m-0 p-1"><%#Eval("Faculty") %></h3>
                        </td>
                    </tr>



                    <!-- Last Section of the card -->
                    <tr class="card-button-area">
                        <td class="card-button-container row m-0 p-0 mt-4 mb-3">
                            <button class="consultation-details-button col-4 p-0 ps-2 pe-2" >تفاصيل</button>
                            <button class="consultation-booking-button col-4 p-0 ps-2 pe-2" >احجز</button>
                            </td>

                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>
          <asp:ListBox id="ListBoxConsDetails" runat="server" style="display:none">

            </asp:ListBox>
          <asp:ListBox id="ListBoxConsBooking" runat="server" style="display:none">

            </asp:ListBox>

    </div>
    <!-- Cards End -->
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

<script>
     var b1 = document.getElementsByClassName("consultation-details-button");
    var b2 = document.getElementById("ContentPlaceHolder1_ListBoxConsDetails").children;

    var lst2 = []
    for (var y = 0; y < b2.length; y++) {
        lst2.push(b2[y].value)
    }

    for (var z = 0; z < lst2.length; z++) {
        b1[z].id = lst2[z]
       
        b1[z].addEventListener('click', function special() { window.open(`ConsultantDetails.aspx?id=${this.id}`) })

    }


    //Consultant-booking

    var b1 = document.getElementsByClassName("consultation-booking-button");
    var b2 = document.getElementById("ContentPlaceHolder1_ListBoxConsBooking").children;

    var lst2 = []
    for (var y = 0; y < b2.length; y++) {
        lst2.push(b2[y].value)
    }

    for (var z = 0; z < lst2.length; z++) {
        b1[z].id = lst2[z]

        b1[z].addEventListener('click', function special() { window.open(`BookConsultation.aspx?id=${this.id}`) })

    } 
</script>

</asp:Content>

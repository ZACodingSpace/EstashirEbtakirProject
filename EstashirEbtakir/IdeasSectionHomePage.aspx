<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.IdeasSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="idea">

        <h1 class="idea-name">الأفكار</h1>
        <p>لإستعراض أبرز الأفكار الإبداعية والإستفادة منها</p>

        <div class="search-idea-bar">
        </div>



        <button formaction="AddIdea.aspx">إضافة الفكرة</button>



        <div class="search-idea">
            <input type="search" name="search-feild" value="البحث" />
            <button>بحث</button>
            <button>تصفية</button>
        </div>
    </div>

    <div class="tabs-content-container row row-cols-lg-4 row-cols-md-2 row-cols-sm-1 mt-lg-5 p-5">

        <!-- Cards -->

        <!-- Idea Card -->
        <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

                <!-- First Section of the card -->
                <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                    <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                </div>

                <!-- Second Section of the card -->
                <div class="idea-name-container row">
                    <h3 class="idea-name">الفكرة الأولى</h3>
                </div>

                <!-- Third Section of the card -->
                <div class="idea-description-container">
                    <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                </div>

            </div>
        </div>

        <!-- Idea Card -->
        <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

                <!-- First Section of the card -->
                <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                    <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                </div>
                <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                <!-- Second Section of the card -->
                <div class="idea-name-container row">
                    <h3 class="idea-name">الفكرة الثانية</h3>
                </div>


                <!-- Third Section of the card -->
                <div class="idea-description-container">
                    <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                </div>

            </div>
        </div>


        <!-- Idea Card -->
        <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

                <!-- First Section of the card -->
                <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                    <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                </div>
                <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                <!-- Second Section of the card -->
                <div class="idea-name-container row">
                    <h3 class="idea-name">الفكرة الثالثة</h3>
                </div>


                <!-- Third Section of the card -->
                <div class="idea-description-container">
                    <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                </div>

            </div>
        </div>


        <!-- Idea Card -->
        <div class="idea-card-container col p-xl-3 p-lg-2">
            <div class="idea-card p-lg-1">

                <!-- First Section of the card -->
                <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                    <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                </div>
                <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                <!-- Second Section of the card -->
                <div class="idea-name-container row">
                    <h3 class="idea-name">الفكرة الرابعة</h3>
                </div>


                <!-- Third Section of the card -->
                <div class="idea-description-container">
                    <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                </div>

                <!-- Last Section of the card -->
                <div class="card-button-container row mt-4 mb-3">
                    <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                </div>

            </div>
        </div>

        <!-- Cards -->

                    <!-- Idea Card -->
                    <div class="idea-card-container col p-xl-3 p-lg-2">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                            </div>

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">الفكرة الخامسة</h3>
                            </div>

                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row mt-4 mb-3">
                                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

                    <!-- Idea Card -->
                    <div class="idea-card-container col p-xl-3 p-lg-2">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                            </div>
                            <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">الفكرة السادسة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row mt-4 mb-3">
                                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>


                    <!-- Idea Card -->
                    <div class="idea-card-container col p-xl-3 p-lg-2">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                            </div>
                            <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">الفكرة السابعة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row mt-4 mb-3">
                                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>


                    <!-- Idea Card -->
                    <div class="idea-card-container col p-xl-3 p-lg-2">
                        <div class="idea-card p-lg-1">

                            <!-- First Section of the card -->
                            <div class="idea-logo-container row m-0 ms-2 me-2 p-3 ps-xl-4 pe-xl-4  ps-lg-2 pe-lg-2">
                                <img class="idea-logo img-fluid p-xl-4 p-lg-4" src="Images/Lightbulb.png" alt="Logo">
                            </div>
                            <!-- ps-xl-4 pe-xl-4  ps-lg-3 pe-lg-3 -->

                            <!-- Second Section of the card -->
                            <div class="idea-name-container row">
                                <h3 class="idea-name">الفكرة الثامنة</h3>
                            </div>


                            <!-- Third Section of the card -->
                            <div class="idea-description-container">
                                <p class="idea-description m-0 col-8">هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة هنا تتم كتابة نبذة مختصرة عن الفكرة المضافة </p>
                            </div>

                            <!-- Last Section of the card -->
                            <div class="card-button-container row mt-4 mb-3">
                                <button class="idea-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2" formaction="#">عرض الفكرة</button>
                            </div>

                        </div>
                    </div>

    </div>


</asp:Content>

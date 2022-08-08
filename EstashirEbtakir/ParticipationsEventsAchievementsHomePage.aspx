<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ParticipationsEventsAchievementsHomePage.aspx.cs" Inherits="EstashirEbtakir.ParticipationsEventsAchievementsHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Tabs Section -->
    <ul class="nav nav-tabs" id="myTab" role="tablist">

        <!-- Events Tab -->
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="events-tab" data-bs-toggle="tab" data-bs-target="#events" type="button" role="tab" aria-controls="events" aria-selected="true">الفعاليات</button>
        </li>

        <!-- Participations Tab -->
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="participations-tab" data-bs-toggle="tab" data-bs-target="#participations" type="button" role="tab" aria-controls="participations" aria-selected="false">المشاركات</button>
        </li>

        <!-- Achievements Tab -->
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="achievements-tab" data-bs-toggle="tab" data-bs-target="#achievements" type="button" role="tab" aria-controls="achievements" aria-selected="false">الإنجازات</button>
        </li>
    </ul>


    <!-- Tabs contents section -->
    <div class="tab-content" id="myTabContent">

        <!-- events content section -->
        <div class="tab-pane fade show active" id="events" role="tabpanel" aria-labelledby="events-tab">

            <div class="event-page">
                <h1>قسم الفعاليات والمشاركات والإنجازات</h1>

                <div class="search-events">

                    <input type="search" name="search-feild" value="البحث" />
                    <button>بحث</button>
                    <button>تصفية</button>

                </div>
                <br>
                <div class="sections">
                    <span class="events">الفعاليات</span>
                    <a href="Participation.aspx" class="participation">المشاركات</a>
                    <a href="Achievement.aspx" class="achievements">الإنجازات</a>
                </div>

                <div class="container">
                    <div class="welcome">مرحبا بكم في قسم الفعاليات....هنا يتم عرض الفعاليات التي أقامها معمل الابتكارات بجامعة الملك عبدالعزيز</div>

                    <div class="event-detail">
                         <img src="Images/event1.jpeg" class="event-image" alt="logo"/>

                        <div class="event-name">اسم الفعالية </div>
                        
                        <a href="#" class="details">تفاصيل</a> 

                    </div>
                </div>
                <div class="nums">
                    <span class="before">السابق</span>
                    <span class="num1">1</span>
                    <span class="after">التالي</span>
                </div>
            </div>
        </div>


        <!-- participations content section -->
        <div class="tab-pane fade" id="participations" role="tabpanel" aria-labelledby="participations-tab">

            <div class="participation-page">
                <h1>قسم الفعاليات والمشاركات والإنجازات</h1>

                <div class="search-participation">

                    <input type="search" name="search-feild" value="البحث" />
                    <button>بحث</button>
                    <button>تصفية</button>

                </div>
                <br>
                <div class="sections">
                    <a href="Event.aspx" class="events">الفعاليات</a>
                    <span class="participation">المشاركات</span>
                    <a href="Achievement.aspx" class="achievements">الإنجازات</a>
                </div>

                <div class="container">
                    <div class="welcome">مرحبا بكم في قسم المشاركات....هنا يتم عرض المشاركات التي شارك بها معمل الابتكارات بجامعة الملك عبدالعزيز</div>

                    <div class="participation-detail">
                        <div>صورة</div>
                        <div class="participation-image"></div>

                        <div class="participation-name">عنوان </div>
                        <br />
                        <a href="#" class="details">تفاصيل</a>

                    </div>
                </div>

                <div class="nums">
                    <span class="before">السابق</span>
                    <span class="num1">1</span>
                    <span class="after">التالي</span>
                </div>
            </div>
        </div>


        <!-- achievements content section -->
        <div class="tab-pane fade" id="achievements" role="tabpanel" aria-labelledby="achievements">
            <div class="achievement-page">
                <h1>قسم الفعاليات والمشاركات والإنجازات</h1>

                <div class="search-participation">

                    <input type="search" name="search-feild" value="البحث" />
                    <button>بحث</button>
                    <button>تصفية</button>

                </div>
                <br>
                <div class="sections">
                    <a href="Event.aspx" class="events">الفعاليات</a>
                    <a href="Participation.aspx" class="participation">المشاركات</a>
                    <span class="achievements">الإنجازات</span>
                </div>

                <div class="container">
                    <div class="welcome">مرحبا بكم في قسم الإنجازات....هنا يتم عرض الإنجازات التي قام بها معمل الابتكارات بجامعة الملك عبدالعزيز</div>

                    <div class="achievement-detail">
                        <div>صورة</div>
                        <div class="achievement-image"></div>

                        <div class="achievement-name">عنوان </div>
                        <br />
                        <a href="#" class="details">تفاصيل</a>

                    </div>
                </div>

                <div class="nums">
                    <span class="before">السابق</span>
                    <span class="num1">1</span>
                    <span class="after">التالي</span>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="StatisticsPage.aspx.cs" Inherits="EstashirEbtakir.WebForm2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="statidticsPage-container">
    <div class="sections-tabs row p-lg-5">

        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="projects-tab" data-bs-toggle="tab" data-bs-target="#projects" type="button"
                    role="tab" aria-controls="projects" aria-selected="true">
                    المشاريع</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="ideas-tab" data-bs-toggle="tab" data-bs-target="#ideas" type="button" role="tab"
                    aria-controls="ideas" aria-selected="false">
                    الأفكار المقترحة</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="consultancies-tab" data-bs-toggle="tab" data-bs-target="#consultancies"
                    type="button" role="tab" aria-controls="consultancies" aria-selected="false">
                    الاستشارات</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="events-activities-tab" data-bs-toggle="tab" data-bs-target="#events-activities"
                    type="button" role="tab" aria-controls="events-activities" aria-selected="false">
                    الفعاليات والإنجازات</button>
            </li>

        </ul>


        <div class="tab-content" id="myTabContent">

            <!------------------------------------------ Projects Section ------------------------------------>
            <div class="tab-pane fade show active" id="projects" role="tabpanel" aria-labelledby="projects-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات المشاريع</h2>
                </div>
                <div class="project-stat">
                    <select class="SecondQuestion-list">
                        <option vaule="option1">خلال السنة الماضية</option>
                        <option vaule="option1">اخر ستة اشهر</option>
                        <option vaule="option1">اخر شهر</option>
                        <option vaule="option1">جميعها</option>
                    </select>
                </div>
                <div class="charts-container">
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" BackColor="Transparent" BorderlineColor="Transparent" Height="200px" Width="200px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="Job_Position" YValueMembers="Column1" ChartType="Bar"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">         
                                <AxisX>
                                    <MajorGrid Enabled="false" />
                                </AxisX>

                                <AxisY InterlacedColor="#ffccff">
                                    <MajorGrid Enabled="false" />
                                </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(User_Id), Job_Position FROM OurUser GROUP BY Job_Position"></asp:SqlDataSource>
                </div>
                

                <!-- هذي تحت في الافكار -->
                <div class="charts-container">

                    <asp:Chart runat="server" ID="Chart2" DataSourceID="SqlDataSource2" BackColor="Transparent" BorderlineColor="Transparent" Height="380px" Width="540px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="tech_name" YValueMembers="idea_num" ChartType="Bar" ></asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT 
                        COUNT(tec.Idea_ID) AS idea_num, tec.tech_name 
                        FROM 
                            (SELECT Idea_ID, tech_name 
                            From OurIdea, Technologies 
                            WHERE Technologies.type ='I' AND OurIdea.Idea_ID = Technologies.ID) AS tec 
                        GROUP BY tec.tech_name
                        ORDER BY idea_num;"></asp:SqlDataSource>
                
                    <!-- Number if taken and not taken ideas -->
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="taken_stat" YValueMembers="Column1" YValuesPerPoint="2" ChartType="Doughnut"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">
                                <AxisX>
                                    <MajorGrid Enabled="false" />
                                </AxisX>

                                <AxisY InterlacedColor="#ffccff">
                                    <MajorGrid Enabled="false" />
                                </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT 
                        COUNT(Idea_ID), taken_stat
                        FROM 
                            (SELECT Idea_ID, Is_Taken, 
                            CASE 
                            WHEN Is_Taken = 0 THEN N'غير مأخوذة'
                            WHEN Is_Taken = 1 THEN N'مأخوذة'
                            END AS taken_stat 
                            FROM OurIdea) as ideaT
                        GROUP BY taken_stat;"></asp:SqlDataSource>

                    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="m" YValueMembers="ideas"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">
                                <AxisX>
                                    <MajorGrid Enabled="false" />
                                </AxisX>

                                <AxisY InterlacedColor="#ffccff">
                                    <MajorGrid Enabled="false" />
                                </AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="
                        SELECT TOP(6)
                      MONTH(Date) AS m, YEAR(Date) AS y,
                      COUNT(Idea_ID) AS ideas
                    FROM OurIdea
                    GROUP BY MONTH(Date), YEAR(Date)
                    ORDER BY y DESC, m DESC;"></asp:SqlDataSource>

                </div>

            </div>

            <!------------------------------------------ Ideas Section ------------------------------------>
            <div class="tab-pane fade" id="ideas" role="tabpanel" aria-labelledby="ideas-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الأفكار</h2>
                </div>
                <div class="project-stat">

                    <select class="SecondQuestion-list">
                        <option vaule="option1">خلال السنة الماضية</option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">خلال الشهر الماضي</option>
                    </select>

                </div>
                
            </div>



            <!------------------------------------------ Consultancies Section ------------------------------------>
            <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الاستشارات</h2>
                </div>
                <div class="project-stat">

                    <select class="SecondQuestion-list">
                        <option vaule="option1">خلال السنة الماضية</option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">خلال الشهر الماضي</option>
                    </select>
                </div>
                <div class="charts-container"></div>
            </div>


            <!------------------------------------------ Events & Activities Section ------------------------------------>
            <div class="tab-pane fade" id="events-activities" role="tabpanel" aria-labelledby="events-activities-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الفعاليات والمشاركات</h2>
                </div>
                <div class="project-stat">
                    <select class="SecondQuestion-list">
                        <option vaule="option1">خلال السنة الماضية</option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">خلال الشهر الماضي</option>
                    </select>
                </div>
                <div class="charts-container"></div>
            </div>

        </div>
    </div>

        </div>

</asp:Content>

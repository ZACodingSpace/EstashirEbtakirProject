<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="StatisticsPage.aspx.cs" Inherits="EstashirEbtakir.WebForm2" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="statidticsPage-container">
        <asp:Label ID="test" runat="server" Text="Label"></asp:Label>
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
                    <select class="SecondQuestion-list" id="range1" runat="server" >
                        <option vaule="year">خلال السنة </option>
                        <option vaule="month">اخر ستة اشهر</option>
                        <option vaule="all">جميعها</option>
                    </select>
                    <asp:Button ID="Button1" runat="server" Text="أظهر" onclick="getCharts"/>

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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COUNT(User_Id), Job_Position FROM EEUser GROUP BY Job_Position"></asp:SqlDataSource>
                </div>
                

                <!-- هذي تحت في الافكار -->
                
                    <asp:Chart runat="server" ID="Chart2" DataSourceID="SqlDataSource2" BackColor="Transparent" BorderlineColor="Transparent" Height="380px" Width="540px">

                        <Series>
                            <asp:Series Name="Series1" XValueMember="tech_name" YValueMembers="num" ChartType="Bar"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <!-- Number if taken and not taken ideas -->
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Column" BackColor="Transparent" Font="Calibri, 10">
                            </asp:Legend>
                        </Legends>
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

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Line"></asp:Series>
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

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                                <!-- هذي فةق في المشاريع -->
                
                    <asp:Chart runat="server" ID="Chart5" DataSourceID="SqlDataSource2" BackColor="Transparent" BorderlineColor="Transparent" Height="380px" Width="540px">

                        <Series>
                            <asp:Series Name="Series1" XValueMember="tech_name" YValueMembers="num" ChartType="Bar"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <!-- Number if taken and not taken ideas -->
                    <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource3" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Column" BackColor="Transparent" Font="Calibri, 10">
                            </asp:Legend>
                        </Legends>
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

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource4" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Line"></asp:Series>
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

                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

            </div>

            <!------------------------------------------ Ideas Section ------------------------------------>
            <div class="tab-pane fade" id="ideas" role="tabpanel" aria-labelledby="ideas-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الأفكار</h2>
                </div>
                <div class="project-stat">

                    <select class="SecondQuestion-list" id="range2" runat="server">
                        <option vaule="option1">خلال السنة </option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">جميعها</option>
                    </select>

                </div>
                
                <div class="charts-container">

<%--                    <asp:Chart runat="server" ID="Chart2" DataSourceID="SqlDataSource2" BackColor="Transparent" BorderlineColor="Transparent" Height="380px" Width="540px">

                        <Series>
                            <asp:Series Name="Series1" XValueMember="tech_name" YValueMembers="idea_num" ChartType="Bar"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BackColor="Transparent"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <!-- Number if taken and not taken ideas -->
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Column">
                            </asp:Legend>
                        </Legends>
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

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

                    <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" BackColor="Transparent" BorderlineColor="Transparent" Height="350px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Line"></asp:Series>
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

                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>--%>

                </div>

            </div>



            <!------------------------------------------ Consultancies Section ------------------------------------>
            <div class="tab-pane fade" id="consultancies" role="tabpanel" aria-labelledby="consultancies-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الاستشارات</h2>
                </div>
                <div class="project-stat">

                    <select class="SecondQuestion-list"  id="range3" runat="server">
                        <option vaule="option1">خلال السنة </option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">جميعها</option>
                    </select>
                </div>
                <div class="charts-container"></div>
            </div>


            <!------------------------------------------ Events & Activities Section ------------------------------------>
            <div class="tab-pane fade" id="events-activities" role="tabpanel" aria-labelledby="events-activities-tab">
                <div class="statistics-header">
                    <h2 class="section-heading">احصائيات الفعاليات والمشاركات</h2>
                </div>
                <div class="project-stat" id="range4" runat="server">
                    <select class="SecondQuestion-list">
                        <option vaule="option1">خلال السنة الماضية</option>
                        <option vaule="option1">خلال الستة اشهر الماضية</option>
                        <option vaule="option1">جميعها</option>
                    </select>
                </div>
                <div class="charts-container"></div>
            </div>

        </div>
    </div>

        </div>

</asp:Content>

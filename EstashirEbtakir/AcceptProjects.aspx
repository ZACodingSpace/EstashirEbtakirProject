<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptProjects.aspx.cs" Inherits="EstashirEbtakir.AcceptProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img src="Images/Profile_Icon.png" alt="..." />
                    <input id="Text1" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="Text2" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a href="AdminProfile.aspx"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="StatisticsPage.aspx"><i class="fa fa-line-chart"></i> الإحصائيات </a></li>
                <li><a href="AcceptIdeas.aspx"><i class="fas fa-lightbulb"></i> الأفكار </a></li>
                <li><a class="active" href="AcceptProjects.aspx"><i class="fas fa-file-alt"></i> المشاريع </a></li>
                <li><a href="#"><i class="fas fa-comments"></i> الاستشارات </a></li>
            </ul>
        </div>

        <div class="left-content-container col-9">
            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ الأفكار</div>

            <div class="profileAccept">

                <div class="profileAcceptcontainer">
                    <div class="Accept">
                        <h1>قبول المشاريع
       
                        </h1>

                        <!----------------------->
                       <asp:GridView ID="GridViewAcceptIdeas" runat="server" AutoGenerateColumns="False" CssClass="gridAcceptIdeas">

        <Columns>
     
                <asp:BoundField DataField="Project_Name" runat="server"/>

       </Columns>
       </asp:GridView>



                    <!-------------------->

                    <div class="accepBtns-container">
                        <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="Button3" runat="server" Text="قبول المشروع" />
                        </div>
                        <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="Button4" runat="server" Text="رفض المشروع" />
                        </div>
                    </div>


                    </div>

                </div>

            </div>
        </div>

    </div>

</asp:Content>

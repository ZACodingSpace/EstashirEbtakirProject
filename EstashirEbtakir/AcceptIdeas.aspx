<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="AcceptIdeas.aspx.cs" Inherits="EstashirEbtakir.AcceptIdeas" %>

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
                <li><a href="AdminProfile.aspx"><i class="fas fa-id-card"></i>معلومات الحساب </a></li>
                <li><a href="StatisticsPage.aspx"><i class="fa fa-line-chart"></i>الإحصائيات </a></li>
                <li><a class="active" href="AcceptIdeas.aspx"><i class="fas fa-lightbulb"></i>الأفكار </a></li>
                <li><a href="AcceptProjects.aspx"><i class="fas fa-file-alt"></i>المشاريع </a></li>
                <li><a href="#"><i class="fas fa-comments"></i>الاستشارات </a></li>
            </ul>

        </div>

        <div class="left-content-container col-9">
            <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>

            <div class="profileAccept">

                <div class="profileAcceptcontainer">
                    <div class="Accept">
                        <h1>قبول الأفكار
       
                        </h1>
                        

                            <div class="ideaDetails-ideaLabel-container row">
                                <div class="ideaDetails-name-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="idea-nameDetails">اسم الفكرة</h4>
                                    <input type="text" class="ideaDetails-name-field" id="ideaDetailsNameField" runat="server">
                                    <asp:Label ID="done" class="ideaDetails-name" runat="server" Text=" "></asp:Label>
                                </div>
                            </div>



                            <div class="ideaDetails-description-container p-xl-5 p-lg-4 pt-md-5">
                                <h4 class="ideaDetails-description-label">نبذة عن الفكرة</h4>
                                <textarea class="ideaDetails-description-textarea" id="ideaDetailsDescription" rows="10" runat="server"></textarea>
                            </div>

                            <div class="ideaDetails-technology-container row">
                                <div class="ideaDetails-technology-container col p-xl-5 p-lg-4 pt-md-5">
                                    <h4 class="idea-technologyDetails">التقنيات الممكن استخدامها لتنفيذ المشروع</h4>
                                    <input type="text" class="ideaDetails-technology-field" id="Text3" runat="server">
                                    <asp:Label ID="Label1" class="ideaDetails-technology" runat="server" Text=" "></asp:Label>
                                </div>
                            </div>
                        </div>

                    
                    <asp:GridView ID="GridViewAcceptIdeas" runat="server" AutoGenerateColumns="False" CssClass="gridAcceptIdeas">

                        <Columns>

                            <asp:BoundField DataField="Idea_Name" runat="server" />

                        </Columns>
                    </asp:GridView>



                    <!-------------------->

                    <div class="accepBtns-container">
                        <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="AcceptB" OnClick="AcceptB_Click" runat="server" Text="قبول الفكرة" />
                        </div>
                        <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="RejectB" OnClick="RejectB_Click" runat="server" Text="رفض الفكرة" />
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>

    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayIdeas.aspx.cs" Inherits="EstashirEbtakir.DisplayIdeas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    #ContentPlaceHolder1_ListBox2{
          display:;
    }
</style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="profile-page-content-container row p-0 m-0">
        <div class="side-bar col-3 m-0">
            <div class="title">
                <div class="logo">
                    <img class="img-fluid" src="Images/Profile_Icon.png" alt="..." />
                    <input id="name" runat="server" type="text" class="text-field1" placeholder="الاسم الثنائي" readonly />
                    <input id="job" runat="server" type="text" class="text-field1" placeholder="نوع المستخدم" readonly />
                </div>
            </div>
            <ul>
                <li><a class="active" href="AdminProfile.aspx"><i class="fas fa-id-card"></i> معلومات الحساب </a></li>
                <li><a href="StatisticsPage.aspx"><i class="fa fa-line-chart"></i> الإحصائيات </a></li>
                <li><a href="AcceptIdeas.aspx"><i class="fas fa-lightbulb"></i> الأفكار </a></li>
                <li><a href="AcceptProjects.aspx"><i class="fas fa-file-alt"></i> المشاريع </a></li>
                <li><a href="#"><i class="fas fa-comments"></i> الاستشارات </a></li>
            </ul>
        </div>

        <div class="left-side col-9 m-0">

              <div class="row behined-navbar-profile"></div>

            <div class="profile-path">الرئيسية/ الملف الشخصي/ معلومات الحساب</div>


            <!--------->
            


            <!------------------------------->
            
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
            CssClass="grid"  AlternatingRowStyle-cssclass="even"  >

        <Columns>

            <asp:BoundField DataField="Idea_Name" HeaderText="عنوان الفكرة" />
            <asp:BoundField DataField="Brief" HeaderText="نبذة"/>
            <asp:BoundField DataField="Idea_ID" HeaderText="ID" /> 


        <asp:TemplateField >
            <ItemTemplate>
                           
             <button class="ButtonSelect" runat="server"> التفاصيل</button>


            </ItemTemplate>
        </asp:TemplateField>

            <asp:TemplateField >
            <ItemTemplate>
  <div class="accepBtns-containerDisplayIdeas">
                        <div class="accepBtn-containerDisplayIdeas m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="Button3" runat="server" Text="قبول الفكرة" />
                        </div>
                        <div class="accepBtn-containerDisplayIdeas m-1 me-xl-4 me-lg-3 p-lg-2">

                            <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="Button4" runat="server" Text="رفض الفكرة" />
                        </div>
                    </div>
                 </ItemTemplate>
        </asp:TemplateField>
       </Columns>
       </asp:GridView>

            
            <asp:ListBox id="ListBox2" runat="server" >

            </asp:ListBox>



            <!------>
        </div>
    </div>


  
     <script>

         var b1 = document.getElementsByClassName("ButtonSelect");
         var b2 = document.getElementById("ContentPlaceHolder1_ListBox2").children;

         var lst2 = []
         for (var y = 0; y < b2.length; y++) {
             lst2.push(b2[y].value)
         }

         for (var z = 0; z < lst2.length; z++) {
             b1[z].id = lst2[z]
             b1[z].addEventListener('click', function special() { window.open(`AcceptIdeas.aspx?id=${this.id}`) })
         }



     </script>



</asp:Content>

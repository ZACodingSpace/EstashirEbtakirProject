<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddParticipationEventAchievement.aspx.cs" Inherits="EstashirEbtakir.AddParticipationEventAchievement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

        <div class="add-Participation-Event ">
            <h1>إضافة فعاليات ومشاركات
       
            </h1>
            <div class="radio-butyons">

                <label>تصنيف</label>

                <input type="radio" id="Event" runat="server" name="chice" value="فعالية" />
                <label1 for="html">فعالية</label1>
                <input type="radio" id="Participation" runat="server" name="chice" value="مشاركة" />
                <label1 for="html1">مشاركة</label1>
            </div>
            <div class="add-form">

                <label for="p-name">اسم الفعالية/المشاركة</label>
                <input type="text" runat="server" id="pname" required />

                <label for="p-about">إضافة نبذة</label>
                <input type="text" runat="server" id="pabout" required />


                <label for="p-supervisor">المشرف</label>
                <input type="text" runat="server" id="psupervisor" required />

                <label for="p-file">إرفاق صور</label>
                <input  type="file" accept="image/png,image/gif,image/jpeg" runat="server" id="imgfile" required />

                <label for="p-file">إرفاق ملفات</label>
                <input type="file" runat="server" accept="application/pdf" id="pfile" required />

                <label for="p-department">التاريخ</label>

                 
                <input type="date" runat="server" id="date" required />

                                    
                

            </div>



            <div class="accepBtns-container">
                <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                    <asp:Button class="accepBtn p-0 ps-2 pe-2" ID="Button3" onclick="add_Click" runat="server" Text="اضافة" />
                </div>
                <div class="accepBtn-container m-1 me-xl-4 me-lg-3 p-lg-2">

                    <asp:Button formaction="ParticipationsHomePage.aspx" class="accepBtn p-0 ps-2 pe-2" ID="Button4" runat="server" Text="الغاء" />
                </div>
            </div>
        </div>
   


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddIdea.aspx.cs" Inherits="EstashirEbtakir.AddIdea" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="addIdea-container">
    <div class="add-idea">

        <h4 class="ideaName"><b>إسم الفكرة</b></h4>

        <textarea class="topic" name="textarea" cols="50" maxlength="80"></textarea>



        <h4><b>النبذة</b></h4>

        <div action="file:///C:/form/submit">
            <textarea class="textarea" name="comment" rows="11" cols="150"></textarea>
            <br>

              <div action="#">
                <label for="lang">التقنية المستخدمه</label>
                <select name="التقنية المستخدمه" id="lang">
                <option value="كتب الكترونية او تطبيقات جوال مدعمة بالواقع المعزز"> كتب الكترونية او الواقع المعزز</option>
                <option value="واجهات التحكم والتفاعل الطبيعي">واجهات التحكم والتفاعل الطبيعي</option>
                <option value="الواقع الافتراضي و الواقع المعزز">الواقع الافتراضي والمعزز</option>
                <option value="الذكاء الإصطناعي، تحليل البيانات و الروبوتيك">الذكاء الإصطناعي و تحليل البيانات و الروبوتيك</option>
                <option value="العرض التجسيمي و الطباعة ثلاثية الأبعاد">العرض التجسيمي و الطباعة ثلاثية الأبعاد</option>
                <option value="استديو انتاج الوسائط المتعددة">استديو انتاج الوسائط المتعددة</option>

                 </select>
               </div>

            <div class="buttons">
                <input type="submit" onclick="alert(' تم ارسال الفكرة, بإنتظار قبول الاضافة')"  class="buttonl" name="submitInfo" value="إضافة">

                <input formaction="IdeasSectionHomePage.aspx" type="submit" class="buttonl" name="submitInfo" value="إلغاء">
            </div>






        </div>
    </div>  </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddIdea.aspx.cs" Inherits="EstashirEbtakir.AddIdea" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="add-idea">

        <h4><b>إسم الفكرة</b></h4>

        <textarea class="topic" name="textarea" cols="50" maxlength="80"></textarea>



        <h4><b>النبذة</b></h4>

        <div action="file:///C:/form/submit">
            <textarea class="textarea" name="comment" rows="11" cols="150"></textarea>
            <br>

                            <h4>التقنية الممكن استخدامها لتنفيذ الفكره :</h4>
        
            
            <div >
                <input type="checkbox" id="AI" name="AI" value="Artificial">
                <label for="AI"> الذكاء الإصطناعي</label><br>
                <input type="checkbox" id="data2" name="data2" value="data">
                <label for="data2"> تحليل البيانات و الروبوتيك</label><br>
                <input type="checkbox" id="VR" name="VR" value="VR1">
                <label for="VR"> الواقع الافتراضي</label><br>
                <input type="checkbox" id="inter" name="inter" value="inter1">
                <label for="inter"> واجهات التحكم والتفاعل الطبيعي</label><br>
                 <input type="checkbox" id="pre" name="pre" value="pre1">
                <label for="pre"> العرض التجسيمي</label><br>
                <input type="checkbox" id="print" name="print" value="print1">
                <label for="print"> الطباعة ثلاثية الأبعاد</label><br>
                <input type="checkbox" id="Studio" name="Studio" value="Studio1">
                <label for="Studio"> استديو انتاج الوسائط المتعددة</label><br>
                <input type="checkbox" id="Books" name="Books" value="Books1">
                <label for="Books"> كتب الكترونية</label><br>
                 <input type="checkbox" id="AR" name="AR" value="AR1">
                <label for="AR"> اتطبيقات جوال مدعمة بالواقع المعزز</label><br>
                <input type="checkbox" id="Other" name="Other" value="Other1">
                <label for="Other"> لا اعلم</label><br>
                
            </div>


            <div class="buttons">
                <input type="submit" onclick="alert(' تم ارسال الفكرة, بإنتظار قبول الاضافة')"  class="buttonl" name="submitInfo" value="إضافة">

                <input formaction="IdeasSectionHomePage.aspx" type="submit" class="buttonl" name="submitInfo" value="إلغاء">
            </div>






        </div>
    </div>
</asp:Content>

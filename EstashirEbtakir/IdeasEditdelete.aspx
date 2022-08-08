<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasEditdelete.aspx.cs" Inherits="EstashirEbtakir.IdeasEditdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Editdelete-idea">

        <h4><b>إسم الفكرة</b></h4>

        <textarea class="topic" name="textarea" cols="50" maxlength="80"></textarea>



        <h4><b>النبذة</b></h4>

        <div action="file:///C:/form/submit">
            <textarea class="textarea" name="comment" rows="11" cols="150"></textarea>
            <br>
            <div class="buttons">
                <input type="submit" onclick="alert(' تم حفظ التعديلات')"  class="buttonl" name="submitInfo" value="حفظ">

                <input  type="submit"  formaction="UserProfile.aspx" class="buttonl" name="submitInfo" value="إلغاء">

         

                 <div class="delete">
            <button type="submit"  class="deleteButton" onclick="myFunction()">حذف</button>
                 </div>
               
                    <p id="demo"></p>

            </div>



        </div>
    </div>

</asp:Content>

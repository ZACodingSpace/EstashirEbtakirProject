<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddIdea.aspx.cs" Inherits="EstashirEbtakir.AddIdea" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="add-idea">

        <h4><b>إسم الفكرة</b></h4>

        <textarea class="topic" name="textarea" maxlength="40"></textarea>



        <h4><b>النبذة</b></h4>

        <div action="file:///C:/form/submit">
            <textarea class="textarea" name="comment" rows="11" cols="150"></textarea>
            <br>
            <div class="buttons">
                <input type="submit" class="buttonl" name="submitInfo" value="إضافة">

                <input formaction="IdeasSectionHomePage.aspx" type="submit" class="buttonl" name="submitInfo" value="إلغاء">
            </div>



        </div>
    </div>
</asp:Content>

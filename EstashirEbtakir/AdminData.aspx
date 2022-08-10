<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminData.aspx.cs" Inherits="EstashirEbtakir.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Admin-Page">
        <select class="select-division" id="select-division">
            <option value="type1"  disabled selected>نوع الاستشارة</option>
            <option value="type1">انترنت الاشياء</option>
            <option value="type2">الذكاء الاصطناعي</option>
        </select>
        <br>
        <br>
        </div>
        <div class="admin-data-container">
            <div id="admin_data">
                <input type="date" name="admin_data[]" class="admin_data" size="50" placeholder="Date">
                <input type="time" name="admin_data[]" class="admin_data" size="50" placeholder="Time">
                <input type="number" name="admin_data[]" class="admin_data" size="50" placeholder="السعر">
            </div>
        </div>

        <div class="admin-controls-container">
        <div class="admin-controls">
            <a href="#" id="add_more_fields"><i class="fa fa-plus"></i>اضافة حقل</a>
            <style>
                a {
                    text-decoration: none;
                    color: #353333;
                }
            </style>
            <a href="#" id="remove_fields"><i class="fa fa-plus"></i>حذف حقل</a>
        </div></div>

        <div class="save-adminData-container">
            <button class="save-adminData">حفظ</button>
        </div>

    

</asp:Content>

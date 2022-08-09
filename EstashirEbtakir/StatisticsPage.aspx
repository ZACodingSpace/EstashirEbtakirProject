<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="StatisticsPage.aspx.cs" Inherits="EstashirEbtakir.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="sections-tabs-stat row p-lg-5">

        <ul class="nav nav-tabs" id="myTab" role="tablist">

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="events-activities-stat" data-bs-toggle="tab" data-bs-target="#events-questions"
                    type="button" role="tab" aria-controls="events-questions" aria-selected="false">
                    الفعاليات والمشاركات</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="ideas-tab-stat" data-bs-toggle="tab" data-bs-target="#ideas-questions" type="button" role="tab"
                    aria-controls="ideas-questions" aria-selected="false">
                    الأفكارالمقترحة</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link" id="consultancies-tab" data-bs-toggle="tab" data-bs-target="#consultancies"
                    type="button" role="tab" aria-controls="consultancies" aria-selected="false">
                    الاستشارات</button>
            </li>
        </ul>
          <div class="tab-pane fade show activsee" id="events-questions" role="tabpanel" aria-labelledby="events-activities-stat">             
         <div class="dropdownList-container">
            <select name="question-list">
                <option vaule="option1">عدد الفعاليات التي اقيمت</option>
                <option vaule="option1">عدد المشاركات</option>
            </select>
             <br />
             <br />
             <select name="question-list">
                <option vaule="option1">خلال السنة الماضية</option>
                <option vaule="option1">خلال الستة اشهر الماضية</option>
                <option vaule="option1">خلال الشهر الماضي</option>
            </select>
        </div>
            </div>

         <div class="tab-pane fade show activsee" id="ideas-questions" role="tabpanel" aria-labelledby="ideas-tab-stat">        
         <div class="dropdownList-container">
            <select name="question-list">
                <option vaule="option1">عدد الافكار المقترحة</option>
            </select>
             <br />
             <br />
             <select name="question-list">
                <option vaule="option1">خلال السنة الماضية</option>
                <option vaule="option1">خلال الستة اشهر الماضية</option>
                <option vaule="option1">خلال الشهر الماضي</option>
            </select>
        </div>

            </div>


    </div>



</asp:Content>

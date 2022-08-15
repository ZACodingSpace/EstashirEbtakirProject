<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasEditdelete.aspx.cs" Inherits="EstashirEbtakir.IdeasEditdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Editdelete-Idea-container">
    <div class="Editdelete-idea">

        <h4><b>إسم الفكرة</b></h4>

        <textarea class="topic" name="textarea " cols="50" maxlength="80"></textarea>



        <h4><b>النبذة</b></h4>

        <div action="file:///C:/form/submit">
            <textarea class="textarea" name="textarea " rows="11" cols="150"></textarea>
            <br>


                    <div class="innovation-lab-technologies p-xl-5 p-lg-4 pt-md-5">

            <h4 class="innovation-lab-technologies-header">التقنيات الممكن استخدامها لتنفيذ الفكرة</h4>

            <div class="idea-checkbox-list-container row row-cols-lg-4 row-cols-md-2">

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="VRtech">
                            <input class="technology-checkbox" type="checkbox" id="VRtech" runat="server" checked="checkBox1_Checked">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">نظارات الواقع الافتراضي</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-VRtech.aspx" target="_blank">تفاصيل</a>
                        </div>
                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="ARtech">
                            <input class="technology-checkbox" type="checkbox" id="ARtech"  runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">تقنية الواقع المعزز</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-ARtech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="Leaptech">
                            <input class="technology-checkbox" type="checkbox" id="Leaptech"  runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">واجهات التفاعل الطبيعية</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-Leaptech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="secondlifetech">
                            <input class="technology-checkbox" type="checkbox" id="secondlifetech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">العوالم الافتراضية</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-secondlifetech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="AItech">
                            <input class="technology-checkbox" type="checkbox" id="AItech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">الذكاء الاصطناعي وتحليل البيانات</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-AItech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="robottech">
                            <input class="technology-checkbox" type="checkbox" id="robottech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">الروبوتيك</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-robottech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="hologramtech">
                            <input class="technology-checkbox" type="checkbox" id="hologramtech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">منصة العرض ثلاثية الأبعاد</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-hologramtech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="soundstudio">
                            <input class="technology-checkbox" type="checkbox" id="soundstudio" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">استديو انتاج الصوت</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-soundstudio.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="threeDprinttech">
                            <input class="technology-checkbox" type="checkbox" id="threeDprinttech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">طابعة ثلاثية الأبعاد</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-3dprinttech.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>



                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="virtualTours">
                            <input class="technology-checkbox" type="checkbox" id="virtualTours" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">الجولات الافتراضية والمشاهد البانورامية</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-Virtual-tours.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="eyeTrack">
                            <input class="technology-checkbox" type="checkbox" id="eyeTrack" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmark"></span>
                                <span class="technology-name">جهاز تعقب حركة العين</span>
                            </span>
                        </label>

                        <div class="technology-details-button-container">
                            <a class="technology-details-button" href="https://ddlg-elil.kau.edu.sa/Pages-eyetrack.aspx" target="_blank">تفاصيل</a>
                        </div>

                    </div>
                </div>

            </div>
        </div>


            </div>
        </div>

        <div class="Edit-idea-page-buttons-container m-lg-0 mt-md-5">
            <Button type="submit"  class="save-idea-button m-1 ms-xl-4 ms-lg-3" onclick="save_Click" runat="server" >حفظ</Button>
            <button formaction="" class="cancel-idea-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">إلغاء</button>
        
         

                 <div class="delete">
            <button type="submit"  class="deleteButton" onclick="myFunction()">حذف</button>
                 </div>
               
                    <p id="demo"></p>

            </div>



     
    
        
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="IdeasEditdelete.aspx.cs" Inherits="EstashirEbtakir.IdeasEditdelete" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="add-idea-page-content  row mt-xl-1 ps-xl-5 pe-xl-5 mt-lg-1 ps-lg-4 pe-lg-4 mt-md-5 ps-md-4 pe-md-4">
        
        <div class="add-idea-links-container pe-xl-5 pt-xl-3 pe-lg-4 pt-lg-2 pe-md-3 pt-md-3">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0" href="IdeasSectionHomePage.aspx">الأفكار المقترحة</a>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="AddIdea.aspx">تعديل الفكرة</a>
        </div>

         <div class="idea-name-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-name">اسم الفكرة</h4>
            <input type="text" class="idea-name-field" id="ideaNameField" runat="server">
            <asp:Label ID="done" class="idea-name" runat="server" Text=" "></asp:Label>
        </div>

        
        <div class="idea-description-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="idea-description-label">نبذة عن الفكرة</h4>
            <textarea class="idea-description-textarea" id="ideaDescriptionTextarea" rows="10" runat="server"></textarea>
        </div>

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
                                    <input class="technology-checkbox" type="checkbox" id="ARtech" runat="server">
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
                                    <input class="technology-checkbox" type="checkbox" id="Leaptech" runat="server">
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
      

        <div class="add-idea-page-buttons-container  m-lg-0 mt-md-5">
            <button type="submit" class="save-idea-button m-1 ms-xl-4 ms-lg-3" onclick="save_Click" runat="server">حفظ</button>
            <button type="submit" formaction="" class="cancel-idea-button m-1 ms-xl-4 ms-lg-3" id="cancelIdeaButton" runat="server">إلغاء</button>
            <button  id="demo" type="submit" class="delete-idea-button" onclick="myFunction()">حذف</button>

            <p></p>

        </div>
    </div>
</asp:Content>

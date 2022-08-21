<%@ Page Title="اضافة مشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="EstashirEbtakir.AddProject" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="add-project-page-content row mt-xl-1 ps-xl-5 pe-xl-5 mt-lg-1 ps-lg-4 pe-lg-4 mt-md-5 ps-md-4 pe-md-4 ">

                   
        <div class="add-project-links-container pe-xl-5 pt-xl-3 pe-lg-4 pt-lg-2 pe-md-3 pt-md-3">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0" href="ProjectSectionHomePage.aspx">المشاريع</a>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="AddProject.aspx">إضافة مشروع</a>
        </div>
        
        <div class="ideaName-ideaLabel-container row">



        </div>

        <div class="project-name-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-name">اسم المشروع</h4>
            <input type="text" class="project-name-field" id="projectNameField" runat="server">
            <asp:Label id="projectNameMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
        </div>

        <div class="project-description-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-description-label">نبذة عن المشروع</h4>
            <textarea class="project-description-textarea" id="projectDescriptionTextarea" rows="10" runat="server"></textarea>
            <asp:Label id="projectDescriptionMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

        </div>

        <div class="pic-college-container row m-0 pt-4">
        <div class="project-pic-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-pic">صورة</h4>
            <input type="file" class="Porjectimg" id="Pimg" accept="image/png, image/gif, image/jpeg" runat="server"/>
            <asp:Label id="projectImgMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
       </div>

         <div class="project-college-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-college">الكلية</h4>
            <input type="text" class="projectCollege" id="collegeP" runat="server"/> </div>
            <asp:Label id="projectCollegeMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
        </div>

         <div class="major-supervisor-container row m-0 pt-4">
         <div class="project-major-container col p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-major">التخصص</h4>
            <input type="text" class="projectMajor" id="majorP" runat="server"/>
             <asp:Label id="projectMajorMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
         </div>

         <div class="project-supervisor-container col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="project-supervisor">المشرف</h4>
            <input type="text"  class="projectSupervisor" id="supervisorP" runat="server"/> 
            <asp:Label id="projectSupervisorMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         </div>
         </div>

        <div class="project-members-container p-xl-5 p-lg-4 pt-md-5">
            <h4 class="project-members-label">الأعضاء</h4>
            <textarea class="project-members-textarea" id="Textarea1" rows="10" runat="server">   </textarea>
           <asp:Label id="projectMembersMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         
        </div>

        <div class="grade-file-container row m-0 pt-4">
         <div class="project-grade-container col p-xl-5 p-lg-4 pt-md-5">
            <h4  class="project-grade">الدرجة</h4>
            <input type="text"  class="projectGrade" id="gradeP" runat="server"/>
            <asp:Label id="projectGradeMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>

         </div>

         <div class="project-file-container col p-xl-5 p-lg-4 pt-md-5">
             <h4  class="project-file">الملف</h4>
              <input type="file" class="projectFile" id="fileP" accept="application/pdf" runat="server"/>
              <i class='fa fa-question-circle question-circle'></i>
            <asp:Label id="projectFileMsg" class="error-msg-project" runat="server" ForeColor="Red"></asp:Label>
         </div>
       </div>

        <div class="innovation-lab-technologies-project p-xl-5 p-lg-4 pt-md-5">

            <h4 class="innovation-lab-technologies-header">اختر التقنيات الممكن استخدامها لتنفيذ المشروع</h4>

            <div class="project-checkbox-list-container row row-cols-lg-4 row-cols-md-2">

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="VRtech">
                            <input class="technology-checkbox" type="checkbox" id="VRtech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">نظارات الواقع الافتراضي</span>
                            </span>
                        </label> 

                    </div>
                        <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-VRtech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="ARtech">
                            <input class="technology-checkbox" type="checkbox" id="ARtech"  runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">تقنية الواقع المعزز</span>
                            </span>
                        </label>

                       

                    </div> 
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-ARtech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="Leaptech">
                            <input class="technology-checkbox" type="checkbox" id="Leaptech"  runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">واجهات التفاعل الطبيعية</span>
                            </span>
                        </label>

                       

                    </div>
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-Leaptech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="secondlifetech">
                            <input class="technology-checkbox" type="checkbox" id="secondlifetech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">العوالم الافتراضية</span>
                            </span>
                        </label>

                       

                    </div> 
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-secondlifetech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="AItech">
                            <input class="technology-checkbox" type="checkbox" id="AItech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">الذكاء الاصطناعي وتحليل البيانات</span>
                            </span>
                        </label>

                      

                    </div>
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-AItech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="robottech">
                            <input class="technology-checkbox" type="checkbox" id="robottech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">الروبوتيك</span>
                            </span>
                        </label>

                        

                    </div>
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-robottech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="hologramtech">
                            <input class="technology-checkbox" type="checkbox" id="hologramtech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">منصة العرض ثلاثية الأبعاد</span>
                            </span>
                        </label>

                     

                    </div> 
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-hologramtech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="soundstudio">
                            <input class="technology-checkbox" type="checkbox" id="soundstudio" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">استديو انتاج الصوت</span>
                            </span>
                        </label>

                       

                    </div> 
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-soundstudio.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="threeDprinttech">
                            <input class="technology-checkbox" type="checkbox" id="threeDprinttech" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">طابعة ثلاثية الأبعاد</span>
                            </span>
                        </label>

                        

                    </div>
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-3dprinttech.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>



                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="virtualTours">
                            <input class="technology-checkbox" type="checkbox" id="virtualTours" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">الجولات الافتراضية والمشاهد البانورامية</span>
                            </span>
                        </label>

                        

                    </div>
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-Virtual-tours.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>


                <div class="technology-list-item-container row m-0 pt-4">
                    <div class="technology-container col-lg-10 col-md-11 m-0 p-0">

                        <label class="technology-checkbox-label" for="eyeTrack">
                            <input class="technology-checkbox" type="checkbox" id="eyeTrack" runat="server">
                            <span class="technology-inner-container">
                                <span class="tickmarkP"></span>
                                <span class="technology-nameP">جهاز تعقب حركة العين</span>
                            </span>
                        </label>

                      

                    </div> 
                    <div class="technology-details-button-container">
                            <a class="technology-details-button-project" href="https://ddlg-elil.kau.edu.sa/Pages-eyetrack.aspx" target="_blank">تفاصيل</a>
                        </div>
                </div>

            </div>
        </div>

        <div class="add-project-page-buttons-container m-lg-0 mt-md-5">
            <asp:Button ID="Button1" class="add-project-button m-1 me-xl-4 me-lg-3" onclick="add_Click" runat="server" Text="إضافة" />
            <button formaction="ProjectsSectionHomePage.aspx" class="cancel-project-button m-1 ms-xl-4 ms-lg-3" id="cancelProjectButton" runat="server">إلغاء</button>
        </div>

    </div>


</asp:Content>

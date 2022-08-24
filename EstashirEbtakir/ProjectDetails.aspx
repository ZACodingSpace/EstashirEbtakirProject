<%@ Page Title="تفاصيل المشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="EstashirEbtakir.ProjectDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="project-details-page-container p-5">
        <div class="project-details-content-container row p-5">

            <div class="project-first-row-details-container row mt-3">

                <div class="project-img-details-container col-6">
                    <asp:Image ID="Image1" runat="server" class="project-img-details" />
                    <h4 class="project-img-details-label">شعار المشروع</h4>
                </div>

                <div class="project-name-grade-file-container col-6">

                    <div class="project-name-details-container row mt-3">
                        <h4 class="project-name-details-label col">اسم المشروع</h4>
                        <input type="text" class="project-name-details col" id="projectDetailsNameField" runat="server" disabled>
                    </div>

                    <div class="project-grade-details-container  row mt-3">
                        <h4 class="project-grade-details-label col">الدرجة</h4>
                        <input type="text" class="project-grade-details col" id="gradeP" runat="server" disabled />
                    </div>

                    <div class="project-file-details-container  row mt-3">
                        <h4 class="project-file-details-label col-6">الملف</h4>
                        <asp:Button ID="downloadFile" class="downloadFile-projectDetails-button p-1" OnClick="downloadFile_Click" runat="server" Text="تنزيل" />
                    </div>
                </div>

            </div>

            <div class="project-description-details-container row mt-5">
                <h4 class="project-description-details-label">نبذة عن المشروع</h4>
                <textarea class="project-description-details" id="ProjectDetailsDescription" runat="server" disabled></textarea>
            </div>

            <div class="project-third-row-details-container row mt-3">
                <div class="project-faculty-details-container col-6">
                    <h4 class="project-faculty-details-label">الكلية</h4>
                    <input type="text" class="project-faculty-details" id="collegeProjectDetails" runat="server" disabled />
                </div>

                <div class="project-major-details-container col-6">
                    <h4 class="project-major-details-label">التخصص</h4>
                    <input type="text" class="project-major-details" id="majorProjectDetails" runat="server" disabled />
                </div>
            </div>

            <div class="project-fourt-row-details-container row mt-3">
                <div class="project-members-details-container col-6">
                    <h4 class="project-members-details-label">الأعضاء</h4>
                    <textarea class="project-members-details" id="TextareaProjectDetails" runat="server" disabled>   </textarea>
                </div>

                <div class="project-supervisor-details-container col-6">
                    <h4 class="project-supervisor-details-label">المشرف</h4>
                    <input type="text" class="project-supervisor-details" id="supervisorP" runat="server" disabled />
                </div>


            </div>
            <div class="project-technology-details-container row mt-3">
                <h4 class="project-technology-details-label">التقنيات التي تم استخدامها لتنفيذ المشروع</h4>
                <input type="text" class="project-technology-details" id="Text1" runat="server" disabled>
            </div>

            <div class="project-details-back-button-container row mt-3">
                <button formaction="IdeasSectionHomePage.aspx" class="project-dtails-back-button p-1">رجوع</button>
            </div>

        </div>
    </div>


    <%-----------------------Script------------------------%>
    <script>
        var p1 = document.getElementsByClassName("project-details-button");
        var p2 = document.getElementById("ContentPlaceHolder1_ListBox3").children;

        var lstp2 = []
        for (var y = 0; y < p2.length; y++) {
            lstp2.push(p2[y].value)
        }

        for (var z = 0; z < lstp2.length; z++) {
            p1[z].id = lstp2[z]
            p1[z].addEventListener('click', function special() { window.open(`ProjectDetails.aspx?id=${this.id}`) })
        }
    </script>

</asp:Content>

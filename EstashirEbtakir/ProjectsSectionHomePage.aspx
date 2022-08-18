﻿<%@ Page Title="المشاريع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectsSectionHomePage.aspx.cs" Inherits="EstashirEbtakir.ProjectsSectionHomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="projects-page-header-container row row ps-lg-5 pe-lg-5 mt-lg-3 mb-lg-3">

        <div class="projects-links-container pe-lg-4 pt-lg-2 ">
            <a class="m-0 p-0" href="Home.aspx">الرئيسية</a>
            <span class="m-0 p-0">/</span>
            <span class="m-0 p-0">الأقسام</span>
            <span class="m-0 p-0">/</span>
            <a class="m-0 p-0 active-link" href="">المشاريع</a>
        </div>

        <div class="projects-description-container row pe-lg-4 mt-lg-5">

            <div class="projects-page-name-container">
                <h3 class="projects-page-name">المشاريع</h3>
            </div>

            <div class="projects-page-description-container">
                <p class="projects-page-description mt-xl-2">
                    نبذة عن قسم المشاريع
                </p>
            </div>

        </div>

        <div class="search-bar-and-buttons-container row mt-lg-5">

            <div class="add-project-button-container col-6">
                <button class="add-project-button ps-lg-3 pe-lg-3 pt-1 pb-1" formaction="AddProject.aspx">إضافة مشروع</button>
            
            
            </div>

            <div class="projects-search-bar-container col-6">

                <div class="projects-serach-bar ms-lg-1 me-lg-1">
                    <input class="projects-form-control form-control " type="search" placeholder="البحث" aria-label="Search">
                    <button class="projects-search-button ps-lg-3 pe-lg-3 pt-1 pb-1" type="submit">ابحث</button>
                </div>

                <div class="sort-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-sort"></i></div>
                <div class="filter-projects ms-lg-1 me-lg-1"><i class="fa-solid fa-filter"></i></div>


            </div>
        </div>


    </div>

  
        <!-- Cards -->
    <!---------------------------->
    <center>
    <asp:DataList ID="DataListProject" runat="server" RepeatColumns="4" >
                    <ItemTemplate>
                        
                        <table class= "ProjectTable" >

                            <tr>
                                <td class="imageTable"></td>
                                 
                            </tr>
                            
                            <tr >
                                <td class="projectName"> <%#Eval("Project_Name") %>  </td>
                                <td>  <br /> </td>
                            </tr>

                            <tr>
                                <td class="college">الكلية</td>
                                <td class="collegeDB"> <%#Eval("Faculty") %> </td>
                            </tr>
                             <tr>
                                <td class="major">التخصص</td>
                                <td class="majorDB"> <%#Eval("Degree") %> </td>
                            </tr>
                           
                            
                             <tr>
                        <td class="projectButton">  <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx"">تفاصيل</button> </td>    
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
        </center>

    <!---------------------------->    

    <div class="d-flex justify-content-center">

        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>

    </div>



</asp:Content>

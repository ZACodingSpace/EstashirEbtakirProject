<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="EstashirEbtakir.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <center>

             <div class="parentAsp">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" >
                    <ItemTemplate>
                        <table class= "tableAsp" >

                            <tr>
                                <td class="imageTable"></td>
                                 <td> </td>
                            </tr>
                            
                            <tr >
                                <td>هنا اسم المشروع: </td>
                                <td class="projectName"> <%#Eval("ProjectName") %>  </td>
                                <td>  <br /> </td>
                            </tr>

                            <tr>
                                <td class="college">الكلية</td>
                                <td class="collegeDB"> <%#Eval("college") %> </td>
                            </tr>
                             <tr>
                                <td class="major">التخصص</td>
                                <td class="majorDB"> <%#Eval("major") %> </td>
                            </tr>
                           
                            
                             <tr>
                        <td class="projectButton">  <button class="project-details-button p-0 ps-xl-3 pe-xl-3 ps-lg-2 pe-lg-2"
                  formaction="ProjectDetails.aspx"">تفاصيل</button> </td>    
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                    </div>
            </center>
       
</asp:Content>

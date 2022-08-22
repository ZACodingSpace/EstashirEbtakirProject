<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultantDetails.aspx.cs" Inherits="EstashirEbtakir.consultantDetailes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="consultantDetails-container">


        <!--
        <div class="consultantDetails">
        <h3>د. عفراء عطية</h3>
        <p>كلية الحاسبات وتقنيةالمعلومات - قسم تقنية المعلومات</p>
        <p>تخصص....</p>
        <p>الخبرات..</p>
        <p>مجالات الاستشارة...</p></div>   -->

         <asp:DataList ID="DataListCons" runat="server" RepeatColumns="4">
                        <ItemTemplate>
                            <table class="ConsTable">

                                <tr>
                                    <td>
                                        <img class="ConsImage" src="Images/Profile_Icon.png" />
                                    </td>

                                </tr>

                                <tr>

                                    <td class="ConsName"><%#Eval("Fname") %>  <%#Eval("Lname") %>  - 
                                        
                                        <%#Eval("Position") %>
                                    </td>
                                   
                                </tr>

                                
                                <tr>
                                    <td class="ConsCollegeMajorDB"><%#Eval("Department") %> - <%#Eval("Faculty") %> </td>
                                </tr>

                                

                                

                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:ListBox id="ListBox2" runat="server" style="display:none">

            </asp:ListBox>





        <div class="consultantDate-container">
            <asp:Calendar class="Calendar1" runat="server"></asp:Calendar>
        </div>

        <div class="consultantTime-container"></div>

    </div>




</asp:Content>

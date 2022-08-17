<%@ Page Title="اسم المشروع" Language="C#" MasterPageFile="~/MainMasterPage.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="EstashirEbtakir.ProjectDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a class="project-btn" href="ProjectsSectionHomePage.aspx">رجوع</a>
    
    <div class="browse-project-area">
        
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table>
        <h1 id="nameP" runat="server">اسم المشروع</h1>
        
        <tr class="browse-project-info">
           <td> <h4>نبذة عن المشروع</h4></td>
          <td> <asp:Label ID="projectDetail" runat="server" Text="">
             
               </asp:Label></td> 
            </tr>
                  
         
                    </table>
                 </ItemTemplate>
        </asp:DataList>
    </div>

               
</asp:Content>

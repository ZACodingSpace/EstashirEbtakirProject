using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.Drawing;
using System.Security.Policy;
using System.Runtime.Remoting.Messaging;


namespace EstashirEbtakir
{
    public partial class MyProjectsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                sqlconn.Open();
                SqlCommand cmdProfile = new SqlCommand("select * from EEUser where User_ID='" + Session["id"] + "'", sqlconn);
                SqlDataReader readerProfile = cmdProfile.ExecuteReader();

                if (readerProfile.Read())
                {
                    // display user info
                   
                    name.Attributes.Add("placeholder", readerProfile.GetString(1) + " " + readerProfile.GetString(2));
                    job.Attributes.Add("placeholder", readerProfile.GetString(7));

                }
                sqlconn.Close();
                sqlconn = new SqlConnection(mainconn);
                string sqlqueryPro = "Select Faculty, Project_Name, Project_ID, Degree, Major, Case" +
                    " when Project_State = 0 then N'قيد المراجعة' when Project_State=1 then N'مقبول' else N'مرفوض' end as State " +
                    "from[dbo].[EEProject] inner join[dbo].[EEUser] On EEProject.User_ID = EEUSer.User_ID where EEProject.User_ID=" + Session["id"];
                sqlconn.Open();
                SqlCommand sqlcommPro = new SqlCommand(sqlqueryPro, sqlconn);
                
                SqlDataAdapter sdaPro = new SqlDataAdapter();
                sdaPro.SelectCommand = sqlcommPro;
                DataSet dsPro = new DataSet();

                sdaPro.Fill(dsPro);
                DataListProject.DataSource = dsPro;
                DataListProject.DataBind();

                SqlDataReader reader3 = sqlcommPro.ExecuteReader();

                while (reader3.Read())
                {

                    ListBox3.Items.Add(reader3["Project_Id"].ToString());

                }

                //-----
                sqlconn = new SqlConnection(mainconn);

                string sqlqueryPro2 = "Select *, Case  when Project_State = 0 then N'قيد المراجعة' when Project_State=1 then N'مقبول' else N'مرفوض' end as State " +
                    "from[dbo].[EEProject] inner join[dbo].[EEUser] On EEProject.User_ID = EEUSer.User_ID where EEProject.User_ID=" + Session["id"];

                SqlCommand sqlcommPro2 = new SqlCommand(sqlqueryPro2, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaPro2 = new SqlDataAdapter();
                sdaPro2.SelectCommand = sqlcommPro2;
                DataSet dsPro2 = new DataSet();

                sdaPro2.Fill(dsPro2);
                DataListProject.DataSource = dsPro2;
                DataListProject.DataBind();
                SqlDataReader reader2 = sqlcommPro2.ExecuteReader();

                while (reader2.Read())
                {

                    ListBoxEditDeleteProject.Items.Add(reader2["Project_Id"].ToString());

                }


                sqlconn.Close();
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstashirEbtakir
{
    public partial class ProjectsSectionHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] == null)
            {
                addProjectButton.Visible = false;
            }
            else
            {
                if (Session["University_ID"] == null)
                {
                    addProjectButton.Visible = false;

                }
                else
                {
                    addProjectButton.Visible = true;
                }
            }

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryPro = "Select * from [dbo].[EEProject] where Project_State='1' order by Project_ID desc";
            SqlCommand sqlcommPro = new SqlCommand(sqlqueryPro, sqlconn);
            sqlconn.Open();
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

            sqlconn.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string text = searchText.Value;
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlqueryPro = "Select * from [dbo].[EEProject] WHERE (Project_Name LIKE '%' + @ProjectName +'%' )";
            SqlCommand sqlcommIPro = new SqlCommand(sqlqueryPro, sqlconn);
            sqlcommIPro.Parameters.AddWithValue("@ProjectName", text);
            SqlDataAdapter sdaPro2 = new SqlDataAdapter(sqlcommIPro);
            DataSet dsPro2 = new DataSet();
            sdaPro2.Fill(dsPro2);
            DataListProject.DataSource = dsPro2;
            DataListProject.DataBind();

        }
    }
}
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

        }
    }
}
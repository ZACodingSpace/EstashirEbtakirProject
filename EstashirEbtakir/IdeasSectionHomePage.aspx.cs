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
    public partial class IdeasSectionHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryIdea = "Select * from [dbo].[EEIdea] order by Idea_ID desc";
            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            DataListIdea.DataSource = dsIdea;
            DataListIdea.DataBind();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
           /*string text= searchText.Value ;
           string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
           SqlConnection sqlconn = new SqlConnection(mainconn);

           string sqlqueryIdea = "Select * from [dbo].[EEIdea] WHERE IdeaNme LIKE %@CourseName% order by Idea_ID desc";
           SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
           sqlconn.Open();
           SqlDataAdapter sdaIdea = new SqlDataAdapter();
           sdaIdea.SelectCommand = sqlcommIdea;
           DataSet dsIdea = new DataSet();

           sdaIdea.Fill(dsIdea);
           DataListIdea.DataSource = dsIdea;
           DataListIdea.DataBind();
           */
        }
    }
}
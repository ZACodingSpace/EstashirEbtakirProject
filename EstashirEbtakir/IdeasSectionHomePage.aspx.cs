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

            string sqlqueryIdea = "Select * from [dbo].[EEIdea] where Idea_State='0' order by Idea_ID desc";
            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            DataListIdea.DataSource = dsIdea;
            DataListIdea.DataBind();
            SqlDataReader reader = sqlcommIdea.ExecuteReader();

            while (reader.Read())
            {

                ListBox1.Items.Add(reader["Idea_Id"].ToString());

            }
            sqlconn.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
           string text= searchText.Value;
           string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
           SqlConnection sqlconn = new SqlConnection(mainconn);
           sqlconn.Open();
            string sqlqueryIdea = "Select * from [dbo].[EEIdea] WHERE (Idea_Name LIKE '%' + @IdeaName +'%' )" ; 
           SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
           sqlcommIdea.Parameters.AddWithValue("@IdeaName", text);
           SqlDataAdapter sdaIdea2 = new SqlDataAdapter(sqlcommIdea);
           DataSet dsIdea2 = new DataSet();
           sdaIdea2.Fill(dsIdea2);
           DataListIdea.DataSource = dsIdea2;
           DataListIdea.DataBind();
           
        }
    }
}
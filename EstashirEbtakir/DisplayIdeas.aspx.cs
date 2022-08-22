using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Windows.Shapes;
using System.Windows.Controls;

namespace EstashirEbtakir
{
    public partial class DisplayIdeas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);


            //Ideas
            string sqlqueryIdea = "Select *  from OurIdeas";
            SqlCommand sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea = new SqlDataAdapter();
            sdaIdea.SelectCommand = sqlcommIdea;
            DataSet dsIdea = new DataSet();

            sdaIdea.Fill(dsIdea);
            GridView1.DataSource = dsIdea;
            GridView1.DataBind();
            SqlDataReader reader = sqlcommIdea.ExecuteReader();

            while (reader.Read())
            {

                ListBox2.Items.Add(reader["Idea_Id"].ToString());
            }

            sqlconn.Close();

        }

     

        protected void LinkButtonId_Click(object sender, EventArgs e)
        {

        }

        protected void Send(object sender, EventArgs e)
        {
      
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int pID = Convert.ToInt32(e.CommandArgument);
                // either put ID in session and check 
                Session["Idea_ID"] = Convert.ToString(pID);
                Server.Transfer("AcceptIdeas.aspx");
            }
        }

      

    }
}
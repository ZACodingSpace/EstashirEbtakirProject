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
    public partial class AcceptProjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);


            //Ideas
            string sqlqueryIdea = "Select *  from EEProject where Project_State='0'";
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

                ListBox1.Items.Add(reader["Project_Id"].ToString());

            }
            sqlconn.Close();
            //-----------------------------------
            sqlqueryIdea = "Select *  from EEProject where Project_State='1'";
            sqlcommIdea = new SqlCommand(sqlqueryIdea, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaIdea2 = new SqlDataAdapter();
            sdaIdea2.SelectCommand = sqlcommIdea;
            DataSet dsIdea2 = new DataSet();

            sdaIdea2.Fill(dsIdea2);
            GridView2.DataSource = dsIdea2;
            GridView2.DataBind();
            SqlDataReader reader2 = sqlcommIdea.ExecuteReader();

            while (reader2.Read())
            {

                ListBox2.Items.Add(reader2["Project_Id"].ToString());

            }

            //----------------------------------
            sqlconn.Close();

        

    }
    }
}
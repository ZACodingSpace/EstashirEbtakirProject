using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstashirEbtakir
{
    public partial class EventsHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlqueryEvent = "Select * from [dbo].[EventsAndParticipation] where Type='0'";
            SqlCommand sqlcommEvent = new SqlCommand(sqlqueryEvent, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sdaEvent = new SqlDataAdapter();
            sdaEvent.SelectCommand = sqlcommEvent;
            DataSet dsEvent = new DataSet();
            sdaEvent.Fill(dsEvent);
            DataListEvent.DataSource = dsEvent;
            DataListEvent.DataBind();


            sqlconn.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string text = searchText.Value;
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlqueryEvent = "Select * from [dbo].[EventsAndParticipation] WHERE Type= 0 And (Name LIKE '%' + @EName +'%' )";
            SqlCommand sqlcommEvent = new SqlCommand(sqlqueryEvent, sqlconn);
            sqlcommEvent.Parameters.AddWithValue("@EName", text);
            SqlDataAdapter sdaEvent2 = new SqlDataAdapter(sqlcommEvent);
            DataSet dsEvent2 = new DataSet();
            sdaEvent2.Fill(dsEvent2);
            DataListEvent.DataSource = dsEvent2;
            DataListEvent.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;

namespace EstashirEbtakir
{
    public partial class MyIdeasPage : System.Web.UI.Page
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
                string sqlqueryIdea = "Select *, Case when Idea_State = 0 then N'قيد المراجعة' when Idea_State=1 then N'مقبول' else N'مرفوض' end as State  " +
                    "from [dbo].[EEIdea] inner join [dbo].[EEUser] On EEIdea.User_ID=EEUSer.User_ID where EEIdea.User_ID=" + Session["id"] + " order by Idea_ID desc";

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

                    ListBoxEditDeleteIdea.Items.Add(reader["Idea_Id"].ToString());

                }

                sqlconn = new SqlConnection(mainconn);
                //

                string sqlqueryIdea2 = "Select *, Case when Idea_State = 0 then N'قيد المراجعة' when Idea_State=1 then N'مقبول' else N'مرفوض' end as State  " +
                    "from [dbo].[EEIdea] inner join [dbo].[EEUser] On EEIdea.User_ID=EEUSer.User_ID where EEIdea.User_ID=" + Session["id"]+" order by Idea_ID desc";

                SqlCommand sqlcommIdea2 = new SqlCommand(sqlqueryIdea2, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaIdea2 = new SqlDataAdapter();
                sdaIdea2.SelectCommand = sqlcommIdea2;
                DataSet dsIdea2 = new DataSet();

                sdaIdea2.Fill(dsIdea2);
                DataListIdea.DataSource = dsIdea;
                DataListIdea.DataBind();
                SqlDataReader reader2 = sqlcommIdea2.ExecuteReader();

                while (reader2.Read())
                {

                    ListBoxDetails.Items.Add(reader2["Idea_Id"].ToString());

                }
                sqlconn.Close();
            }
        }
    }
}
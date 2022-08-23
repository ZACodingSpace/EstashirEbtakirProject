using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EstashirEbtakir
{
    public partial class Home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);


                //Ideas
                string sqlqueryIdea = "Select Top 4 * from [dbo].[EEIdea] where Idea_State='1' order by Idea_ID desc";
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

                /////////////////////////////////////


                //Consultations
                sqlconn = new SqlConnection(mainconn);

                string sqlqueryCons = "Select Top 4 * from [dbo].[EECounselor] " +
                    "inner Join [dbo].[EEUser] ON Counselor_ID=User_ID";
                SqlCommand sqlcommCons = new SqlCommand(sqlqueryCons, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaCons = new SqlDataAdapter();
                sdaCons.SelectCommand = sqlcommCons;
                DataSet dsCons = new DataSet();

                sdaCons.Fill(dsCons);
                DataListCons.DataSource = dsCons;
                DataListCons.DataBind();
                SqlDataReader reader2 = sqlcommCons.ExecuteReader();

                while (reader2.Read())
                {

                    ListBoxConsDetails.Items.Add(reader2["Counselor_Id"].ToString());

                }
                sqlconn.Close();

                //

                sqlconn = new SqlConnection(mainconn);

                string sqlqueryCons2 = "Select Top 4 * from [dbo].[EECounselor] " +
                    "inner Join [dbo].[EEUser] ON Counselor_ID=User_ID";
                SqlCommand sqlcommCons2 = new SqlCommand(sqlqueryCons2, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaCons2 = new SqlDataAdapter();
                sdaCons2.SelectCommand = sqlcommCons2;
                DataSet dsCons2 = new DataSet();

                sdaCons2.Fill(dsCons2);
                DataListCons.DataSource = dsCons2;
                DataListCons.DataBind();
                SqlDataReader reader22 = sqlcommCons2.ExecuteReader();

                while (reader22.Read())
                {

                    ListBoxConsBooking.Items.Add(reader22["Counselor_Id"].ToString());

                }
                sqlconn.Close();

                ///////////////////////////////////



                //Projects
                sqlconn = new SqlConnection(mainconn);

                string sqlqueryPro = "Select Top 4 * from [dbo].[EEProject] where Project_State='1' order by Project_ID desc";
                SqlCommand sqlcommPro = new SqlCommand(sqlqueryPro, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaPro = new SqlDataAdapter();
                sdaPro.SelectCommand = sqlcommPro;
                DataTable dsPro = new DataTable();
                sdaPro.Fill(dsPro);


                byte[] bytes = (byte[])dsPro.Rows[0].ItemArray[12];
                string base64String = Convert.ToBase64String(bytes);
                //Image4.ImageUrl = "data:image/png;base64," + base64String;
                //  Image2.ImageUrl = "data:image/png;base64," + base64String;
                //   DataSet dsPro = new DataSet();

                // sdaPro.Fill(dsPro);
                DataListProject.DataSource = dsPro;
                DataListProject.DataBind();
                SqlDataReader reader3 = sqlcommPro.ExecuteReader();

                while (reader3.Read())
                {

                    ListBox3.Items.Add(reader3["Project_Id"].ToString());

                }
                sqlconn.Close();
                //////////////////////////////


                //Events, participation and achievements
                sqlconn = new SqlConnection(mainconn);

                string sqlqueryEvent = "Select Top 4 * from [dbo].[EventsAndParticipation] order by ID desc";
                SqlCommand sqlcommEvent = new SqlCommand(sqlqueryEvent, sqlconn);
                sqlconn.Open();
                SqlDataAdapter sdaEvent = new SqlDataAdapter();
                sdaEvent.SelectCommand = sqlcommEvent;
                DataSet dsEvent = new DataSet();

                sdaEvent.Fill(dsEvent);
                DataListEvent.DataSource = dsEvent;
                DataListEvent.DataBind();
                SqlDataReader reader4 = sqlcommEvent.ExecuteReader();

                while (reader4.Read())
                {

                    ListBox4.Items.Add(reader4["ID"].ToString());

                }
                sqlconn.Close();
            }

        

        }

       
    }
}
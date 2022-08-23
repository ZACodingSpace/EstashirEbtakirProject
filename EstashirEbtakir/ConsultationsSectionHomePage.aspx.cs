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
    public partial class ConsultationsSectionHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);

                string sqlqueryCons = "Select * from [dbo].[EECounselor] " +
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

                sqlconn = new SqlConnection(mainconn);

                string sqlqueryCons2 = "Select * from [dbo].[EECounselor] " +
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
            }

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string text = searchText.Value;
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            string sqlqueryCounselor = "Select * from[dbo].[EECounselor] " +
                    "inner Join [dbo].[EEUser] ON Counselor_ID=User_ID WHERE (Fname LIKE '%' + @Name +'%' OR Lname LIKE '%' + @Name +'%')";
            SqlCommand sqlcommCounselor = new SqlCommand(sqlqueryCounselor, sqlconn);
            sqlcommCounselor.Parameters.AddWithValue("@Name", text);
            SqlDataAdapter sdaCounselor2 = new SqlDataAdapter(sqlcommCounselor);
            DataSet dsCounselor2 = new DataSet();
            sdaCounselor2.Fill(dsCounselor2);
            DataListCons.DataSource = dsCounselor2;
            DataListCons.DataBind();
        }
    }
}
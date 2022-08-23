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
using System.IO;

namespace EstashirEbtakir
{
	public partial class UserViewEvent : System.Web.UI.Page
	{
		SqlConnection sqlconn;
		int FileID = 0;
		protected void Page_Load(object sender, EventArgs e)
		{
            var Id = Request.QueryString["id"];
            string mainconn = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();

            string sqlquery = "Select * from [dbo].[EventsAndParticipation] where ID='" + Id + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, sqlconn);
            DataTable ds = new DataTable();
            da.Fill(ds);
            eventName.InnerText = (string)ds.Rows[0].ItemArray[2];
            eventdes.InnerText = (string)ds.Rows[0].ItemArray[3];
            supervisorP.Value = (string)ds.Rows[0].ItemArray[4];
            FileID = (int)ds.Rows[0].ItemArray[8];
            byte[] bytes = (byte[])ds.Rows[0].ItemArray[6];
            string base64String = Convert.ToBase64String(bytes);
            Image1.ImageUrl = "data:image/png;base64," + base64String;

            sqlconn.Close();

        }
        protected void downloadFile_Click(object sender, EventArgs e)
        {
            int id = FileID;
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Name, Data, ContentType from EEFile where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }


    }
}
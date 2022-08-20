using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;

namespace EstashirEbtakir
{
    public partial class AddParticipationEventAchievement : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void add_Click(object sender, EventArgs e)
        {
            int type=-1;
            if(Event.Checked== true)
            {
                type = 0;
            }
            if(Participation.Checked== true)
            {
                type = 1;
            }
            string Name = pname.Value;
            string brief = pabout.Value;
            string date2 = date.Value;
            string supervisor = psupervisor.Value;
            Stream fsIMG = imgfile.PostedFile.InputStream;
            BinaryReader brIMG = new BinaryReader(fsIMG);
            byte[] bytesIMG = brIMG.ReadBytes((Int32)fsIMG.Length);

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();

            //Upload File
            string filename = Path.GetFileName(pfile.PostedFile.FileName);
            string contentType = pfile.PostedFile.ContentType;
            using (Stream fs = pfile.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    SqlCommand cmd = new SqlCommand("INSERT INTO OurFile (Name, ContentType, Data) VALUES(@Name, @ContentType, @Data)", con);
                    cmd.Parameters.AddWithValue("@Name", filename);
                    cmd.Parameters.AddWithValue("@ContentType", contentType);
                    cmd.Parameters.AddWithValue("@Data", bytes);
                    cmd.ExecuteNonQuery();
                }
            }

            SqlDataAdapter sda = new SqlDataAdapter("select @@IDENTITY from OurFile", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int AdminID = (int)Session["id"];
            SqlCommand cmd2 = new SqlCommand("INSERT INTO EventsAndParticipation (Admin_ID, Name, Brief, " +
                "Supervisor, Date, image, Type, File_ID)" +
                " VALUES(@Admin_ID, @Name, @Brief, @Supervisor, @Date, @image, @Type, @File_ID)", con);
            cmd2.Parameters.AddWithValue("@Admin_ID", AdminID);
            cmd2.Parameters.AddWithValue("@Name", Name);
            cmd2.Parameters.AddWithValue("@Brief", brief);
            cmd2.Parameters.AddWithValue("@Supervisor", supervisor);
            cmd2.Parameters.AddWithValue("@Date", date2);
            cmd2.Parameters.AddWithValue("@image", bytesIMG);
            cmd2.Parameters.AddWithValue("@Type", type);
            cmd2.Parameters.AddWithValue("@File_ID", dt.Rows[0].ItemArray[0]);
            cmd2.ExecuteNonQuery();

            if (type == 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                      "Swal.fire({title: 'تم إضافة الفعالية بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'EventsHomePage.aspx'})", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                      "Swal.fire({title: 'تم إضافة المشاركة بنجاح',icon: 'success', confirmButtonText: 'موافق'}).then(function() { window.location = 'ParticipationsHomePage.aspx'})", true);
            }
            con.Close();
        }
    }
}
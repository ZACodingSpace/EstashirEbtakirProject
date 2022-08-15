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
    public partial class AddIdea : System.Web.UI.Page
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
            string ideaName = ideaNameField.Value;
            string brief = ideaDescriptionTextarea.Value;

            string str = getConstring();
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO OurIdea(User_ID, Idea_Name, Brief,Idea_State) VALUES(@userID,@IdeaName, @IdeaBrief, @State)", con);
            int UserID = (int)Session["id"];
            cmd.Parameters.AddWithValue("@userID", UserID);
            cmd.Parameters.AddWithValue("@IdeaName", ideaName);
            cmd.Parameters.AddWithValue("@IdeaBrief", brief);
            cmd.Parameters.AddWithValue("@State", 0);
            cmd.ExecuteNonQuery();
            done.Text = "تمت إضافة الفكرة بنجاح";
            
            SqlDataAdapter sda = new SqlDataAdapter("select @@IDENTITY from OurIdea", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            SqlCommand cmdTech = new SqlCommand("INSERT INTO Technologies(tech_name, type, ID) VALUES(@TechName,@Type, @Idea_ID)", con);
            cmdTech.Parameters.AddWithValue("@TechName", SqlDbType.VarChar);
            cmdTech.Parameters.AddWithValue("@Type", "I");
            cmdTech.Parameters.AddWithValue("@Idea_ID", dt.Rows[0].ItemArray[0]);

            if (VRtech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value= "نظارات الواقع الافتراضي";
                cmdTech.ExecuteNonQuery();
            }
            if (ARtech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "تقنية الواقع المعزز";
                cmdTech.ExecuteNonQuery();
            }
            if (Leaptech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "واجهات التفاعل الطبيعية";
                cmdTech.ExecuteNonQuery();
            }
            if (secondlifetech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "العوالم الافتراضية";
                cmdTech.ExecuteNonQuery();
            }
            if (AItech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "الذكاء الاصطناعي وتحليل البيانات";
                cmdTech.ExecuteNonQuery();
            }
            if (robottech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "الروبوتيك";
                cmdTech.ExecuteNonQuery();
            }
            if (hologramtech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "منصة العرض ثلاثية الأبعاد";
                cmdTech.ExecuteNonQuery();              
            }
            if (soundstudio.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "استديو انتاج الصوت";
                cmdTech.ExecuteNonQuery();
            }
            if (threeDprinttech.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "طابعة ثلاثية الأبعاد";
                cmdTech.ExecuteNonQuery();
            }
            if (virtualTours.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "الجولات الافتراضية والمشاهد البانورامية";
                cmdTech.ExecuteNonQuery();
            }
            if (eyeTrack.Checked == true)
            {
                cmdTech.Parameters["@TechName"].Value = "جهاز تعقب حركة العين";
                cmdTech.ExecuteNonQuery();
            }

        }
        
        
    }
}
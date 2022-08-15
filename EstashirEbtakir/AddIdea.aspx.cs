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
        //int ID;
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
            //MessageBox.Show(Session["id"] + " ");
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
            SqlCommand cmd2 = new SqlCommand("select Idea_ID from OurUser where User_ID='" + UserID + ", Idea_Name='" + ideaName + "'", con);

           // SqlDataReader reader= cmd2.ExecuteReader();
            //int lastID = reader.GetDecimal(Idea_ID);
            //MessageBox.Show(lastID+" ");
            SqlCommand cmdTech = new SqlCommand("INSERT INTO Technologies(tech_name, type, ID) VALUES(@TechName,@Type, @Idea_ID)", con);
           
            if (VRtech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "نظارات الواقع الافتراضي");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (ARtech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "تقنية الواقع المعزز");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (Leaptech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "واجهات التفاعل الطبيعية");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (secondlifetech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "العوالم الافتراضية");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (AItech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "الذكاء الاصطناعي وتحليل البيانات");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (robottech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "الروبوتيك");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (hologramtech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "منصة العرض ثلاثية الأبعاد");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (soundstudio.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "استديو انتاج الصوت");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (threeDprinttech.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "طابعة ثلاثية الأبعاد");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (virtualTours.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "الجولات الافتراضية والمشاهد البانورامية");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }
            if (eyeTrack.Checked == true)
            {
                cmdTech.Parameters.AddWithValue("@TechName", "جهاز تعقب حركة العين");
                cmdTech.Parameters.AddWithValue("@Type", "I");
                cmdTech.Parameters.AddWithValue("@Idea_ID", brief);
            }

        }
        
        
    }
}
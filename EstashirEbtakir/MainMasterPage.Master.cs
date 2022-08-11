using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Windows;

namespace EstashirEbtakir
{
    public partial class MainMasterPage : System.Web.UI.MasterPage
    {
        SqlConnection con;
        public string getConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                userInformationContainer.Visible = false;
                signUpContainer.Visible = true;
            }
            else
            {
                //MessageBox.Show(Session["id"]+" ");
                userInformationContainer.Visible = true;
                profileUserLinkButton.Text = "   "+(string)Session["name"]+"  ";
                signUpContainer.Visible = false;
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            //MessageBox.Show( "تم تسجيل خروجك بنجاح ");
            //Page_Load(sender,e);
            Response.Redirect("Home.aspx");
        }

        }
}
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
        //SqlConnection con;
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
                staticsItem.Visible = false;
            }
            else
            {
                userInformationContainer.Visible = true;
                profileUserLinkButton.Text = "   " + (string)Session["name"] + "  ";
                signUpContainer.Visible = false;

                string type = (string)Session["Type"];
                if (type == "User")
                {
                    staticsItem.Visible= false;
                }
                else
                {
                    staticsItem.Visible = true;
                }
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        protected void profile_Click(object sender, EventArgs e)
        {
            string type = (string)Session["Type"];
            if (type == "User")
            {
                Response.Redirect("UserProfile.aspx");
            }
            else
            {
                Response.Redirect("AdminProfile.aspx");
            }
            
        }

        protected void MyIdea_Click(object sender, EventArgs e)
        {
            string type = (string)Session["Type"];
            if (type == "User")
            {
                Response.Redirect("MyIdeasPage.aspx");
            }
            else
            {
                Response.Redirect("AdminProfile.aspx");
            }

        }

        protected void MyProject_Click(object sender, EventArgs e)
        {
            string type = (string)Session["Type"];
            if (type == "User")
            {
                Response.Redirect("MyProjectsPage.aspx");
            }
            else
            {
                Response.Redirect("AdminProfile.aspx");
            }

        }

        protected void Myappointment_Click(object sender, EventArgs e)
        {
            string type = (string)Session["Type"];
            if (type == "User")
            {
                Response.Redirect("MyAppointmentsPage.aspx");
            }
            else
            {
                Response.Redirect("AdminProfile.aspx");
            }

        }
    }    
}
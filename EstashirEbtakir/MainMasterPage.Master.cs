using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstashirEbtakir
{
    public partial class MainMasterPage : System.Web.UI.MasterPage
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != "true")
            {
                userInformationContainer.Visible = false;
                signUpContainer.Visible = true;
            }
            else
            {
                userInformationContainer.Visible = true;
                signUpContainer.Visible = false;
            }
        }
    }
}
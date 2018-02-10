using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace ThreeTierApp
{
    public partial class User_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                UserDA obUserDa = new UserDA();
            }
            catch (Exception ex)
            {

                string error = ex.Message;
                errorMsg.Text += error;
            }
        }
    }
}
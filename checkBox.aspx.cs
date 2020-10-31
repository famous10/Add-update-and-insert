using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApp
{
    public partial class checkBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void /*Button1_Click*/click_Me(object sender, EventArgs e)
        {
            StringBuilder sbUserChoice = new StringBuilder();
            if (CheckBox1.Checked)
            {
                sbUserChoice.Append(CheckBox1.Text);
            }
            if(CheckBox2.Checked)
            {
                sbUserChoice.Append(","+CheckBox2.Text);
            }
            if(CheckBox3.Checked)
            {
                sbUserChoice.Append("," + CheckBox3.Text);
            }
            Response.Write(" " + sbUserChoice.ToString());
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebFormsApp
{
    public partial class AddUpdateDelete : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-KR6N1AN; Initial Catalog = Base; Integrated Security = True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[idus]
           ([ID]
           ,[name]
           ,[phone]
           ,[address])
     VALUES
           ('" + txtID.Text + "','" + txtName.Text + "','" + txtPhone.Text + "','" + txtAdd.Text + "')", con);
           con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data inserted successfully");
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-KR6N1AN; Initial Catalog = Base; Integrated Security = True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM[dbo].[idus]
      WHERE [ID]='" + txtID.Text + "' ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Delete successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = DESKTOP-KR6N1AN; Initial Catalog = Base; Integrated Security = True");
            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[idus]
   SET[ID] = '" + txtID.Text+"',[name] = '" + txtName.Text + "',[phone] = '" + txtPhone.Text + "',[address] = '" + txtAdd.Text + "' WHERE [ID]='" + txtID.Text+"'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("update successfully");
            con.Close();
        }

        
    }
}






//Data Source = DESKTOP - KR6N1AN; Initial Catalog = Base; Integrated Security = True
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebFormsApp
{
    public partial class phoneApp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {
            
            string connect = ConfigurationManager.ConnectionStrings["myCone"].ConnectionString;
            SqlConnection con2 = new SqlConnection(connect);
            
            //var select = "select * from tbPhoneApp";
            var sqlCom = "select * from tbPhoneApp";
            SqlCommand selectCommand = new SqlCommand(sqlCom, con2);
            con2.Open();
            
            if(!Page.IsPostBack)
            {
               DataShow();
            }
            SqlDataReader DTR = selectCommand.ExecuteReader();
            GridView1.DataSource = DTR;
            GridView1.DataBind();
        }
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-KR6N1AN;Initial Catalog=AutomaticDb;Integrated Security=True";
            con.Open();
            dt = new DataTable();
            cmd.CommandText = "Insert into tbPhoneApp (Name, PhoneNum, Address)values('" +txtName.Text.ToString()+"','" +txtPhoneNum.Text.ToString()+"','"+txtAddress.Text.ToString()+"' )";
           cmd.Connection = con;
            cmd.ExecuteNonQuery();
            

            con.Close();
        }
        public void DataShow()
        {
            string connect = ConfigurationManager.ConnectionStrings["myCone"].ConnectionString;
            SqlConnection con2 = new SqlConnection(connect);
            con.ConnectionString = "Data Source=.;Initial Catalog=myCone;integrated Security=True";
            con2.Open();
            ds = new DataSet();
            cmd.CommandText = "select * from tbPhoneApp";
            cmd.Connection = con2;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
           con.Close();
           
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {

            dt = new DataTable();
           cmd.CommandText = "update tbPhoneApp set phoneNum='" + txtPhoneNum.Text.ToString() + "',Address='" + txtAddress.Text.ToString() + "' where Name='"+txtName.Text.ToString()+"'";
          //cmd.CommandText = "update into tbphoneApp  (Name, PhoneNum, Address)values('" + txtName.Text.ToString() + "','" + txtPhoneNum.Text.ToString() + "','" + txtAddress.Text.ToString() + "' )";
            
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
         
            DataShow();
                       
        }
    }

}
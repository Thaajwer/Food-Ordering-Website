using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_display_item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\FoodOrdering_website\App_Data\foodOrdering.mdf;Integrated Security=True");
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

       
        con.Open();


        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (Request.QueryString["category"] == null) {


            cmd.CommandText = "select * from product";

        }
        else
        {
            cmd.CommandText = "select * from product where product_category='"+ Request.QueryString["category"].ToString() + "'";




        }


        if(Request.QueryString["category"] == null && Request.QueryString["search"] != null)
        {


            cmd.CommandText = "select * from product where product_name like('%" + Request.QueryString["search"].ToString() + "%')";


        }
      

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();



        con.Close();


    }

  

    protected void Button1_Click1(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        con.Open();


        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id="+id+"";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();



        con.Close();
    }

    protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}
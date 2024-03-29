﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class user_product_desc_ : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\FoodOrdering_website\App_Data\foodOrdering.mdf;Integrated Security=True");
    int id;
    int qty;
    string product_name, product_desc, product_price, product_qty, product_image;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {

            Response.Redirect("display_item.aspx");
        }
        else
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
        qty = get_qty( id);

        if (qty == 0) {
            l2.Visible =false;
            t1.Visible = false;
            Button1.Visible = false;
            l1.Text = "there is no items available";


        }

    }

    protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(con.State== ConnectionState.Open)
        {

            con.Close();

        }
        con.Open();


        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            product_name = dr["product_name"].ToString();
            product_desc = dr["product_desc"].ToString();
            product_price = dr["product_price"].ToString();
            product_qty = dr["product_qty"].ToString();
            product_image = dr["product_image"].ToString();
            
        }



        

        if (Convert.ToInt32(t1.Text) > Convert.ToInt32(product_qty))
        {
            l1.Text = "enter low quality";
        }
        else
        {
            l1.Text = "";

            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = product_name.ToString() + ", " + product_desc.ToString() + "," + product_price.ToString() + "," + t1.Text + "," + product_image.ToString()+","+id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);


            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + product_name.ToString() + ", " + product_desc.ToString() + "," + product_price.ToString() + "," +t1.Text + "," + product_image.ToString() +","+ id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }

            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "update product set product_qty=product_qty-" + t1.Text+"where id="+id;
            cmd1.ExecuteNonQuery();
            Response.Redirect("product_desc.aspx?id=" + id.ToString());

        }
    }

    public int get_qty(int id)
    {
        con.Open();


        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows) {

            qty = Convert.ToInt32(dr["product_qty"].ToString());


        }

        return qty;
    }
}
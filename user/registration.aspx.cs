﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\FoodOrdering_website\App_Data\foodordering.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " insert into registration values('"+TextBox1.Text+"','"+ TextBox2.Text + "','"+ TextBox3.Text + "','"+ TextBox4.Text + "','"+ TextBox5.Text + "','"+ TextBox6.Text + "','"+ TextBox7.Text + "','"+ TextBox8.Text + "','"+ TextBox9.Text + "')";
        cmd.ExecuteNonQuery();


        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";


        label1.Text = "registration succeed";
    }
}
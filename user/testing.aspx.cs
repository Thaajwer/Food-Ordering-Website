using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_testing : System.Web.UI.Page
{
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        s=Convert.ToString(Request.Cookies["aa"].Value);
        string[] starr = s.Split('.');
        for(int i=0; i<starr.Length; i++)
        {

            Response.Write(starr[i].ToString());
            Response.Write("<br>");

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
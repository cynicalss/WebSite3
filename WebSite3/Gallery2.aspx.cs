﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = Request.QueryString["ImageURL"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Gallery1.aspx");
    }
}
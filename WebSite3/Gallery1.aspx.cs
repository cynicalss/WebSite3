using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadImages();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + fileName);
        }
        Response.Redirect("~/Gallery1.aspx");
    }

    private void LoadImages()
    {
        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
        {
            ImageButton imageButton = new ImageButton();
            FileInfo fi = new FileInfo(strfile);
            imageButton.ImageUrl = "~/Data/" + fi.Name;
            imageButton.Height = Unit.Pixel(100);
            imageButton.Style.Add("padding", "5px");
            imageButton.Width = Unit.Pixel(100);
            imageButton.Click += new ImageClickEventHandler(ImageButton_Click);
            Panel1.Controls.Add(imageButton);
        }
    }

    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Gallery2.aspx?ImageURL=" +
            ((ImageButton)sender).ImageUrl);
    }
}
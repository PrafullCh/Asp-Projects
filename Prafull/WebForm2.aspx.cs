using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prafull
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ViewState["refresh"]==null)
            {
                ViewState["refresh"] = 0;
            }
            Label1.Text = (int) ViewState["refresh"]+"";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = (int)ViewState["refresh"] ;
            n++;
            ViewState["refresh"] = n;
            PlaceHolder1.Controls.Add(new TextBox());
        }
    }
}
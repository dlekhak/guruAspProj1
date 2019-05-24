using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        string name = txtUserName.Text ;
        string password = txtPassword.Text;



        if (txtUserName.Text == txtUserName.Text && txtPassword.Text == txtPassword.Text)
        {
            Session["isLogin"] = true;
            Session["username"] = txtUserName.Text;
            Response.Redirect("~/Default.aspx");
        }     
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}
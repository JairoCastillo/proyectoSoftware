using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_MPA : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] != null)
        {
            L_NMPA.Text = Session["user_name"].ToString();
        }
        else
        {
            Response.Redirect("IniciarS.aspx");
        }

    }

    protected void B_A_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuperAdmiAtra.aspx");
    }

    protected void B_AS_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuperAdmiAdmi.aspx");
    }

    protected void B_I_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuperAdmiInicio.aspx");
    }

    protected void B_S_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuperAdmiSede.aspx");
    }

    protected void B_H_Click(object sender, EventArgs e)
    {
        Response.Redirect("SuperAdmiHabi.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        EAutenticar close = new EAutenticar();
        close.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
        new DAutenticar().CerrarSession(close);

        Session.RemoveAll();
        Response.Redirect("IniciarS.aspx");
    }
}

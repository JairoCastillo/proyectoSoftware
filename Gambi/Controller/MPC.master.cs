using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_MPC : System.Web.UI.MasterPage
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

    protected void B_I_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteInicio.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        EAutenticar close = new EAutenticar();
        close.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
        new DAutenticar().CerrarSession(close);

        Session.RemoveAll();
        Response.Redirect("IniciarS.aspx");
    }

    protected void B_S_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteConHab.aspx");
    }

    protected void B_CA_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteConAtra.aspx");
    }
}

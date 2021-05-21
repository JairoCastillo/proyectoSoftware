using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_MPE : System.Web.UI.MasterPage
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
        Response.Redirect("EmpleInicio.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        EAutenticar close = new EAutenticar();
        close.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
        new DAutenticar().CerrarSession(close);

        Session.RemoveAll();
        Response.Redirect("IniciarS.aspx");
    }

    protected void B_C_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpleCon.aspx");
    }

    protected void B_R_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpleResHab.aspx");
    }

    protected void B_R0_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmpleResAtr.aspx");
    }

    protected void B_P_Click(object sender, EventArgs e)
    {
        Response.Redirect("EmplePago.aspx");
    }
}

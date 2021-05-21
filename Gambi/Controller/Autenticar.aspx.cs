using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Autenticar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Session["doc_identidad"] == null)
            {
                Response.Redirect("IniciarS.aspx");
            }
        }
    }

    protected void B_NO_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["doc_identidad"] == null) {
                Response.Redirect("IniciarS.aspx");
            }
            else
            {
                EAutenticar fecha = new EAutenticar();
                fecha.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
                new DAutenticar().continuar(fecha);
                int pag = int.Parse(Session["pagina"].ToString());
                string url;
                switch (pag)
                {
                    case 1:
                        url = "SuperAdmiInicio.aspx";
                        break;
                    case 2:
                        url = "AdmiSedeInicio.aspx";
                        break;
                    case 3:
                        url = "EmpleInicio.aspx";
                        break;
                    case 4:
                        url = "ClienteInicio.aspx";
                        break;
                    default:
                        url = "IniciarS.aspx";
                        break;
                }
                Response.Redirect(url);
            }
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }

    protected void B_SI_Click(object sender, EventArgs e)
    {
        EAutenticar close = new EAutenticar();
        close.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
        new DAutenticar().CerrarSession(close);

        Session.RemoveAll();
        Response.Redirect("IniciarS.aspx");
    }
}
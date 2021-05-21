using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_MPI : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user_name"] != null)
        {
            HL_IS.Visible = false;
            LB_P.Visible = true;
        }
        Timer1.Enabled = true;       
        L_Hora.Text = DateTime.Now.ToString("G");
        if (DDL_Inicio.SelectedValue == "Inicio")
        {
            Response.Redirect("Inicio.aspx");
        }
        else if (DDL_Inicio.SelectedValue == "Habitaciones")
        {
            Response.Redirect("Habitaciones.aspx");
        }
        else if (DDL_Inicio.SelectedValue == "Atracciones")
        {
            Response.Redirect("Atracciones.aspx");
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        L_Hora.Text = DateTime.Now.ToString("G");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_EmplePago : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
            Response.Redirect("IniciarS.aspx");
        else
        {
            int user = (int)Session["rol_id"];
            string url;
            if (user != 3)
            {
                switch (user)
                {
                    case 1:
                        url = "SuperAdmiInicio.aspx";
                        break;
                    case 2:
                        url = "AdmiSedeInicio.aspx";
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
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Select"))
        {
            Session["pago"] = e.CommandArgument.ToString();
            B_GF.Visible = true;
            Button1.Visible = true;
        }
    }

    protected void B_GF_Click(object sender, EventArgs e)
    {
        var fac = int.Parse(Session["pago"].ToString());
        new DFactura().generarPagoAtra(fac);
        var doc = long.Parse(TB_C.Text);
        List<EPagoFac> consu = new DFactura().obtenerFactura(doc);
        if (consu.Count >= 0)
        {
            GridView1.Visible = true;
            GridView1.DataSource = consu;
            GridView1.DataBind();
            Response.Redirect("FacturaAtra.aspx");
        }
        else
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('No tiene mas facturas a su nombre');</script>");
            GridView1.DataBind();
            B_GF.Visible = false;
        }
    }

    protected void B_C_Click(object sender, EventArgs e)
    {
        var doc = long.Parse(TB_C.Text);
        Session["doc_reporte"] = doc;
        List<EPagoFac> consu = new DFactura().obtenerFactura(doc);
        if (consu.Count > 0)
        {
            GridView1.Visible = true;
            GridView1.DataSource = consu;
            GridView1.DataBind();
        }
        else
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('No se encontraron facturas a su nombre');</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}
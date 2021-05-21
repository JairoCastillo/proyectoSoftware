using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_ClienteCon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_name"] == null)
                Response.Redirect("IniciarS.aspx");
            else
            {
                int user = (int)Session["rol_id"];
                string url;
                if (user != 4)
                {
                    switch (user)
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
                        default:
                            url = "IniciarS.aspx";
                            break;
                    }
                    Response.Redirect(url);
                }
            }
        }
        int pagina = 4;
        Session["pagina"] = pagina;
    }

    protected void B_A_Click(object sender, EventArgs e)
    {
        if (CB_G.Checked & CB_E.Checked)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Solamente puede seleccionar un campo a la vez');</script>");
            Label3.Visible = false;
            TB_F.Visible = false;
            LB_C.Visible = false;
            LB_CG.Visible = false;
        }
        else if (CB_G.Checked)
        {
            Label3.Visible = false;
            TB_F.Visible = false;
            LB_C.Visible = false;
            LB_CG.Visible = true;

        }
        else if (CB_E.Checked)
        {
            Label3.Visible = true;
            TB_F.Visible = true;
            LB_C.Visible = true;
            LB_CG.Visible = false;
        }
        GV_C.Visible = false;
    }

    protected void LB_C_Click(object sender, EventArgs e)
    {
        var doc = int.Parse(TB_F.Text);
        var doci = long.Parse(Session["doc_identidad"].ToString());
        List<EConsultaReservas> consu = new DConsultaReservas().reservasHabitacionesE(doc, doci);
        if (consu.Count > 0)
        {
            GV_C.Visible = true;
            GV_C.DataSource = consu;
            GV_C.DataBind();
        }
        else
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('No se encontraron reservas relacionas con ese id');</script>");
        }
    }


    protected void LB_CG_Click(object sender, EventArgs e)
    {
        var doc = long.Parse(Session["doc_identidad"].ToString());
        List<EConsultaReservas> consu = new DConsultaReservas().reservasHabitacionG(doc);
        GV_C.Visible = true;
        GV_C.DataSource = consu;
        GV_C.DataBind();
    }
}
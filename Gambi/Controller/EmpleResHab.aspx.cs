using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_EmpleResHab : System.Web.UI.Page
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
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label7.Visible = true;
            TB_cedula.Visible = true;
            C_fecha_inicio.Visible = true;
            C_fecha_fin.Visible = true;
            BCancelar.Visible = true;
            BReservar.Visible = true;
            Label19.Visible = false;
            TB_cedula0.Visible = false;
            B_E.Visible = false;
            Session["reserva"] = e.CommandArgument.ToString();
        }
    }

    protected void BReservar_Click(object sender, EventArgs e)
    {
        EReservaHab res = new EReservaHab();
        res.Fecha_ini = C_fecha_inicio.SelectedDate;
        res.Fecha_sal = C_fecha_fin.SelectedDate;
        res.Id_estado = 1;
        res.Id_sede_habi = int.Parse(Session["reserva"].ToString());
        res.Doc_identidad = long.Parse(TB_cedula.Text.ToString());
        bool respu = new DReservaHab().insertarReserva(res);
        if (respu == true)
        {
            GridView1.DataBind();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El usuario no existe');</script>");
        }
        
    }

    protected void BCancelar_Click(object sender, EventArgs e)
    {

        Label10.Visible = false;
        Label9.Visible = false;
        Label8.Visible = false;
        Label7.Visible = false;
        TB_cedula.Visible = false;
        TB_cedula.Text = "";
        C_fecha_inicio.Visible = false;
        C_fecha_fin.Visible = false;
        BCancelar.Visible = false;
        BReservar.Visible = false;
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Select"))
        {
            Label10.Visible = false;
            Label9.Visible = false;
            Label8.Visible = false;
            Label7.Visible = false;
            TB_cedula.Visible = false;
            TB_cedula.Text = "";
            C_fecha_inicio.Visible = false;
            C_fecha_fin.Visible = false;
            BCancelar.Visible = false;
            BReservar.Visible = false;
            Label19.Visible = true;
            TB_cedula0.Visible = true;
            B_E.Visible = true;
            B_C.Visible = true;
            Session["entregar_reserva"] = e.CommandArgument.ToString();
        }
    }

    protected void B_E_Click(object sender, EventArgs e)
    {
        var ent = Convert.ToInt32(Session["entregar_reserva"]);
        var doc = long.Parse(TB_cedula0.Text);

        List<EReservaHab> reserva_usuario = new DReservaHab().obtenerReserva(ent, doc);

        if (reserva_usuario.Count > 0)
        {
            DateTime fecha = DateTime.Parse(DateTime.Now.ToString());
            int diaa = fecha.Day;

            EReservaHab reser = reserva_usuario.FirstOrDefault();
            DateTime diaf = ((EReservaHab)reserva_usuario[0]).Fecha_sal;
            DateTime diai = ((EReservaHab)reserva_usuario[0]).Fecha_ini;
            var id_reserva = ((EReservaHab)reserva_usuario[0]).Id_reserva;

            int res_val;

            if (diai.Month == fecha.Month)
            {
                res_val = diai.Day - fecha.Day;
            }
            else
            {
                res_val = (31 - diai.Day) + fecha.Day;
            }

            int res = diaf.Day - fecha.Day; // Tiempo que se demora en entregar la reserva

            EFactura factu = new EFactura();

            factu.Total = res_val;

            factu.Id_sede_hab = ent;
            factu.Doc_identidad = doc;
            factu.Fecha_sal = fecha;            
            factu.Estado = 1;

            if (res < 0)
            {
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El cliente esta entregando la habitaciòn  " + (res * (-1)) + "dia(s) tarde.');</script>");
            }

            new DFactura().insertarFactura(factu);
            new DReservaHab().entregarReserva(ent, id_reserva);
            GridView1.DataBind();
            GridView2.DataBind();
            Label19.Visible = false;
            TB_cedula0.Visible = false;
            TB_cedula0.Text = "";
            B_E.Visible = false;
            B_C.Visible = false;
        }
        else
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El documento de identidad no tiene reservas registradas');</script>");
        }
    }

    protected void B_C_Click(object sender, EventArgs e)
    {
        Label19.Visible = false;
        TB_cedula0.Visible = false;
        TB_cedula0.Text = "";
        B_E.Visible = false;
        B_C.Visible = false;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_SuperAdmiHabi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_R_Click(object sender, EventArgs e)
    {
        try
        {
            EHabitaciones habi = new EHabitaciones();
            habi.Tipo_habitacion = TB_TH.Text;
            habi.Cant_personas = int.Parse(TB_CP.Text);
            habi.Precio_habitacion = int.Parse(TB_P.Text);
            habi.Disponibilidad = true;
            new DHabitaciones().insertarHabitacion(habi);
            GV_H.DataBind();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }
}
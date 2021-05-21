using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_AdmiSedeHab : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_name"] == null)
            Response.Redirect("IniciarS.aspx");
        else
        {
            int user = (int)Session["rol_id"];
            string url;
            if (user != 2)
            {
                switch (user)
                {
                    case 1:
                        url = "SuperAdmiInicio.aspx";
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
            L_AS.Text = Session["sede"].ToString();
        }
    }

    protected void B_A_Click(object sender, EventArgs e)
    {
        EHabSede ing = new EHabSede();
        var cant = int.Parse(TB_C.Text);

        ing.Id_habitacion = int.Parse(DDL_A.SelectedValue);
        ing.Id_sede = int.Parse(Session["id_sede"].ToString());
        ing.Precio = int.Parse(TB_P.Text);

        for (int i = 0; i < cant; i++)
        {
            new DHabSede().insertarHabitacionSede(ing);
        }
        GV_H.DataBind();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}
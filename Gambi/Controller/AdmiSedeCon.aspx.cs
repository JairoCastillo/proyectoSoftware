using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_AdmiSedeCon : System.Web.UI.Page
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
        }
    }

    protected void LB_C_Click(object sender, EventArgs e)
    {
        long doc = long.Parse(TB_F.Text);
        List<EUsuario> busqueda = new DUsuario().consultar(doc);
        
        if (busqueda.Count > 0)
        {
            EUsuario user = busqueda.FirstOrDefault();

            if (!user.Doc_identidad.ToString().Equals("1"))
            {
                GV_C.DataSource = busqueda;
                GV_C.DataBind();
            }
            else
            {
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Solamente se pueden buscar empleados y clientes');</script>");
                TB_F.Text = "";
            }
        }
    }
}
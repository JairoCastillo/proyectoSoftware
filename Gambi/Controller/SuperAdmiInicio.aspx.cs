using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_SuperAdmiInicio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user_name"] == null)
                Response.Redirect("IniciarS.aspx");
            else
            {
                validar();
                int user = (int)Session["rol_id"];
                string url;
                if (user != 1)
                {
                    switch (user)
                    {
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
        }
        int pagina = 1;
        Session["pagina"] = pagina;
    }

    protected void validar()
    {
        EUsuario user = new EUsuario();
        user.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
        List<EAutenticar> autenticar = new DAutenticar().obtenerSession(user);

        if (autenticar.Count > 0)
        {
            EAutenticar fecha = autenticar.FirstOrDefault();

            if (!fecha.Fecha.ToString().Equals("1"))
            {
                Response.Redirect("Autenticar.aspx");
            }
            else
            {
                Mac conexion = new Mac();
                fecha.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
                fecha.Ip = conexion.ip();
                fecha.Mac = conexion.mac();
                fecha.Session = Session.SessionID;
                new DAutenticar().GuardarSession(fecha);
            }
        }
    }

    public List<EUsuario> GV_IP_GetData()
    {
        var doc_identidad = Convert.ToInt64(Session["doc_identidad"]);
        return new DUsuario().obtenerut(doc_identidad); 
    }

    public void GV_IP_UpdateItem(long doc_identidad)
    {
        var row = GV_IP.Rows[GV_IP.EditIndex];
        var doc = doc_identidad;
        var nombre = (row.FindControl("TxtEditNombre") as TextBox).Text;
        var apellido = (row.FindControl("TB_A") as TextBox).Text;
        var edad = (row.FindControl("TB_E") as TextBox).Text;
        var num_cel = (row.FindControl("TB_NC") as TextBox).Text;
        var correo = (row.FindControl("TB_CE") as TextBox).Text;
        var contra = (row.FindControl("TB_C") as TextBox).Text;
        EUsuario usu = new EUsuario();
        usu.Doc_identidad = doc;
        usu.Nombre = nombre;
        usu.Apellido = apellido;
        usu.Edad = int.Parse(edad);
        usu.Num_Cel = long.Parse(num_cel);
        usu.Correo_Elec = correo;
        usu.Contrasena = contra;
        new DUsuario().modificarusuario(usu);
    }
}
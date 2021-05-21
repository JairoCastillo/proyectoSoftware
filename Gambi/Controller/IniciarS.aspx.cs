using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_IniciarS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pagina = 5;
        Session["pagina"] = pagina;

        if (!IsPostBack)
        {
            Session["user_name"] = Session["rol_id"] = null;
        }
    }

    protected void B_R_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registro.aspx");
    }

    protected void B_IS_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        try
        {
            EUsuario user = new EUsuario();
            user.Doc_identidad = long.Parse(TB_DI.Text);
            user.Contrasena = TB_P.Text;
            Session["doc_identidad"] = user.Doc_identidad;

            List<EUsuario> datos = new DUsuario().Login(user);
            List<ESede> sede = new DSede().obtenerSede(user.Doc_identidad);
            List<EAutenticar> autenticar = new DAutenticar().obtenerSession(user);
            

            if (autenticar.Count > 0)
            {
                EAutenticar fecha = autenticar.FirstOrDefault();

                if (fecha.Fecha.ToString().Equals("1"))
                {
                    Response.Redirect("Autenticar.aspx");
                }
                else
                {
                    if (datos.Count > 0)
                    {
                        EUsuario usuario = datos.FirstOrDefault();
                        Session["user_name"] = ((EUsuario)datos[0]).Nombre;
                        Session["rol_id"] = ((EUsuario)datos[0]).Id_rol;
                        Mac conexion = new Mac();
                        fecha.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
                        fecha.Ip = conexion.ip();
                        fecha.Mac = conexion.mac();
                        fecha.Session = Session.SessionID;
                        new DAutenticar().GuardarSession(fecha);

                        if (int.Parse(usuario.Id_rol.ToString()) == 1)
                        {
                            Response.Redirect("SuperAdmiInicio.aspx");
                        }
                        else if (int.Parse(usuario.Id_rol.ToString()) == 2)
                        {
                            Session["sede"] = ((ESede)sede[0]).Nombre;
                            Session["id_sede"] = ((ESede)sede[0]).Id_sede;
                            Response.Redirect("AdmiSedeInicio.aspx");
                        }
                        else if (int.Parse(usuario.Id_rol.ToString()) == 3)
                        {
                            Response.Redirect("EmpleInicio.aspx");
                        }
                        else if (int.Parse(usuario.Id_rol.ToString()) == 4)
                        {
                            Response.Redirect("ClienteInicio.aspx");
                        }
                    }
                    else
                        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Usuario no registrado');</script>");
                        Session["user_name"] = null;
                } 
            }
            else
            {
                if (datos.Count > 0)
                {
                    EUsuario usuario = datos.FirstOrDefault();
                    Session["user_name"] = ((EUsuario)datos[0]).Nombre;
                    Session["rol_id"] = ((EUsuario)datos[0]).Id_rol;
                    Mac conexion = new Mac();
                    EAutenticar fecha = new EAutenticar();
                    fecha.Doc_identidad = long.Parse(Session["doc_identidad"].ToString());
                    fecha.Ip = conexion.ip();
                    fecha.Mac = conexion.mac();
                    fecha.Session = Session.SessionID;
                    new DAutenticar().GuardarSession(fecha);

                    if (int.Parse(usuario.Id_rol.ToString()) == 1)
                    {
                        Response.Redirect("SuperAdmiInicio.aspx");
                    }
                    else if (int.Parse(usuario.Id_rol.ToString()) == 2)
                    {
                        Session["sede"] = ((ESede)sede[0]).Nombre;
                        Response.Redirect("AdmiSedeInicio.aspx");
                    }
                    else if (int.Parse(usuario.Id_rol.ToString()) == 3)
                    {
                        Response.Redirect("EmpleInicio.aspx");
                    }
                    else if (int.Parse(usuario.Id_rol.ToString()) == 4)
                    {
                        Response.Redirect("ClienteInicio.aspx");
                    }
                }
                else
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Usuario no registrado');</script>");
                    Session["user_name"] = null;
            }
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }
}
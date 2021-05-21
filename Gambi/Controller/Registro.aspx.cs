using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_R_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        try
        {
            EUsuario user = new EUsuario();
            user.Nombre = TB_IN.Text;
            user.Apellido = TB_IA.Text;
            user.Edad = int.Parse(TB_IE.Text);
            user.Num_Cel = long.Parse(TB_IC.Text);
            user.Correo_Elec = TB_ICE.Text;
            user.Doc_identidad = long.Parse(TB_DI.Text);
            user.Contrasena = TB_C.Text;
            user.Id_rol = 4;
            user.Session = Session.SessionID;
            user.Id_sede = 1;
            bool res = new DUsuario().insertarUsuario(user);
            if (res == true)
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El documento de identidad ya esta registrado');</script>");
            }
            
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }
}
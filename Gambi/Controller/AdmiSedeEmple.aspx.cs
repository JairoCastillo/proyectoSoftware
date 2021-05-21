using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_AdmiSedeEmple : System.Web.UI.Page
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

    protected void B_R_Click(object sender, EventArgs e)
    {
        try
        {
            EUsuario user = new EUsuario();
            user.Nombre = TB_IN.Text;
            user.Apellido = TB_IA.Text;
            user.Edad = int.Parse(TB_IE.Text);
            user.Num_Cel = long.Parse(TB_INC.Text);
            user.Correo_Elec = TB_ICE.Text;
            user.Doc_identidad = long.Parse(TB_IDI.Text);
            user.Contrasena = TB_IC.Text;
            user.Id_rol = 3;
            user.Session = Session.SessionID;
            user.Id_sede = int.Parse(DDL_Sede.SelectedValue);
            bool res = new DUsuario().insertarUsuario(user);
            if (res == true)
            {
                GV_AE.DataBind();
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


    protected void GV_AE_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GV_AE.Rows[e.RowIndex];
        e.NewValues.Insert(5, "Id_rol", int.Parse(((DropDownList)row.FindControl("DDL_R")).SelectedValue));
        e.NewValues.Insert(6, "Id_sede", int.Parse(((DropDownList)row.FindControl("DDL_S")).SelectedValue));
    }

    protected void GV_AE_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = e.Row;

        if (row.FindControl("DDL_R") != null)
        {
            EVUsuario rol = (EVUsuario)e.Row.DataItem;
            ((DropDownList)row.FindControl("DDL_R")).DataSource = new DRol().obtenerRol();
            ((DropDownList)row.FindControl("DDL_R")).DataBind();
            ((DropDownList)row.FindControl("DDL_R")).SelectedValue = rol.Id_rol.ToString();
        }

        if (row.FindControl("DDL_S") != null)
        {
            EVUsuario sede = (EVUsuario)e.Row.DataItem;
            ((DropDownList)row.FindControl("DDL_S")).DataSource = new DSede().obtenerSe();
            ((DropDownList)row.FindControl("DDL_S")).DataBind();
            ((DropDownList)row.FindControl("DDL_S")).SelectedValue = sede.Id_sede.ToString();
        }
    }
}
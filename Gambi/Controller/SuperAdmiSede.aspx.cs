using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_SuperAdmiSede : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GV_S_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = e.Row;

        if (row.FindControl("DDL_AS") != null)
        {
            ESede nombre = (ESede)e.Row.DataItem;
            ((DropDownList)row.FindControl("DDL_AS")).DataSource = new DUsuario().obteneradmi();
            ((DropDownList)row.FindControl("DDL_AS")).DataBind();
            ((DropDownList)row.FindControl("DDL_AS")).SelectedValue = nombre.Id_admi.ToString();
        }
    }

    protected void B_R_Click(object sender, EventArgs e)
    {
        try
        {
            ESede sede = new ESede();
            sede.Nombre = TB_IN.Text;
            sede.Direccion = TB_D.Text;
            sede.Telefono = long.Parse(TB_T.Text);
            sede.Id_admi = long.Parse(DDL_AS.SelectedValue);
            new DSede().insertarSede(sede);
            GV_S.DataBind();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
    }

    protected void GV_S_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GV_S.Rows[e.RowIndex];
        e.NewValues.Insert(3, "Id_admi", long.Parse(((DropDownList)row.FindControl("DDL_AS")).SelectedValue));
    }
}
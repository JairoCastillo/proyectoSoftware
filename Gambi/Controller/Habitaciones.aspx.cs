using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Habitaciones : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GV_A.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var ddl = long.Parse(DDL_A.SelectedValue);
        List<EHabSede> busqueda = new DHabSede().obtenerhabsedeMPI(ddl);
        GV_A.DataSource = busqueda;
        GV_A.DataBind();
    }
}
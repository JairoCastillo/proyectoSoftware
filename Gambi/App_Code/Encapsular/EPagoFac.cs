using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EPagoFac
/// </summary>
public class EPagoFac
{
    private int id_factura;
    private long total;
    private string servicio;
    private long doc_identidad;
    private DateTime fecha_sal;
    private string sede;
    private string estado;

    public long Total { get => total; set => total = value; }
    public string Servicio { get => servicio; set => servicio = value; }
    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public DateTime Fecha_sal { get => fecha_sal; set => fecha_sal = value; }
    public string Sede { get => sede; set => sede = value; }
    public string Estado { get => estado; set => estado = value; }
    public int Id_factura { get => id_factura; set => id_factura = value; }
}
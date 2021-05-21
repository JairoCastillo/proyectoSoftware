using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EFactura
/// </summary>
public class EFactura
{
    private int id_factura;
    private long total;
    private int id_sede_hab;
    private int id_sede_atr;
    private long doc_identidad;
    private DateTime fecha_sal;
    private int id_sede;
    private int estado;

    public int Id_factura { get => id_factura; set => id_factura = value; }
    public long Total { get => total; set => total = value; }
    public int Id_sede_hab { get => id_sede_hab; set => id_sede_hab = value; }
    
    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public DateTime Fecha_sal { get => fecha_sal; set => fecha_sal = value; }
    public int Id_sede { get => id_sede; set => id_sede = value; }
    public int Estado { get => estado; set => estado = value; }
    public int Id_sede_atr { get => id_sede_atr; set => id_sede_atr = value; }
}
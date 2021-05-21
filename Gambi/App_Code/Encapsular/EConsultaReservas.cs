using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EConsultaReservas
/// </summary>
public class EConsultaReservas
{
    private int id_reserva;
    private DateTime fecha_ent;
    private DateTime fecha_sal;
    private string estado;
    private string servicio;
    private long doc_identidad;
    private string sede;

    public int Id_reserva { get => id_reserva; set => id_reserva = value; }
    public DateTime Fecha_ent { get => fecha_ent; set => fecha_ent = value; }
    public DateTime Fecha_sal { get => fecha_sal; set => fecha_sal = value; }
    public string Estado { get => estado; set => estado = value; }
    public string Servicio { get => servicio; set => servicio = value; }
    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public string Sede { get => sede; set => sede = value; }
}
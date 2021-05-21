using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EReservaHab
/// </summary>
public class EReservaHab
{
    private int id_reserva;
    private DateTime fecha_ini;
    private DateTime fecha_sal;
    private int id_estado;
    private int id_sede_habi;
    private int id_sede_atr;
    private long doc_identidad;
    private int id_sede;

    public int Id_reserva { get => id_reserva; set => id_reserva = value; }
    public DateTime Fecha_ini { get => fecha_ini; set => fecha_ini = value; }
    public DateTime Fecha_sal { get => fecha_sal; set => fecha_sal = value; }
    public int Id_estado { get => id_estado; set => id_estado = value; }
    public int Id_sede_habi { get => id_sede_habi; set => id_sede_habi = value; }
    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public int Id_sede { get => id_sede; set => id_sede = value; }
    public int Id_sede_atr { get => id_sede_atr; set => id_sede_atr = value; }
}
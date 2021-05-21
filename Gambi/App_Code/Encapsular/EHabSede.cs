using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EHabSede
/// </summary>
public class EHabSede
{
    private int _id_sede_habitacion;
    private string tipo_hab;
    private int can_per;
    private bool disponibilidad;
    private int precio;
    private int id_habitacion;
    private int id_sede;
    private string nombre_sede;

    public int Id_sede_habitacion { get => _id_sede_habitacion; set => _id_sede_habitacion = value; }
    public string Tipo_hab { get => tipo_hab; set => tipo_hab = value; }
    public int Can_per { get => can_per; set => can_per = value; }
    public bool Disponibilidad { get => disponibilidad; set => disponibilidad = value; }
    public int Precio { get => precio; set => precio = value; }
    public int Id_habitacion { get => id_habitacion; set => id_habitacion = value; }
    public int Id_sede { get => id_sede; set => id_sede = value; }
    public string Nombre_sede { get => nombre_sede; set => nombre_sede = value; }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EHabitaciones
/// </summary>
public class EHabitaciones
{
    private int id_habitacion;
    private string tipo_habitacion;
    private int cant_personas;
    private int precio_habitacion;
    private bool disponibilidad;

    public int Id_habitacion { get => id_habitacion; set => id_habitacion = value; }
    public string Tipo_habitacion { get => tipo_habitacion; set => tipo_habitacion = value; }
    public int Cant_personas { get => cant_personas; set => cant_personas = value; }
    public int Precio_habitacion { get => precio_habitacion; set => precio_habitacion = value; }
    public bool Disponibilidad { get => disponibilidad; set => disponibilidad = value; }
}
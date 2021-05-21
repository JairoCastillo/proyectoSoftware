using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ESede
/// </summary>
public class ESede
{
    private int id_sede;
    private string nombre;
    private string direccion;
    private long telefono;
    private long id_admi;
    private string nombre_admi;

    public int Id_sede { get => id_sede; set => id_sede = value; }
    public string Nombre { get => nombre; set => nombre = value; }
    public string Direccion { get => direccion; set => direccion = value; }
    public long Telefono { get => telefono; set => telefono = value; }
    public long Id_admi { get => id_admi; set => id_admi = value; }
    public string Nombre_admi { get => nombre_admi; set => nombre_admi = value; }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EUsuario
/// </summary>
public class EUsuario
{
    private long doc_identidad;
    private string nombre;
    private string apellido;
    private int edad;
    private long num_Cel;
    private string correo_Elec;
    private string contrasena;
    private int id_rol;
    private string session;
    private int id_sede;

    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public string Nombre { get => nombre; set => nombre = value; }
    public string Apellido { get => apellido; set => apellido = value; }
    public int Edad { get => edad; set => edad = value; }
    public long Num_Cel { get => num_Cel; set => num_Cel = value; }
    public string Correo_Elec { get => correo_Elec; set => correo_Elec = value; }
    public string Contrasena { get => contrasena; set => contrasena = value; }
    public int Id_rol { get => id_rol; set => id_rol = value; }
    public string Session { get => session; set => session = value; }
    public int Id_sede { get => id_sede; set => id_sede = value; }
}
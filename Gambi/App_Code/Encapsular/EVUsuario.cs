using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EVUsuario
/// </summary>
public class EVUsuario
{
    private long doc_identidad;
    private string nombre;
    private string apellido;
    private long num_celular;
    private string cor_electronico;
    private int id_rol;
    private string rol_nombre;
    private int id_sede;
    private string sede_nombre;

    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public string Nombre { get => nombre; set => nombre = value; }
    public string Apellido { get => apellido; set => apellido = value; }
    public long Num_celular { get => num_celular; set => num_celular = value; }
    public string Cor_electronico { get => cor_electronico; set => cor_electronico = value; }
    public int Id_rol { get => id_rol; set => id_rol = value; }
    public string Rol_nombre { get => rol_nombre; set => rol_nombre = value; }
    public int Id_sede { get => id_sede; set => id_sede = value; }
    public string Sede_nombre { get => sede_nombre; set => sede_nombre = value; }
}
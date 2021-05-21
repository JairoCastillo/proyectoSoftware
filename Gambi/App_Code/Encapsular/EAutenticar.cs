using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EAutenticar
/// </summary>
public class EAutenticar
{
    private long doc_identidad;
    private string ip;
    private string mac;
    private string session;
    private string fecha;

    public long Doc_identidad { get => doc_identidad; set => doc_identidad = value; }
    public string Ip { get => ip; set => ip = value; }
    public string Mac { get => mac; set => mac = value; }
    public string Session { get => session; set => session = value; }
    public string Fecha { get => fecha; set => fecha = value; }
} 


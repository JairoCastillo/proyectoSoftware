using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;

public class DRol
{
    public List<ERol> obtenerRol()
    {
        List<ERol> listarol = new List<ERol>();
        DataTable rol = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leerr", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(rol);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }

        listarol = rol.AsEnumerable().Select(m => new ERol()
        {
            Id_rol = m.Field<int>("id_rol"),
            Nombre = m.Field<string>("nombre")

        }).ToList();

        return listarol.OrderBy(x => x.Id_rol).ToList();
    }
}
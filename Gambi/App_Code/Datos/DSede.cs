using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
/// <summary>
/// Descripción breve de DSede
/// </summary>
public class DSede
{
    public List<ESede> obtenerSede(long doc)
    {
        List<ESede> listasede = new List<ESede>();
        DataTable sede = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = doc;

            conection.Open();
            dataAdapter.Fill(sede);
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

        listasede = sede.AsEnumerable().Select(m => new ESede()
        {
            Id_sede = m.Field<int>("id_sede"),
            Nombre = m.Field<string>("nombre"),
            Direccion = m.Field<string>("direccion"),
            Telefono = m.Field<long>("telefono"),
            Id_admi = m.Field<long>("id_admi")
        }).Where(x => x.Id_admi == doc).ToList();

        return listasede.OrderBy(x => x.Nombre).ToList();
    }

    public List<ESede> obtenerSe()
    {
        List<ESede> listasede = new List<ESede>();
        DataTable sede = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_se", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(sede);
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

        listasede = sede.AsEnumerable().Select(m => new ESede()
        {
            Id_sede = m.Field<int>("id_sede"),
            Nombre = m.Field<string>("nombre"),
            Direccion = m.Field<string>("direccion"),
            Telefono = m.Field<long>("telefono"),
            Id_admi = m.Field<long>("id_admi"),
            Nombre_admi = m.Field<string>("nombre_admi")
        }).ToList();

        return listasede.OrderBy(x => x.Nombre).ToList();
    }

    public DataTable insertarSede(ESede sede)
    {
        DataTable sed = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertar_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = sede.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = sede.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Bigint).Value = sede.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_id_admi", NpgsqlDbType.Integer).Value = sede.Id_admi;

            conection.Open();
            dataAdapter.Fill(sed);
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
        return sed;
    }

    public DataTable modificarsede(ESede sede)
    {
        DataTable sed = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificar_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_sede", NpgsqlDbType.Integer).Value = sede.Id_sede;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = sede.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Text).Value = sede.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Bigint).Value = sede.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_id_admi", NpgsqlDbType.Bigint).Value = sede.Id_admi;

            conection.Open();
            dataAdapter.Fill(sed);
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
        return sed;
    }

    public DataTable eliminarsede(ESede sede)
    {
        DataTable sed = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_eliminar_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_sede", NpgsqlDbType.Integer).Value = sede.Id_sede;

            conection.Open();
            dataAdapter.Fill(sed);
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
        return sed;
    }
}
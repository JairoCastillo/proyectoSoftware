using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

public class DAutenticar
{
    public DataTable GuardarSession(EAutenticar auto)
    {
        DataTable autenticar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("security.f_guardar_sesion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = auto.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Text).Value = auto.Ip;
            dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Text).Value = auto.Mac;
            dataAdapter.SelectCommand.Parameters.Add("_session", NpgsqlDbType.Text).Value = auto.Session;

            conection.Open();
            dataAdapter.Fill(autenticar);
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
        return autenticar;
    }

    public DataTable CerrarSession(EAutenticar auto)
    {
        DataTable cerrar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("security.f_cerrar_sesion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = auto.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(cerrar);
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
        return cerrar;
    }

    public List<EAutenticar> obtenerSession(EUsuario user)
    {
        List<EAutenticar> listasession = new List<EAutenticar>();
        DataTable session = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("security.f_obtener_sesion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = user.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(session);
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

        listasession = session.AsEnumerable().Select(m => new EAutenticar()
        {
           Fecha = m.Field<String>("fecha_fin")
        }).ToList();

        return listasession;
    }

    public DataTable continuar(EAutenticar auto)
    {
        DataTable autenticar = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("security.f_continuar", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc", NpgsqlDbType.Bigint).Value = auto.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(autenticar);
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
        return autenticar;
    }
}
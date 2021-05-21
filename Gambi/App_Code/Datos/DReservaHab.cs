using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;


/// <summary>
/// Descripción breve de DReservaHab
/// </summary>
public class DReservaHab
{
    public bool insertarReserva(EReservaHab res)
    {
        DataTable reserva = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);
        Boolean respu = false;

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_reservar", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_fecha_ent", NpgsqlDbType.Date).Value = res.Fecha_ini;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_sal", NpgsqlDbType.Date).Value = res.Fecha_sal;
            dataAdapter.SelectCommand.Parameters.Add("_id_estado", NpgsqlDbType.Integer).Value = res.Id_estado;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede_hab", NpgsqlDbType.Integer).Value = res.Id_sede_habi;
            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = res.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(reserva);
            respu = Convert.ToBoolean(reserva.Rows[0].ItemArray[0]);
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
        return respu;
    }

    public bool insertarReservaA(EReservaHab res)
    {
        DataTable reserva = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);
        Boolean respu = false;

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_reservar_atra", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_fecha_ent", NpgsqlDbType.Date).Value = res.Fecha_ini;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_sal", NpgsqlDbType.Date).Value = res.Fecha_sal;
            dataAdapter.SelectCommand.Parameters.Add("_id_estado", NpgsqlDbType.Integer).Value = res.Id_estado;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede_atra", NpgsqlDbType.Integer).Value = res.Id_sede_atr;
            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = res.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(reserva);
            respu = Convert.ToBoolean(reserva.Rows[0].ItemArray[0]);
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
        return respu;
    }

    public DataTable entregarReserva(int res, int id)
    {
        DataTable reserva = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_entregar_reservar", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_sede_hab", NpgsqlDbType.Integer).Value = res;
            dataAdapter.SelectCommand.Parameters.Add("_id_reserva", NpgsqlDbType.Integer).Value = id;

            conection.Open();
            dataAdapter.Fill(reserva);
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
        return reserva;
    }

    public DataTable entregarReservaatra(int res, int id)
    {
        DataTable reserva = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_entregar_reserva_atr", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_sede_atr", NpgsqlDbType.Integer).Value = res;
            dataAdapter.SelectCommand.Parameters.Add("_id_reserva", NpgsqlDbType.Integer).Value = id;

            conection.Open();
            dataAdapter.Fill(reserva);
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
        return reserva;
    }

    public List<EReservaHab> obtenerReserva(int id_hab, long doc)
    {
        DataTable reserva = new DataTable();
        List<EReservaHab> listaReserva = new List<EReservaHab>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(reserva);
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

        listaReserva = reserva.AsEnumerable().Select(m => new EReservaHab()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ini = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Id_estado = m.Field<int>("id_estado"),
            Id_sede_habi = m.Field<int>("id_sede_hab"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Id_sede = m.Field<int>("id_sede")            
        }).Where(x => x.Id_sede_habi == id_hab & x.Doc_identidad == doc & x.Id_estado == 1).ToList();

        return listaReserva;
    }

    public List<EReservaHab> obtenerReservaAtra(int id_hab, long doc)
    {
        DataTable reserva = new DataTable();
        List<EReservaHab> listaReserva = new List<EReservaHab>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva_atra", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(reserva);
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

        listaReserva = reserva.AsEnumerable().Select(m => new EReservaHab()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ini = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Id_estado = m.Field<int>("id_estado"),
            Id_sede_atr = m.Field<int>("id_sede_atra"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Id_sede = m.Field<int>("id_sede")
        }).Where(x => x.Id_sede_atr == id_hab & x.Doc_identidad == doc & x.Id_estado == 1).ToList();

        return listaReserva;
    }
}
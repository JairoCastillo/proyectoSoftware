using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DConsultaReservas
/// </summary>
public class DConsultaReservas
{
    public List<EConsultaReservas> reservasAtraccionesG(long doc)
    {
        List<EConsultaReservas> listaconsulta = new List<EConsultaReservas>();
        DataTable consulta = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva_atraccion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;            

            conection.Open();
            dataAdapter.Fill(consulta);
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

        listaconsulta = consulta.AsEnumerable().Select(m => new EConsultaReservas()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ent = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Estado = m.Field<string>("estado"),
            Servicio = m.Field<string>("sede_atra"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Sede = m.Field<string>("sede")
        }).Where(x => x.Doc_identidad == doc).ToList();

        return listaconsulta;
    }

    public List<EConsultaReservas> reservasAtraccionesE(long doc, long doc_i)
    {
        List<EConsultaReservas> listaconsulta = new List<EConsultaReservas>();
        DataTable consulta = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva_atraccion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(consulta);
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

        listaconsulta = consulta.AsEnumerable().Select(m => new EConsultaReservas()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ent = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Estado = m.Field<string>("estado"),
            Servicio = m.Field<string>("sede_atra"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Sede = m.Field<string>("sede")
        }).Where(x => x.Id_reserva == doc & x.Doc_identidad == doc_i).ToList();

        return listaconsulta;
    }

    public List<EConsultaReservas> reservasHabitacionG(long doc)
    {
        List<EConsultaReservas> listaconsulta = new List<EConsultaReservas>();
        DataTable consulta = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(consulta);
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

        listaconsulta = consulta.AsEnumerable().Select(m => new EConsultaReservas()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ent = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Estado = m.Field<string>("estado"),
            Servicio = m.Field<string>("sede_atra"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Sede = m.Field<string>("sede")
        }).Where(x => x.Doc_identidad == doc).ToList();

        return listaconsulta;
    }

    public List<EConsultaReservas> reservasHabitacionesE(long doc, long doc_i)
    {
        List<EConsultaReservas> listaconsulta = new List<EConsultaReservas>();
        DataTable consulta = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_reserva_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(consulta);
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

        listaconsulta = consulta.AsEnumerable().Select(m => new EConsultaReservas()
        {
            Id_reserva = m.Field<int>("id_reserva"),
            Fecha_ent = m.Field<DateTime>("fecha_ent"),
            Fecha_sal = m.Field<DateTime>("fecha_sal"),
            Estado = m.Field<string>("estado"),
            Servicio = m.Field<string>("sede_atra"),
            Doc_identidad = m.Field<long>("doc_identidad"),
            Sede = m.Field<string>("sede")
        }).Where(x => x.Id_reserva == doc & x.Doc_identidad == doc_i).ToList();

        return listaconsulta;
    }
}
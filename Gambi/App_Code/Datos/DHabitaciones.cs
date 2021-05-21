using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;

/// <summary>
/// Descripción breve de DHabitaciones
/// </summary>
public class DHabitaciones
{
    public DataTable insertarHabitacion(EHabitaciones habi)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertar_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_tipo_hab", NpgsqlDbType.Text).Value = habi.Tipo_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_cant_per", NpgsqlDbType.Integer).Value = habi.Cant_personas;
            dataAdapter.SelectCommand.Parameters.Add("_precio_hab", NpgsqlDbType.Integer).Value = habi.Precio_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_disponibilidad", NpgsqlDbType.Boolean).Value = habi.Disponibilidad;

            conection.Open();
            dataAdapter.Fill(habitacion);
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
        return habitacion;
    }

    public DataTable modificarHabitacion(EHabitaciones habi)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificar_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_habitacion", NpgsqlDbType.Integer).Value = habi.Id_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_tipo_hab", NpgsqlDbType.Text).Value = habi.Tipo_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_cant_per", NpgsqlDbType.Integer).Value = habi.Cant_personas;
            dataAdapter.SelectCommand.Parameters.Add("_precio_hab", NpgsqlDbType.Integer).Value = habi.Precio_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_disponibilidad", NpgsqlDbType.Boolean).Value = habi.Disponibilidad;

            conection.Open();
            dataAdapter.Fill(habitacion);
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
        return habitacion;
    }

    public List<EHabitaciones> leerHabitacion()
    {
        DataTable habitacion = new DataTable();
        List<EHabitaciones> listaHabi = new List<EHabitaciones>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(habitacion);
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

        listaHabi = habitacion.AsEnumerable().Select(m => new EHabitaciones()
            {
                Id_habitacion = m.Field<int>("id_habitacion"),
                Tipo_habitacion = m.Field<string>("tipo_habitacion"),
                Cant_personas = m.Field<int>("cant_per"),
                Precio_habitacion = m.Field<int>("precio_hab"),
                Disponibilidad = m.Field<Boolean>("disponibilidad")
            }).ToList();

        return listaHabi;
    }

    public DataTable eliminarHabitacion(EHabitaciones habi)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_eliminar_habitacion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_habitacion", NpgsqlDbType.Integer).Value = habi.Id_habitacion;

            conection.Open();
            dataAdapter.Fill(habitacion);
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
        return habitacion;
    }
}
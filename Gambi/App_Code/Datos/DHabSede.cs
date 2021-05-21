using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
/// <summary>
/// Descripción breve de DHabSede
/// </summary>
public class DHabSede
{
    public DataTable insertarHabitacionSede(EHabSede hab)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertar_habitacion_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_habi", NpgsqlDbType.Integer).Value = hab.Id_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede", NpgsqlDbType.Integer).Value = hab.Id_sede;
            dataAdapter.SelectCommand.Parameters.Add("_precio", NpgsqlDbType.Integer).Value = hab.Precio;

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



    public List<EHabSede> obtenerhabsede(long doc)
    {
        DataTable habitacion = new DataTable();
        List<EHabSede> listaAtra = new List<EHabSede>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_habitacion_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Integer).Value = doc;

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
        listaAtra = habitacion.AsEnumerable().Select(m => new EHabSede()
        {
            Id_sede_habitacion = m.Field<int>("id_sede_habitacion"),
            Tipo_hab = m.Field<string>("tipo_hab"),
            Can_per = m.Field<int>("cant_per"),
            Disponibilidad = m.Field<Boolean>("disponibilidad"),
            Precio = m.Field<int>("precio"),
            Nombre_sede = m.Field<string>("nombre_sede")
        }).ToList();

        return listaAtra;
    }


    public DataTable modificarhabsede(EHabSede hab)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);


        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificar_habitacion_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_hab", NpgsqlDbType.Integer).Value = hab.Id_sede_habitacion;
            dataAdapter.SelectCommand.Parameters.Add("_precio", NpgsqlDbType.Integer).Value = hab.Precio;

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

    public DataTable eliminarhabsede(EHabSede hab)
    {
        DataTable habitacion = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_eliminar_habitacion_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_hab", NpgsqlDbType.Integer).Value = hab.Id_sede_habitacion;

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

    public List<EHabSede> obtenerhabsedeMPI(long doc)
    {
        DataTable habitacion = new DataTable();
        List<EHabSede> listaAtra = new List<EHabSede>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_habitacion_sede_consulta", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Integer).Value = doc;

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
        listaAtra = habitacion.AsEnumerable().Select(m => new EHabSede()
        {
            Id_sede_habitacion = m.Field<int>("id_sede_habitacion"),
            Tipo_hab = m.Field<string>("tipo_hab"),
            Can_per = m.Field<int>("cant_per"),
            Disponibilidad = m.Field<Boolean>("disponibilidad"),
            Precio = m.Field<int>("precio"),
            Nombre_sede = m.Field<string>("nombre_sede")
        }).ToList();

        return listaAtra;
    }

    public List<EHabSede> obtenerhabsedenodis(long doc)
    {
        DataTable habitacion = new DataTable();
        List<EHabSede> listaAtra = new List<EHabSede>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_habitacion_sede", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Integer).Value = doc;

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
        listaAtra = habitacion.AsEnumerable().Select(m => new EHabSede()
        {
            Id_sede_habitacion = m.Field<int>("id_sede_habitacion"),
            Tipo_hab = m.Field<string>("tipo_hab"),
            Can_per = m.Field<int>("cant_per"),
            Disponibilidad = m.Field<Boolean>("disponibilidad"),
            Precio = m.Field<int>("precio"),
            Nombre_sede = m.Field<string>("nombre_sede")
        }).Where(x => x.Disponibilidad == false).ToList();

        return listaAtra;
    }

    public List<EHabSede> obtenerhabsededis(long doc)
    {
        DataTable habitacion = new DataTable();
        List<EHabSede> listaAtra = new List<EHabSede>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_habitacion_sede_disponibles", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Integer).Value = doc;

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
        listaAtra = habitacion.AsEnumerable().Select(m => new EHabSede()
        {
            Id_sede_habitacion = m.Field<int>("id_sede_habitacion"),
            Tipo_hab = m.Field<string>("tipo_hab"),
            Can_per = m.Field<int>("cant_per"),
            Disponibilidad = m.Field<Boolean>("disponibilidad"),
            Precio = m.Field<int>("precio"),
            Nombre_sede = m.Field<string>("nombre_sede")
        }).ToList();

        return listaAtra;
    }
}
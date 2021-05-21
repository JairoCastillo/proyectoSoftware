using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
/// <summary>
/// Descripción breve de DFactura
/// </summary>
public class DFactura
{
    public DataTable insertarFactura(EFactura factu)
    {
        DataTable factura = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertar_factura", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_total", NpgsqlDbType.Bigint).Value = factu.Total;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede_hab", NpgsqlDbType.Integer).Value = factu.Id_sede_hab;
            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = factu.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_sal", NpgsqlDbType.Date).Value = factu.Fecha_sal;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = factu.Estado;

            conection.Open();
            dataAdapter.Fill(factura);

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
        return factura;
    }

    public DataTable insertarFacturaAtra(EFactura factu)
    {
        DataTable factura = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertar_factura_atra", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_total", NpgsqlDbType.Bigint).Value = factu.Total;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede_atr", NpgsqlDbType.Integer).Value = factu.Id_sede_atr;
            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = factu.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_fecha_sal", NpgsqlDbType.Date).Value = factu.Fecha_sal;
            dataAdapter.SelectCommand.Parameters.Add("_estado", NpgsqlDbType.Integer).Value = factu.Estado;

            conection.Open();
            dataAdapter.Fill(factura);

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
        return factura;
    }

    public DataTable generarPagoAtra(int factu)
    {
        DataTable pago = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificar_factura_atra", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_factura", NpgsqlDbType.Integer).Value = factu;

            conection.Open();
            dataAdapter.Fill(pago);

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
        return pago;
    }

    public List<EPagoFac> obtenerFactura(long doc)
    {
        DataTable factura = new DataTable();
        List<EPagoFac> listafactura = new List<EPagoFac>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_factura_atraccion", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(factura);
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

        listafactura = factura.AsEnumerable().Select(m => new EPagoFac()
        {
             Id_factura = m.Field<int>("id_reserva"),
             Total = m.Field<long>("total"),
             Servicio = m.Field<string>("sede_atra"),
             Doc_identidad = m.Field<long>("doc_identidad"),
             Fecha_sal = m.Field<DateTime>("fecha_sal"),
             Sede = m.Field<string>("sede"),
             Estado = m.Field<string>("estado")
        }).Where(x => x.Doc_identidad == doc & x.Estado == "Pago no realizado").ToList();

        return listafactura;
    }

    public DataTable obtenerFacturaReporte(int doc)
    {
        DataTable factura = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_factura_atraccion_re", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_reserva", NpgsqlDbType.Integer).Value = doc;

            conection.Open();
            dataAdapter.Fill(factura);
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
        
        return factura;
    }
}
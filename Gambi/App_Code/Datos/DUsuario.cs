using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DUsuario
/// </summary>
public class DUsuario
{
    public List<EUsuario> Login(EUsuario user)
    {
        DataTable Usuario = new DataTable();
        List<EUsuario> listaUsuario = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_login", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc", NpgsqlDbType.Bigint).Value = user.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_contra", NpgsqlDbType.Text).Value = user.Contrasena;

            conection.Open();
            dataAdapter.Fill(Usuario);
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

        listaUsuario = Usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Nombre = m.Field<string>("nombre"),
            Id_rol = m.Field<int>("id_rol")
        }).ToList();

        return listaUsuario;
    }

    public bool insertarUsuario(EUsuario user)
    {
        DataTable usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);
        Boolean res = false;

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_insertarU", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = user.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = user.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = user.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_edad", NpgsqlDbType.Integer).Value = user.Edad;
            dataAdapter.SelectCommand.Parameters.Add("_num_cel", NpgsqlDbType.Bigint).Value = user.Num_Cel;
            dataAdapter.SelectCommand.Parameters.Add("_correo_elec", NpgsqlDbType.Text).Value = user.Correo_Elec;
            dataAdapter.SelectCommand.Parameters.Add("_contrasena", NpgsqlDbType.Text).Value = user.Contrasena;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = user.Id_rol;            
            dataAdapter.SelectCommand.Parameters.Add("_session", NpgsqlDbType.Text).Value = user.Session;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede", NpgsqlDbType.Integer).Value = user.Id_sede;

            conection.Open();
            dataAdapter.Fill(usuario);
            res = Convert.ToBoolean(usuario.Rows[0].ItemArray[0]);
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
        return res;
    }

   
    public List<EUsuario> obtenerua()
    {
        DataTable usuario = new DataTable();
        List<EUsuario> listausu = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leerua", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Edad = m.Field<int>("edad"),
            Num_Cel = m.Field<long>("num_cel"),
            Correo_Elec = m.Field<string>("correo_elec"),
            Contrasena = m.Field<string>("contrasena"),
            Id_rol = m.Field<int>("id_rol"),
            Session = m.Field<string>("session"),
            Id_sede = m.Field<int>("id_sede")
        }).ToList();

        return listausu;
    }

    public DataTable eliminarusu(EUsuario usu)
    {
        DataTable usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_eliminar_usuario", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Integer).Value = usu.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        return usuario;
    }

   
    public List<EUsuario> obtenerue()
    {
        DataTable usuario = new DataTable();
        List<EUsuario> listausu = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leerue", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Edad = m.Field<int>("edad"),
            Num_Cel = m.Field<long>("num_cel"),
            Correo_Elec = m.Field<string>("correo_elec"),
            Contrasena = m.Field<string>("contrasena"),
            Id_rol = m.Field<int>("id_rol"),
            Session = m.Field<string>("session"),
            Id_sede = m.Field<int>("id_sede")
        }).ToList();

        return listausu;
    }

    

    

    public List<EUsuario> obtenerut(long _doc_identidad)
    {
        DataTable usuario = new DataTable();
        List<EUsuario> listausu = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leeru", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = _doc_identidad;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Edad = m.Field<int>("edad"),
            Num_Cel = m.Field<long>("num_cel"),
            Correo_Elec = m.Field<string>("correo_elec"),
            Contrasena = m.Field<string>("contrasena"),
            Id_rol = m.Field<int>("id_rol"),
            Session = m.Field<string>("session"),
            Id_sede = m.Field<int>("id_sede")
        }).ToList();

        return listausu;
    }

    public DataTable modificarusuario(EUsuario user)
    {
        DataTable usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificaru", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = user.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = user.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = user.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_edad", NpgsqlDbType.Integer).Value = user.Edad;
            dataAdapter.SelectCommand.Parameters.Add("_num_cel", NpgsqlDbType.Bigint).Value = user.Num_Cel;
            dataAdapter.SelectCommand.Parameters.Add("_correo_elec", NpgsqlDbType.Text).Value = user.Correo_Elec;
            dataAdapter.SelectCommand.Parameters.Add("_contrasena", NpgsqlDbType.Text).Value = user.Contrasena;            
            dataAdapter.SelectCommand.Parameters.Add("_session", NpgsqlDbType.Text).Value = HttpContext.Current.Session.SessionID;



            conection.Open();
            dataAdapter.Fill(usuario);
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
        return usuario;
    }

    public List<EVUsuario> obteneradmi()
    {
        DataTable usuario = new DataTable();
        List<EVUsuario> listausu = new List<EVUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_usuario_admi", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EVUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Num_celular = m.Field<long>("num_celular"),
            Cor_electronico = m.Field<string>("cor_electronico"),
            Id_rol = m.Field<int>("id_rol"),
            Rol_nombre = m.Field<string>("rol_nombre"),
            Id_sede = m.Field<int>("id_sede"),
            Sede_nombre = m.Field<string>("sede_nombre")
        }).ToList();

        return listausu;
    }

    public DataTable modificaradmi(EVUsuario usu)
    {
        DataTable usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_modificar_usuario_admi", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = usu.Doc_identidad;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Text).Value = usu.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Text).Value = usu.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_num_cel", NpgsqlDbType.Bigint).Value = usu.Num_celular;
            dataAdapter.SelectCommand.Parameters.Add("_correo_elec", NpgsqlDbType.Text).Value = usu.Cor_electronico;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = usu.Id_rol;
            dataAdapter.SelectCommand.Parameters.Add("_id_sede", NpgsqlDbType.Integer).Value = usu.Id_sede;


            conection.Open();
            dataAdapter.Fill(usuario);
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
        return usuario;
    }

    public DataTable eliminarusu(EVUsuario usu)
    {
        DataTable usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_eliminar_usuario", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = usu.Doc_identidad;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        return usuario;
    }

    public List<EVUsuario> obteneremple()
    {
        DataTable usuario = new DataTable();
        List<EVUsuario> listausu = new List<EVUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_leer_usuario_emple", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EVUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Num_celular = m.Field<long>("num_celular"),
            Cor_electronico = m.Field<string>("cor_electronico"),
            Id_rol = m.Field<int>("id_rol"),
            Rol_nombre = m.Field<string>("rol_nombre"),
            Id_sede = m.Field<int>("id_sede"),
            Sede_nombre = m.Field<string>("sede_nombre")
        }).ToList();

        return listausu;
    }

    public List<EUsuario> consultar(long _doc_identidad)
    {
        DataTable usuario = new DataTable();
        List<EUsuario> listausu = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_consulta_emple_clien", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = _doc_identidad;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Edad = m.Field<int>("edad"),
            Num_Cel = m.Field<long>("num_cel"),
            Correo_Elec = m.Field<string>("correo_elec"),
            Contrasena = m.Field<string>("contrasena"),
            Id_rol = m.Field<int>("id_rol"),
            Session = m.Field<string>("session"),
            Id_sede = m.Field<int>("id_sede")
        }).ToList();

        return listausu;
    }

    public List<EUsuario> consultarcliente(long _doc_identidad)
    {
        DataTable usuario = new DataTable();
        List<EUsuario> listausu = new List<EUsuario>();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuario.f_consulta_clien", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_doc_identidad", NpgsqlDbType.Bigint).Value = _doc_identidad;

            conection.Open();
            dataAdapter.Fill(usuario);
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
        listausu = usuario.AsEnumerable().Select(m => new EUsuario()
        {
            Doc_identidad = m.Field<long>("doc_identidad"),
            Nombre = m.Field<string>("nombre"),
            Apellido = m.Field<string>("apellido"),
            Edad = m.Field<int>("edad"),
            Num_Cel = m.Field<long>("num_cel"),
            Correo_Elec = m.Field<string>("correo_elec"),
            Contrasena = m.Field<string>("contrasena"),
            Id_rol = m.Field<int>("id_rol"),
            Session = m.Field<string>("session"),
            Id_sede = m.Field<int>("id_sede")
        }).ToList();

        return listausu;
    }

}
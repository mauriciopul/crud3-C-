using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;



public class Conexion
{
    SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=crud3;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;


    public Conexion()
    {
        try
        {
            cn.Open();
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    
    public string insertar(string idUsuario, string nombre, string fechaNacim, string tel )
    {
        string salida;
        try
        {
            cmd = new SqlCommand("insert into usuarios(idUsuario, nombre, fechaNacimiento, telefono)" +
                "values('"+idUsuario+"', '"+nombre+"','"+fechaNacim+"', '"+tel+"')",cn);
            cmd.ExecuteNonQuery();
            salida = "Usuario insertado exitosamente";
        }
        catch (Exception ex)
        {
            salida = "Error: " + ex.ToString();
        }
        return salida;
    }

    public int buscarUsuario(string Cedula)
    {
        int cont = 0;
        try
        {
            cmd = new SqlCommand("select * from usuarios where IdUsuario='"+Cedula + "'",cn);
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                cont++;
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        return cont;
    }



}
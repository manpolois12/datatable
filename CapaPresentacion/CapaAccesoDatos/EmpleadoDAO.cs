using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using CapaEntidades;
using System.Data;

namespace CapaAccesoDatos
{
    public class EmpleadoDAO
    {

         #region "PATRON SINGLETON"
        private static EmpleadoDAO daoempleado=null;
        private EmpleadoDAO() { }
        public static EmpleadoDAO getInstance()
        {
            if(daoempleado==null)
            {
                daoempleado = new EmpleadoDAO();
            }
            return daoempleado;
        }
        #endregion


       
        public Empleado AccesoSistema(String user, String pass)
        {
            SqlConnection conexion = null;
            SqlCommand cmd = null;
            Empleado objEmpleado = null;
            SqlDataReader dr = null;
            try
            {
                conexion = Conexion.getInstance().ConexionBD();
                cmd = new SqlCommand("spAccesoSistema", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmUser", user);
                cmd.Parameters.AddWithValue("@prmPass", pass);
                conexion.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    

                    objEmpleado = new Empleado();
                    objEmpleado.ID = Convert.ToInt32(dr["idEmpleado"].ToString());
                    objEmpleado.Usuario = dr["usuario"].ToString();
                    objEmpleado.Clave = dr["clave"].ToString();
                    objEmpleado.Nombre = dr["nombres"].ToString();
                    objEmpleado.ApPaterno = dr["apPaterno"].ToString();
                    objEmpleado.ApMaterno = dr["apMaterno"].ToString();
                    objEmpleado.NroDocumento = dr["nroDocumento"].ToString();
                    objEmpleado.Estado = true;

                    
                }
            }
            catch (Exception ex)
            {
                objEmpleado = null;
                throw ex;
            }
            finally
            {
                conexion.Close();
            }
            return objEmpleado;
        }

    }
}

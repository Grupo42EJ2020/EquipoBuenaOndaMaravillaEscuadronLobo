using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioEmpleado : IEmpleado
    {
        public List<Empleado> obtenerEmpleado()
        {
            DataTable dtEmpleado;
            dtEmpleado = BaseHelper.ejecutarConsulta("sp_ConsultarTodo_Empleado", CommandType.StoredProcedure);

            List<Empleado> lstEmpleado = new List<Empleado>();

            foreach (DataRow item in dtEmpleado.Rows)
            {
                Empleado EmpleadoAux = new Empleado();
                EmpleadoAux.IdEmpleado = int.Parse(item["IdEmpleado"].ToString());
                EmpleadoAux.Nombre = item["Nombre"].ToString();
                EmpleadoAux.Direccion = item ["Direccion"].ToString();
                

                lstEmpleado.Add(EmpleadoAux);
            }

            return lstEmpleado;


        }
        public Empleado obtenerEmpleado(int idEmpleado)
        {
            DataTable dtEmpleado;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", idEmpleado));

            dtEmpleado = BaseHelper.ejecutarConsulta("sp_ConsultarUno_Empleado", CommandType.StoredProcedure, parametros);

            //convertir el dtEmpleado a un objeto Empleado
            Empleado datosEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0) //si lo encontro
            {
                datosEmpleado.IdEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                datosEmpleado.Nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                parametros.Add(new SqlParameter("@Direccion", datosEmpleado.Direccion));

                return datosEmpleado;
            }
            else
            { //no lo encontro 
                return null;
            }
        }



             public void insertarEmpleado(Empleado datosEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", datosEmpleado.Nombre));
            parametros.Add(new SqlParameter("@Direccion", datosEmpleado.Direccion));

            BaseHelper.ejecutarConsulta("sp_Agregar_Empleado", CommandType.StoredProcedure, parametros);

        }

        //Eliminar Empleado//
        public void eliminarEmpleado(int idEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", idEmpleado));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Empleado", CommandType.StoredProcedure, parametros);

        }

        //Actualizar Empleado//
        public void actualizarEmpleado(Empleado datosEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", datosEmpleado.IdEmpleado));
            parametros.Add(new SqlParameter("@Nombre", datosEmpleado.Nombre));
            parametros.Add(new SqlParameter("@Direccion", datosEmpleado.Direccion));


            BaseHelper.ejecutarConsulta("sp_Actualizar_Empleados", CommandType.StoredProcedure, parametros);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso : ICurso
    {
        public List<Curso> obtenerCursos()
        {
            DataTable dtCurso;
            dtCurso = BaseHelper.ejecutarConsulta("sp_ConsultarTodo_Curso", CommandType.StoredProcedure);

            List<Curso> lstCursos = new List<Curso>();

            foreach (DataRow item in dtCurso.Rows)
            {
                Curso curso = new Curso();
                curso.IdCurso = int.Parse(item["IdCurso"].ToString());
                curso.Descripcion = item["Descripcion"].ToString();
                curso.IdEmpleado = int.Parse(item["IdEmpleado"].ToString());
                

                lstCursos.Add(curso);
            }

            return lstCursos;
        }

        public Curso obtenerCurso(int IdCurso)
        {
            DataTable dtCurso;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", IdCurso));

            dtCurso = BaseHelper.ejecutarConsulta("sp_ConsultarUno_Curso", CommandType.StoredProcedure, parametros);

            //convertir el dtEmpleado a un objeto Empleado
            Curso curso = new Curso();

            if (dtCurso.Rows.Count > 0) //si lo encontro
            {
                DataRow item = dtCurso.Rows[0];
                curso.IdCurso = int.Parse(item["IdCurso"].ToString());
                curso.Descripcion = item["Descripcion"].ToString();
                curso.IdEmpleado = int.Parse(item["IdEmpleado"].ToString());
                return curso;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void insertarCurso(Curso datosCurso)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Descripcion ", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado  ", datosCurso.IdEmpleado));

            BaseHelper.ejecutarConsulta("sp_Agregar_Curso", CommandType.StoredProcedure, parametros);
        }

        public void eliminarCurso(int IdCurso)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", IdCurso));

            BaseHelper.ejecutarConsulta("sp_Eliminar_Curso", CommandType.StoredProcedure, parametros);
        }

        public void actualizarCurso(Curso datosCurso)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCurso.IdCurso));
            parametros.Add(new SqlParameter("@Descripcion ", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado  ", datosCurso.IdEmpleado));
            

            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso", CommandType.StoredProcedure, parametros);
        }
    }
}
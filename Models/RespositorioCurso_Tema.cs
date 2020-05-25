using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema : ICurso_Tema
    {

        public Curso_Tema obtenerCurso_Tema(int IdCT)
        {
            DataTable dtCurso_Tema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));
            dtCurso_Tema = BaseHelper.ejecutarConsulta("sp_ConsultarUno_CT", CommandType.StoredProcedure, parametros);


            Curso_Tema datosCurso_Tema = new Curso_Tema();
            if (dtCurso_Tema.Rows.Count > 0)
            {
                datosCurso_Tema.IdCT = int.Parse(dtCurso_Tema.Rows[0]["IdCT"].ToString());

                datosCurso_Tema.IdCurso =int.Parse( dtCurso_Tema.Rows[0]["IdCurso"].ToString());
                parametros.Add(new SqlParameter("@IdTema", datosCurso_Tema.IdTema));
                return datosCurso_Tema;
            }
            else
            {
                return null;
            }
        }

        public void insertarCurso_Tema(Curso_Tema datosCurso_Tema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCurso_Tema.IdCurso));
            BaseHelper.ejecutarConsulta("sp_Agregar_CT", CommandType.StoredProcedure, parametros);
        }

        public void eliminarCurso_Tema(int IdCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));
            BaseHelper.ejecutarSentencia("sp_Eliminar_CT", CommandType.StoredProcedure, parametros);
        }

        public void actualizarCurso_Tema(Curso_Tema datosCurso_Tema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", datosCurso_Tema.IdCT));
            parametros.Add(new SqlParameter("@IdCurso", datosCurso_Tema.IdCurso));
            parametros.Add(new SqlParameter("@IdTema", datosCurso_Tema.IdTema));
            BaseHelper.ejecutarConsulta("sp_Actualizar_CT", CommandType.StoredProcedure, parametros);

        }

        public List<Curso_Tema> obtenerCurso_Temas()
        {
            DataTable dtCurso_Tema = BaseHelper.ejecutarConsulta("sp_ConsultarTodo_CT", CommandType.StoredProcedure);
            List<Curso_Tema> lstCurso_Tema = new List<Curso_Tema>();
            foreach (DataRow item in dtCurso_Tema.Rows)
            {
                Curso_Tema Curso_TemaAux = new Curso_Tema();
                Curso_TemaAux.IdCT = int.Parse(item["IdCT"].ToString());
                Curso_TemaAux.IdCurso = int.Parse(item["IdCurso"].ToString());
                Curso_TemaAux.IdTema = int.Parse(item["IdTema"].ToString());
                lstCurso_Tema.Add(Curso_TemaAux);
            }
            return lstCurso_Tema;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public class RepositorioTema : ICurso_Tema
    {
        public List<Curso_Tema> obtenerCurso_Tema()
        {
            DataTable dtCurso_Tema;
            dtCurso_Tema = BaseHelper.ejecutarConsulta("sp_ConsultarTodo_Curso_Tema", CommandType.StoredProcedure);
            List<Curso_Tema> lstCurso_Tema = new List<Curso_Tema>();
            foreach (DataRow item in dtCurso_Tema.Rows)
            {
                Curso_Tema Curso_TemaAux = new Curso_Tema();
                Curso_TemaAux.IdCT = int.Parse(item["IdCT"].ToString());
                Curso_TemaAux.IdCurso = item["IdCurso"].ToString();
                Curso_TemaAux.IdTema = item["IdTema"].ToString();
                lstCurso_Tema.Add(temaAux);
            }
            return lstCurso_Tema;

        }

        public Curso_Tema obtenerCurso_Tema(int IdCurso_Tema)
        {
            DataTable dtCurso_Tema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));
            dtCurso_Tema = BaseHelper.ejecutarConsulta("sp_ConsultarUno_Curso_Tema", CommandType.StoredProcedure, parametros);
            Curso_Tema datosCurso_Tema = new Curso_Tema();
            if (dtCurso_Tema.Rows.Count > 0)
            {
                datosCurso_Tema.IdCuarso_Tema = int.Parse(dtCurso_Tema.Rows[0]["IdCT"].ToString());
                datosCurso_Tema.IdCurso = dtCuarso_Tema.Rows[0]["IdCurso"].ToString();
                parametros.Add(new SqlParameter("@IdTema", datosCurso_Tema.IdTema));
                return datosTema;
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
            BaseHelper.ejecutarConsulta("sp_Agregar_Curso_Tema", CommandType.StoredProcedure, parametros);
        }

        public void eliminarCurso_Tema(int IdCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdTema));
            BaseHelper.ejecutarSentencia("sp_Eliminar_Curso_Tema", CommandType.StoredProcedure, parametros);

        }

        public void actualizarTema(Tema datosCurso_Tema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", datosTema.IdCT));
            parametros.Add(new SqlParameter("@IdCurso", datosTema.IdCurso));
            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso_Tema", CommandType.StoredProcedure, parametros);

        }
    }
}

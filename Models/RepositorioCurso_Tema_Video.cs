using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioCurso_Tema_Video : ICurso_Tema_Video
    {
        public List<Curso_Tema_Video> obtenerCTV()
        {
            DataTable dtCurso_Tema_Video;
            dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_ConsultarTodo_CTV", CommandType.StoredProcedure);

            List<Curso_Tema_Video> lstEmpleado = new List<Curso_Tema_Video>();

            foreach (DataRow item in dtCurso_Tema_Video.Rows)
            {
                Curso_Tema_Video CTVAux = new Curso_Tema_Video();
                CTVAux.IdCTV = int.Parse(item["IdCTV"].ToString());
                CTVAux.IdCT = int.Parse(item["IdCT"].ToString());
                CTVAux.IdVideo = int.Parse(item["IdVideo"].ToString());


                lstCTV.Add(CTVAux);
            }

            return lstCTV;


        }
        public Curso_Tema_Video obtenerCTV(int IdCTV)
        {
            DataTable dtCurso_Tema_Video;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", IdCTV));

            dtCurso_Tema_Video = BaseHelper.ejecutarConsulta("sp_ConsultarUno_CTV", CommandType.StoredProcedure, parametros);

            //convertir el dtCTV a un objeto Curso_Tema_Video
            Curso_Tema_Video datosCTV = new Curso_Tema_Video();

            if (dtCurso_Tema_Video.Rows.Count > 0) //si lo encontro
            {
                datosCTV.IdCTV = int.Parse(dtCurso_Tema_Video.Rows[0]["IdCTV"].ToString());
                datosCTV.IdCT =int.Parse(dtCurso_Tema_Video.Rows[0]["IdCT"].ToString());
                datosCTV.IdVideo= int.Parse(dtCurso_Tema_Video.Rows[0]["IdVideo"].ToString());
                

                return datosCTV;
            }
            else
            { //no lo encontro 
                return null;
            }
        }



        public void insertarCTV(Curso_Tema_Video datosCurso_Tema_Video)
        {
            BaseHelper.ejecutarConsulta("sp_Agregar_CTV", CommandType.StoredProcedure);

        }

        //Eliminar CTV//
        public void eliminarCTV(int IdCTV)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", IdCTV));

            BaseHelper.ejecutarSentencia("sp_Eliminar_CTV", CommandType.StoredProcedure, parametros);

        }

        //Actualizar CTV//
        public void actualizarCTV(Curso_Tema_Video datosCurso_Tema_Video)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", datosCurso_Tema_Video.IdCTV));
            parametros.Add(new SqlParameter("@IdCT", datosCurso_Tema_Video.IdCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCurso_Tema_Video.IdVideo));


            BaseHelper.ejecutarConsulta("sp_Actualizar_CTV", CommandType.StoredProcedure, parametros);

        }
    }
}
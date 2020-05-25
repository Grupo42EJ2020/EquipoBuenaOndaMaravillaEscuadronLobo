using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
        List<Curso> obtenerCursos();
        Curso obtenerCurso(int IdCurso);
        void insertarCurso(Curso datosCurso);
        void eliminarCurso(int IdCurso);
        void actualizarCurso(Curso datosCurso);
    }
}
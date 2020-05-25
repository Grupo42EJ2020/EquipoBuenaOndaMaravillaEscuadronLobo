using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class CursoController : Controller
    {
        //
        // GET: /Curso/
        RepositorioCurso repoCurso = new RepositorioCurso();

        public ActionResult Index()
        {
            return View(repoCurso.obtenerCursos());

        }

        //Elimina un Curso
        public ActionResult CursoDelete(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection datos)
        {
            repoCurso.eliminarCurso(id);
            return RedirectToAction("Index");

        }

        //Editar Curso
        public ActionResult CursoDetails(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        public ActionResult CursoEdit(int id)
        {
            return View(repoCurso.obtenerCurso(id));
        }

        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datoCurso)
        {
            datoCurso.IdCurso = id;
            repoCurso.actualizarCurso(datoCurso);
            return RedirectToAction("Index");
        }

        public ActionResult CursoCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CursoCreate(Curso datos)
        {
            repoCurso.insertarCurso(datos);
            return RedirectToAction("Index");
        }

    }
}

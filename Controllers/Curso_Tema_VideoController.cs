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
    public class Curso_Tema_VideoController : Controller
    {
        //
        // GET: /Curso_Tema_Video/
        RepositorioCurso_Tema_Video repoCTV = new RepositorioCurso_Tema_Video();


        //Lista de Curso_Tema_Video
        public ActionResult Index()
        {
            return View(repoCTV.obtenerCTV());
        }

        //Elimina un Curso_Tema_Video
        public ActionResult CTVDelete(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }

        [HttpPost]
        public ActionResult CTVDelete(int id, FormCollection datos)
        {
            repoCTV.eliminarCTV(id);
            return RedirectToAction("Index");

        }

        //Editar Curso_Tema_Video
        public ActionResult CTVDetails(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }

        public ActionResult CTVEdit(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }

        [HttpPost]
        public ActionResult CTVEdit(int id, Curso_Tema_Video datosCTV)
        {
            datosCTV.IdCTV = id;
            repoCTV.actualizarCTV(datosCTV);
            return RedirectToAction("Index");
        }

        public ActionResult CTVCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CTVCreate(Curso_Tema_Video datos)
        {
            repoCTV.insertarCTV(datos);
            return RedirectToAction("Index");
        }

    }
}

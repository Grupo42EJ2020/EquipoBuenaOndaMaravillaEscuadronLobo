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
    public class EmpleadoController : Controller
    {
        //
        // GET: /Empleado/
        RepositorioEmpleado repoEmpleado = new RepositorioEmpleado();


        //Lista de Empleado
        public ActionResult Index()
        {
            return View(repoEmple.obtenerEmpleado());
        }

        //Elimina un Empleado
        public ActionResult EmpleadoDelete(int id)
        {
            return View(repoEmple.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult EmpleadoDelete(int id, FormCollection datos)
        {
            repoEmple.eliminarVideo(id);
            return RedirectToAction("/Empleado");

        }

        //Editar EMPLEADO
        public ActionResult EmpleadoDetails(int id)
        {
            return View(repoEmple.obtenerVideo(id));
        }

        public ActionResult EmpleadoEdit(int id)
        {
            return View(repoEmple.obtenerEmpleado(id));
        }

        [HttpPost]
        public ActionResult VideoEdit(int id, Empleado datosEmpleado)
        {
            datosEmpleado.IdVideo = id;
            repoEmple.actualizarVideo(datosEmple);
            return RedirectToAction("/Empleado/Index");
        }

        public ActionResult EmpleadoCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult EmpleadoCreate(Empleado datos)
        {
            repoEmple.insertarEmpleado(datos);
            return RedirectToAction("Index");
        }

    }
}


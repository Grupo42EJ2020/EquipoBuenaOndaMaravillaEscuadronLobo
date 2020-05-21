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
    public class VideoController : Controller
    {
        //
        // GET: /Video/
        RepositorioVideo repoVideo = new RepositorioVideo();

        //Lista de Video
        public ActionResult Index()
        {
            return View(repoVideo.obtenerVideos());
        }

        //Elimina un video
        public ActionResult VideoDelete(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult VideoDelete(int id, FormCollection datos)
        {
            repoVideo.eliminarVideo(id);
            return RedirectToAction("/Video");

        }

        //Editar video
        public ActionResult VideoDetails(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        public ActionResult VideoEdit(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult VideoEdit(int id, Video datosVideo)
        {
            datosVideo.IdVideo = id;
            repoVideo.actualizarVideo(datosVideo);
            return RedirectToAction("/Video/Index");
        }

        public ActionResult VideoCreate()
        {
            return View();
        }

        [HttpPost]
        public ActionResult VideoCreate(Video datos)
        {
            repoVideo.insertarVideo(datos);
            return RedirectToAction("Index");

        }
    }
}

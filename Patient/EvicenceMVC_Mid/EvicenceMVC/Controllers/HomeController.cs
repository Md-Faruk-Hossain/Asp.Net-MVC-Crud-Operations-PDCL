using CrystalDecisions.CrystalReports.Engine;
using EvicenceMVC.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EvicenceMVC.Controllers
{
    public class HomeController : Controller
    {
        DCMDbContext db = new DCMDbContext();
        // GET: Home
        public ActionResult PatientList()
        {
            return View(db.TestEntries.ToList());
        }
        public ActionResult exportReport()
        {
            ReportDocument reportDocument = new ReportDocument();
            reportDocument.Load(Path.Combine(Server.MapPath("~/Report"), "TestCrystalReport.rpt"));
            reportDocument.SetDataSource(db.TestEntries.ToList());
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            try
            {
                Stream stream = reportDocument.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);
                return File(stream, "application/pdf");
            }
            catch
            {

                throw;
            }



        }
    }
}
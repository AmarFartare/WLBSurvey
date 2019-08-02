using SurveyApplication.DBModels;
using SurveyApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SurveyApplication.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            if (this.Session["EmployeeId"] == null)
                return RedirectToAction("Login", "Account");
            
            SurveyRepository surveyRepository = new SurveyRepository();
            //Validate
            var IsMySurveySubmitted = surveyRepository.IsMySurveySubmitted(this.Session["EmployeeId"].ToString());
            if (IsMySurveySubmitted)
            {
                return RedirectToAction("SurveyDone", "Home");
            }

            var model = new SurveyModel();
            model.EmployeeId = this.Session["EmployeeId"].ToString();
            model.Firstname = this.Session["Firstname"].ToString();
            model.Lastname = this.Session["Lastname"].ToString();
            model.EmployeeName = (model.Firstname != null ? model.Firstname.Trim() : "") + " " + (model.Lastname != null ? model.Lastname.Trim() : "");
            model.DeptCode = this.Session["DeptCode"].ToString();
            model.DeptName = this.Session["DeptName"].ToString();
            model.DesigCode = this.Session["DesigCode"].ToString();
            model.DesigName = this.Session["DesigName"].ToString();
            model.Division = this.Session["Division"].ToString();
            var options = surveyRepository.GetAllOptions();
            foreach (mstOption option in options)
            {
                model.OptionList.Add(new SelectListItem { Text = option.OptionName, Value = option.OptionCode });

            }
            var questions = surveyRepository.GetSurveyQuestions();
            foreach (mstQuestion question in questions)
            {
                model.SurveyQuestions.Add(new SurveyQuestions()
                {
                    Id = question.Id,
                    QuestionId = question.Id,
                    Question = question.Question,
                    DisplayOrder = question.DisplayOrder
                });
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(SurveyModel model)
        {
            SurveyRepository surveyRepository = new SurveyRepository();
            //return RedirectToAction("Success", "Home");
            var response = surveyRepository.AddServeyResponse(model);


            if (response)
            {
                return RedirectToAction("Success", "Home");
            }
            else

            {
                ViewBag.Unsuccessful = "Unable to submit your questionnaire";
            }
            return View("Index", model);
        }
        [HttpGet]
        public ActionResult Success()
        {
            return View();
        }
        public ActionResult SurveyDone()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SignOut()
        {
            this.Session.Clear();

            return RedirectToAction("Login","Account");
        }
    }
}
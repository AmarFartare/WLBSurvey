using SurveyApplication.DBModels;
using SurveyApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SurveyApplication.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(UserModel model)
        {
            AccountRepository accountRepository = new AccountRepository();
            var user = accountRepository.ValidateUserLogin(model.UserName, model.Password);


            if (user != null)
            {
                if (user.Password == model.Password)
                {
                    //Store session
                    this.Session["EmployeeId"] = user.UserId;
                    this.Session["Firstname"] = user.Firstname;
                    this.Session["Lastname"] = user.Lastname;
                    this.Session["DeptCode"] = user.DeptCode;
                    this.Session["DeptName"] = user.DeptName;
                    this.Session["DesigCode"] = user.DesigCode;
                    this.Session["DesigName"] = user.DesigName;
                    this.Session["Division"] = user.Division;

                    return RedirectToAction("Index", "Home");
                }
            }
            else

            {
                ViewBag.NotValidUser = "Invalid username or password";

            }

            return View("Index");
        }
    }
}
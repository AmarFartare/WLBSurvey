using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SurveyApplication.Models
{
    public class SurveyModel
    {
        public SurveyModel()
        {
            SurveyQuestions = new List<SurveyQuestions>();
            OptionList = new List<SelectListItem>();
        }
        public int Id { get; set; } 
        public string EmployeeId { get; set; }
        [Display(Name ="Employee Name")]
        public string EmployeeName { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string DeptCode { get; set; }

        [Display(Name = "Department")]
        public string DeptName { get; set; }

        [Display(Name = "Division")]
        public string Division { get; set; }

        public string DesigCode { get; set; }

        [Display(Name ="Designation")]
        public string DesigName { get; set; }
        public string ServeyScore { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public string Suggetions { get; set; }
        [DisplayName("Options")]
        public List<SelectListItem> OptionList
        {
            get;
            set;
        }
        public List<SurveyQuestions> SurveyQuestions { get; set; }
    }
}
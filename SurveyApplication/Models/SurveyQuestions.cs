using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SurveyApplication.Models
{
    public class SurveyQuestions
    {
        public int Id { get; set; }
        public int ServeyHeaderId { get; set; }
        public int QuestionId { get; set; }
        public string Question { get; set; }
        [Required(ErrorMessage = "Please Select Option")]
        public int SelectedOptionId { get; set; }
        public string SelectedOptionName { get; set; }
        public int Score { get; set; }
        public Nullable<int> DisplayOrder { get; set; }
    }
}
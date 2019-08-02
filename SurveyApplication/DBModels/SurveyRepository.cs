using SurveyApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SurveyApplication.DBModels
{
    public class SurveyRepository : BaseRepository
    {
        public List<mstOption> GetAllOptions()
        {
            var options = (from objOption in WLBSurveyEntities.mstOptions select objOption).ToList();
            return options;
        }
        public List<mstQuestion> GetSurveyQuestions()
        {
            var questions = (from objQuest in WLBSurveyEntities.mstQuestions
                             select objQuest).ToList();
            return questions;
        }
        public bool IsMySurveySubmitted(string employeeId)
        {
            var survey = (from obj in WLBSurveyEntities.SurveyHeaders
                          where obj.EmployeeId == employeeId
                          select obj).FirstOrDefault();
            if (survey == null)
                return false;
            else
                return true;
        }
        public bool AddServeyResponse(SurveyModel surveyModel)
        {
            var options = GetAllOptions();
            SurveyHeader surveyHeader = new SurveyHeader();
            surveyHeader.EmployeeId = surveyModel.EmployeeId;
            surveyHeader.Firstname = surveyModel.Firstname;
            surveyHeader.Lastname = surveyModel.Lastname;
            surveyHeader.DeptCode = surveyModel.DeptCode;
            surveyHeader.DeptName = surveyModel.DeptName;
            surveyHeader.Division = surveyModel.Division;
            surveyHeader.DesigCode = surveyModel.DesigCode;
            surveyHeader.DesigName = surveyModel.DesigName;
            surveyHeader.ServeyScore = surveyModel.ServeyScore;
            surveyHeader.CreatedDate = DateTime.Now;
            surveyHeader.CreatedBy = surveyModel.EmployeeId;
            surveyHeader.Suggetions = surveyModel.Suggetions;
            surveyHeader = WLBSurveyEntities.SurveyHeaders.Add(surveyHeader);
            WLBSurveyEntities.SaveChanges();
            int surveyTotalScore = 0;
            foreach (SurveyQuestions question in surveyModel.SurveyQuestions)
            {
                var score = options.FirstOrDefault(x => x.OptionCode == question.SelectedOptionName).Score;
                WLBSurveyEntities.SurveyDetails.Add(new SurveyDetail()
                {
                    ServeyHeaderId = surveyHeader.Id,
                    QuestionId = question.QuestionId,
                    Question = question.Question,
                    SelectedOptionId = question.SelectedOptionId,
                    SelectedOptionName = question.SelectedOptionName,
                    Score = score
                });
                surveyTotalScore = surveyTotalScore + (score.HasValue?score.Value:0);
                surveyHeader.ServeyScore = surveyTotalScore.ToString();                
                WLBSurveyEntities.SaveChanges();
            }
            return true;
        }

    }
}
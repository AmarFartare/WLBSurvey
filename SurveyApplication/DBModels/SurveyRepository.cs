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
        public bool AddServeyResponse(SurveyModel surveyModel)
        {
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
            surveyHeader.CreatedDate = surveyModel.CreatedDate;
            surveyHeader.CreatedBy = surveyModel.CreatedBy;

            surveyHeader = WLBSurveyEntities.SurveyHeaders.Add(surveyHeader);
            WLBSurveyEntities.SaveChanges();
            foreach (SurveyQuestions question in surveyModel.SurveyQuestions)
            {
                WLBSurveyEntities.SurveyDetails.Add(new SurveyDetail()
                {
                    ServeyHeaderId = surveyHeader.Id,
                    QuestionId = question.QuestionId,
                    Question = question.Question,
                    SelectedOptionId = question.SelectedOptionId,
                    SelectedOptionName = question.SelectedOptionName,
                    Score = question.Score
                });
                WLBSurveyEntities.SaveChanges();
            }
            return true;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SurveyApplication.DBModels
{
    public class BaseRepository
    {
        public WLBSurveyEntities WLBSurveyEntities;
        public BaseRepository()
        {
                WLBSurveyEntities = new WLBSurveyEntities();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SurveyApplication.DBModels
{
    public class AccountRepository:BaseRepository
    {
        public mstUser ValidateUserLogin(string userName, string password)
        {
           
            var user = (from objUser in WLBSurveyEntities.mstUsers
                        where objUser.UserId == userName
                        select objUser).FirstOrDefault();
          
            return user;
        }
    }
}
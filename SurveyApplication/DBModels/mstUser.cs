//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SurveyApplication.DBModels
{
    using System;
    using System.Collections.Generic;
    
    public partial class mstUser
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public string DeptCode { get; set; }
        public string DeptName { get; set; }
        public string Division { get; set; }
        public string DesigCode { get; set; }
        public string DesigName { get; set; }
        public string CreatedBy { get; set; }
        public string CreatedDate { get; set; }
    }
}

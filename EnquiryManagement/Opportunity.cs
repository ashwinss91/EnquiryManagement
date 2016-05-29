//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EnquiryManagement
{
    using System;
    using System.Collections.Generic;
    
    public partial class Opportunity
    {
        public int Id { get; set; }
        public string Potentials { get; set; }
        public string Probability { get; set; }
        public string ExpectedClosedDate { get; set; }
        public string RemainderDate { get; set; }
        public string Owner { get; set; }
        public string CreatedOn { get; set; }
        public string ModifiedOn { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public string IsMarkComplete { get; set; }
        public string IsCRMUpdated { get; set; }
        public string IsFlag { get; set; }
        public int EnquiryStageId { get; set; }
        public int PriorityId { get; set; }
        public int EnquiryStatuId { get; set; }
        public int EnquiryRiskId { get; set; }
    
        public virtual Lead Lead { get; set; }
        public virtual EnquiryStage EnquiryStage { get; set; }
        public virtual Priority Priority { get; set; }
        public virtual EnquiryStatu EnquiryStatu { get; set; }
        public virtual EnquiryRisk EnquiryRisk { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebShop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ad_master
    {
        public int adid { get; set; }
        public string userid { get; set; }
        public string category { get; set; }
        public string title { get; set; }
        public string address { get; set; }
        public string description { get; set; }
        public string location { get; set; }
        public string ad_type { get; set; }
        public Nullable<decimal> price { get; set; }
        public Nullable<int> bed { get; set; }
        public Nullable<int> bath { get; set; }
        public Nullable<int> pool { get; set; }
        public Nullable<int> kicthen { get; set; }
        public Nullable<int> office { get; set; }
        public Nullable<int> musicroom { get; set; }
        public System.DateTime UploadDate { get; set; }
        public string Features { get; set; }
    }
}

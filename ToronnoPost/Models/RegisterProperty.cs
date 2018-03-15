using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace toronnopost.Models
{
    public class RegisterProperty
    {
        //creatinng property class for the details to insert
        [Display(Name = "Category")]
        public string category { get; set; }

        [Display(Name = "Title")]
        public string title { get; set; }

        [Display(Name = "Address")]
        public string address { get; set; }

        [Display(Name = "Description")]
        public string description { get; set; }

        [Display(Name = "Location")]
        public string location { get; set; }

        [Display(Name = "Sell/Rent")]
        public string ad_type { get; set; }

        [Display(Name = "Price")]
        public string price { get; set; }

        [Display(Name = "Bedroom")]
        public string bed { get; set; }

        [Display(Name = "Bathroom")]
        public string bath { get; set; }


        [Display(Name = "Pool")]
        public string pool { get; set; }

        [Display(Name = "Kitchen")]
        public string kitchen { get; set; }

        [Display(Name = "Office Room")]
        public string office { get; set; }

        [Display(Name = "Music Room")]
        public string musicroom { get; set; }

        [Required(ErrorMessage = "Please select file.")]
        [Display(Name = "Browse File")]
        public HttpPostedFileBase[] files { get; set; }

        

        //Creating function to insert details
        public string InsertRegDetails(RegisterProperty obj)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "Insert into ad_master values('4748efad-7706-405d-8fd9-d4d670464653','" + obj.category + "','" + obj.title + "','" + obj.address + "','" + obj.description + "','" + obj.location + "','" + obj.ad_type + "'," + obj.price + ",'" + obj.bed + "','" + obj.bath + "','" + obj.pool + "','" + obj.kitchen + "','" + obj.office + "'," + obj.musicroom + ",getdate(),'')";
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                return "Success";
            }
            catch (Exception es)
            {
                throw es;
            }
        }
    }
}
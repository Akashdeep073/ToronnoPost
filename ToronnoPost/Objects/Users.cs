using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace toronnopost.Objects
{
    public class Users
    {
        public string Id { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public string SecurityStamp { get; set; }
        public string PhoneNumber { get; set; }
        public string UserName { get; set; }
    }
}
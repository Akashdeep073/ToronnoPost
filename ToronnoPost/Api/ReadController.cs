using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.Http;
using System.Net.Http;
using toronnopost.DAL;
using System.Data.SqlClient;
using System.Configuration;


namespace toronnopost.Api
{

    public class GetUserController : ReadController
    {
        public GetUserController() : base(SQL.Users) { }
    }

    public class GetLatestPController : ReadController
    {
        public GetLatestPController() : base(SQL.LatestP) { }
    }

    public class GetAllPController : ReadController
    {
        public GetAllPController() : base(SQL.SearchProperties) { }
    }

    public class GetPropDetailController : ReadController
    {
        public GetPropDetailController() : base(SQL.PropDetail) { }
    }

    public class GetPropImagesController : ReadController
    {
        public GetPropImagesController() : base(SQL.PImages) { }
    }

    #region
    public abstract class ReadController : ApiController
    {
        public string SqlStr { get; set; }

        public ReadController(string sqlStr)
        {
            SqlStr = sqlStr;
        }

        // GET api/<controller>/5
        public HttpResponseMessage Get([FromUri] Dictionary<string, object> parameters = null)
        {
            DataTable dt = new DataTable();
            var connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connStr))
                {
                    using (var da = new SqlDataAdapter(SqlStr, con))
                    {
                        foreach (var parameter in parameters)
                        {
                            da.SelectCommand.Parameters.AddWithValue("@" + parameter.Key, parameter.Value);
                        }
                        da.Fill(dt);
                    }
                }
            }
            catch (Exception ex)
            {


            }

            var response = Request.CreateResponse(HttpStatusCode.OK, dt, "application/json");
            return response;
        }
    }
    #endregion
}
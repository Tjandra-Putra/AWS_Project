using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AWS_FLY_TA.DAL
{
    public class DAL_Database_Access
    {

        public static SqlConnection GetConnection()
        {
            SqlConnection dbConn;
            string connectionStr = ConfigurationManager.ConnectionStrings["FLY-TA_ConnectionString"].ConnectionString;
            dbConn = new SqlConnection(connectionStr);

            return dbConn;
        }


    }
}
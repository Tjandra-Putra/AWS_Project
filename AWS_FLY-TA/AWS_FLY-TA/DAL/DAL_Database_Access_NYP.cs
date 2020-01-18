using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using AWS_FLY_TA.ServiceReference_NYP_Registration;
using System.Data;



namespace AWS_FLY_TA.DAL
{
    public class DAL_Database_Access_NYP
    {
        public DataSet getStudentNecessaryInfo(int osepID)
        {
            Ws_RegistrationsvcClient NYP_Client;
            NYP_Client = new Ws_RegistrationsvcClient();
            return NYP_Client.getStudentNecessaryInfo(osepID);
        }
    }
}
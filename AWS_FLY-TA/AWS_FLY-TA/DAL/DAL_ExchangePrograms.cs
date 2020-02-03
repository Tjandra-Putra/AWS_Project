using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Text;

using System.Configuration;

using AWS_FLY_TA.DAL;


namespace AWS_FLY_TA.DAL
{
    public class DAL_ExchangePrograms
    {
        //private String errMsg;
        //DAL_Database_Access dbConn = new DAL_Database_Access();

        private String errMsg;

        SqlConnection myConnect = DAL_Database_Access.GetConnection();


        // RETRIEVE ALL PROGRAMS
        public DataSet GetAll_ExchangePrograms()
        {
            StringBuilder sql;
            SqlDataAdapter da;
            DataSet programsData;

            programsData = new DataSet();

            sql = new StringBuilder();
            sql.AppendLine("SELECT * FROM OSEP");

            try
            {
                da = new SqlDataAdapter(sql.ToString(), myConnect);
                da.Fill(programsData);
            }
            catch (Exception ex)
            {
                errMsg = ex.Message;
            }
            finally
            {
                myConnect.Close();
            }

            return programsData;
        }

        // RETRIEVE ONLY AVAILABLE PROGRAMS
        public DataSet GetAvailable_ExchangePrograms()
        {

            StringBuilder sql;
            SqlDataAdapter da;
            DataSet programsData;

            programsData = new DataSet();

            sql = new StringBuilder();
            sql.AppendLine("SELECT * FROM OSEP WHERE Quota-No_Of_Registered != 0");

            try
            {
                da = new SqlDataAdapter(sql.ToString(), myConnect);
                da.Fill(programsData);
            }
            catch (Exception ex)
            {
                errMsg = ex.Message;
            }
            finally
            {
                myConnect.Close();
            }

            return programsData;

        }


        // CREATE PROGRAMS
        public int insertPrograms(string title, string description, string duration, string accomodation, string quota, string fees)
        {
            int result = 0;

            string query = "INSERT OSEP(Title, Description, Duration, Accommodation_Type, Quota, Fees) VALUES(@title, @desc, @duration, @accom, @quota, @fees)";

            myConnect.Open();
            SqlCommand cmd = new SqlCommand(query, myConnect);
            //cmd.Parameters.AddWithValue("PO_ID", id);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@desc", description);
            cmd.Parameters.AddWithValue("@duration", duration);
            cmd.Parameters.AddWithValue("@accom", accomodation);
            cmd.Parameters.AddWithValue("@quota", quota);
            cmd.Parameters.AddWithValue("@fees", fees);

            result += cmd.ExecuteNonQuery();
            
    

            myConnect.Close();

            return result;

        }

        // INCREASE NO. OF SEATS
        public int increaseSeats(int id)
        {
            int result = 0;
            string querStr = "UPDATE OSEP SET No_Of_Registered = No_Of_Registered + 1 WHERE Id=@id";

            myConnect.Open();
            SqlCommand cmd = new SqlCommand(querStr, myConnect);
            cmd.Parameters.AddWithValue("@id", id);

            result += cmd.ExecuteNonQuery();

            myConnect.Close();

            return result;
        }






    }
}
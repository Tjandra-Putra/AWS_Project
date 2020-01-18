using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using AWS_FLY_TA.DAL;

namespace AWS_FLY_TA.BLL
{
    public class BLL_ExchangePrograms
    {
        public DataSet GetAll_ExchangePrograms()
        {
            DAL_ExchangePrograms dataLayerEP;

            dataLayerEP = new DAL_ExchangePrograms();
            return dataLayerEP.GetAll_ExchangePrograms();
        }

        public DataSet GetAvailable_ExchangePrograms()
        {
            DAL_ExchangePrograms dataLayerAvaliablePrograms;

            dataLayerAvaliablePrograms = new DAL_ExchangePrograms();
            return dataLayerAvaliablePrograms.GetAvailable_ExchangePrograms();
        }

        public DataSet getStudentNescessaryInfo(int osepID)
        {
            DAL_Database_Access_NYP dal;
            DataSet dataSetRegList;

            dal = new DAL_Database_Access_NYP();
            dataSetRegList = dal.getStudentNecessaryInfo(osepID);

            return dataSetRegList;
        }

        public int increaseSeats(int id)
        {
            DAL_ExchangePrograms obj = new DAL_ExchangePrograms();
            return obj.increaseSeats(id);
        }



    }
}
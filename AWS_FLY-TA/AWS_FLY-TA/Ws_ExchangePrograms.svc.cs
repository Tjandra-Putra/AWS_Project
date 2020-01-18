using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using System.Data;
using AWS_FLY_TA.BLL;


namespace AWS_FLY_TA
{
    public class Ws_ExchangePrograms : IWs_ExchangePrograms
    {
        public DataSet GetAll_ExchangePrograms()
        {
            BLL_ExchangePrograms bizLayerEP = new BLL_ExchangePrograms();
            return bizLayerEP.GetAll_ExchangePrograms();
        }

        public DataSet GetAvailable_ExchangePrograms()
        {
            BLL_ExchangePrograms obj = new BLL_ExchangePrograms();
            return obj.GetAvailable_ExchangePrograms();
        }

        public int increaseSeats(int id)
        {
            BLL_ExchangePrograms bizLayerIncreaseSeats = new BLL_ExchangePrograms();
            return bizLayerIncreaseSeats.increaseSeats(id);
        }
    }
}

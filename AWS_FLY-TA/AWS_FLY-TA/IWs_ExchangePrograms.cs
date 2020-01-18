using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using System.Data;

namespace AWS_FLY_TA
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IWs_ExchangePrograms" in both code and config file together.
    [ServiceContract]
    public interface IWs_ExchangePrograms
    {
        [OperationContract]
        DataSet GetAll_ExchangePrograms();

        [OperationContract]
        DataSet GetAvailable_ExchangePrograms();

        [OperationContract]
        int increaseSeats(int id);
    }


}

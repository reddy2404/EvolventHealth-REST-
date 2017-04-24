using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.ServiceModel.Web;
namespace EvolveHealthREST
{
    [ServiceContract()]
    interface IEvolventHealth


    {

        [OperationContract()]
        [WebGet(UriTemplate = "Evolvents/", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        List<Evolvent> GetList();

        //[OperationContract()]
        //[WebGet(UriTemplate = "Evolvent/{id}")]
        //Evolvent GetEvolventById(String Id);

        [OperationContract()]
        [WebInvoke(UriTemplate = "EvolventAdd/", Method = "POST", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        void AddEvolvent(Evolvent evl);

        [OperationContract()]
        [WebInvoke(UriTemplate = "EvolventUpdate/", Method = "PUT", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        void UpdateEvolvent(Evolvent evl);

        [OperationContract()]
        [WebInvoke(UriTemplate = "EvolventDel/{id}", Method = "DELETE",RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        void DeleteEvolvent(string id);
    }
}

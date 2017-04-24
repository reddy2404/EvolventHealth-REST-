using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace EvolveHealthREST
{
     [DataContract(Namespace = "")]
    public class Evolvent
    {
        //[DataMember]
        //public long Id;
        //[DataMember]
        //public string FirstName;
        //[DataMember]
        //public string LastName;
        //[DataMember]
        //public string EmailID;
        //[DataMember]
        //public string PhoneNo;
        //[DataMember]
        //public string Status;



        [DataMember(Order = 0)]
        public int Id { get; set; }

        [DataMember(Order = 1)]
        public string FirstName { get; set; }

        [DataMember(Order = 2)]
        public string LastName { get; set; }

        [DataMember(Order = 3)]
        public string EmailID { get; set; }
        [DataMember(Order = 4)]
        public string PhoneNo { get; set; }
        [DataMember(Order = 5)]
        public Boolean Status { get; set; }
    }
}
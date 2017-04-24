using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace EvolveHealthREST
{
    public class EvolventHealth : IEvolventHealth
    {
        public List<Evolvent> GetList()
        {
            var dt = new DataTable();
            dbHelper db = new dbHelper();
            dt = db.GetResultList();
            var qEvolvent = from dr in dt.AsEnumerable()
                            select new Evolvent()
                            {
                                Id =Convert.ToInt32( dr["ID"]),
                                FirstName = dr["FirstName"].ToString(),
                                LastName = dr["LastName"].ToString(),
                                EmailID = dr["Email"].ToString(),
                                PhoneNo = dr["PhoneNumber"].ToString(),
                                Status = Convert.ToBoolean(dr["Status"])
                            };
            return qEvolvent.ToList();
        }

        //public Evolvent GetEvolventById(string id)
        //{

        //    var dt = new DataTable();
        //    dbHelper db = new dbHelper();
        //   dt=db.
        //    if (dt.Rows.Count > 0)
        //    {
        //        var dr = dt.Rows[0];
        //        return new Employee
        //        {
        //            EmpNo = dr["EmpNo"].ToString(),
        //            EmpName = dr["EmpName"].ToString(),
        //            EmpSal = dr["EmpSal"].ToString(),
        //            EmpDepNo = dr["EmpDepNo"].ToString()

        //        };
        //    }
        //    return null;
        //}

        public void AddEvolvent(Evolvent oevl)
        {
            
           dbHelper db = new dbHelper();
          Boolean result=Convert.ToBoolean(db.InsertData(oevl.FirstName,oevl.LastName,oevl.EmailID,oevl.PhoneNo,oevl.Status));
        }

        public void UpdateEvolvent(Evolvent oevl)
        {
            dbHelper db = new dbHelper();
            int result = db.UpdateData(oevl.Id, oevl.FirstName, oevl.LastName, oevl.EmailID, oevl.PhoneNo, oevl.Status);
        }

        public void DeleteEvolvent(string id )
        {
            int idno = Convert.ToInt32(id);
            dbHelper db = new dbHelper();
            Boolean Result = db.DeleteData(idno);
        }
    }
}
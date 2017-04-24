using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvolventDemo.EvolReference;
using System.ServiceModel;
using System.Runtime.Serialization.Json;



namespace EvolventDemo
{
    //
    public partial class EvolventWebPage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                try
                {
                    EvolReference.EvolventHealthClient client = new EvolventHealthClient("SOAPEndPoint");

                    gdvDetails.DataSource = client.GetList();
                    gdvDetails.DataBind();
                   
                    //gdvDetails.DataSource = client.GetList();
                    //gdvDetails.DataBind();
                    //string endPoint = @"http://localhost:30251/EvolventHea.svc";

                    //string endpoint1 = @"http://localhost:30251/EvolventHea.svc";
                    //EvolventHealthClient client = new EvolventHealthClient(endpoint1);
                   
                   //var client = new RestClient(endPoint);
                    //var json = RestClient.MakeRequest();



                  

               
 
                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
                
            }
        }


        //insert data

        protected void InsertButton_Click(object sender, EventArgs e)
        {

        }

        //Update Data


        //Delete Data

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            
        }

        //Cancel Data
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            ResetAll();
        }

        private void ResetAll()
        {

        }

        protected void GridViewStudentDetails_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
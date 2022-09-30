using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for BankService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class BankService : System.Web.Services.WebService {

    public BankService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public bool checkcard(int cno, string ct, string vu, int cvv, string cnm, int climit)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        con.Open();
        string qry = "select * from BankPayment where cardno=@t1 and cardtype=@t2 and validupto=@t3 and cvv=@t4 and cardholder=@t5 and cardlimit>=@t6";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@t1", cno);
        cmd.Parameters.AddWithValue("@t2", ct);
        cmd.Parameters.AddWithValue("@t3", vu);
        cmd.Parameters.AddWithValue("@t4", cvv);
        cmd.Parameters.AddWithValue("@t5", cnm);
        cmd.Parameters.AddWithValue("@t6", climit);
        SqlDataReader dr=cmd.ExecuteReader();
        if(dr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
  

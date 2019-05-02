using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewShiter : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string query = string.Format(@"insert into shiter_operations (amount,shitter_number,cover_type,customer,paper_type,op_date,setup_req) values({0},{1},{2},{3},{4},{5},{6})",
           TxtAmount.Value, ddlShiters.SelectedValue, TxtCoverType.Value, txtCustomer.Value, TxtpaperType.Value,
           Calendar1.SelectedDate.ToString(), chkSetupReq.Checked ? "1" : "0");
        DAL dal = new DAL();
        int aff = dal.DoQuery(query);
        if (aff == 1)
        {
            Response.Redirect("~/Shiters.aspx");
        }
    }
}
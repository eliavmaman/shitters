using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shiters : System.Web.UI.Page
{
    public DataTable operationsDt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetShiters();
    }

    private void GetShiters()
    {
        DAL dal = new DAL();
        string query = "select * from shiters";
        DataTable dt = dal.GetDataTable(query);

        //TODO adapt shiters

        ddlShiters.DataSource = dt;

        ddlShiters.DataTextField = "name";

        ddlShiters.DataValueField = "shit_number";

        ddlShiters.DataBind();

        ddlShiters.Items.Insert(0, "select one");
    }

    protected void ddlShiters_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = ddlShiters.SelectedValue;
        string query = "select * from shiter_operations where num=" + id;
        DAL dal = new DAL();
        operationsDt = dal.GetDataTable(query);

    }
}
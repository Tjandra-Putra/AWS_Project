using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using AWS_FLY_TA.BLL;
using AWS_FLY_TA.DAL;

using System.Data.SqlClient;
using System.Configuration;

namespace AWS_FLY_TA
{
    public partial class ExchangePrograms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BindExchangeProgramList();
            }
        }

        private void BindExchangeProgramList()
        {
            DAL_ExchangePrograms obj = new DAL_ExchangePrograms();
            DataSet ds;
            ds = obj.GetAll_ExchangePrograms();
            gv_ExchangePrograms.DataSource = ds;
            gv_ExchangePrograms.DataBind();
        }

        protected void btn_Create_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create_ExchangePrograms.aspx");
        }

        private void binddetailsView(int osepID)
        {

            DAL_Database_Access_NYP obj = new DAL_Database_Access_NYP();
            DataSet ds;
            ds = obj.getStudentNecessaryInfo(osepID);
            gv_Detailed.DataSource = ds;
            gv_Detailed.DataBind();

        }

        protected void gv_ExchangePrograms_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedRowIndex = gv_ExchangePrograms.SelectedIndex;
            int Id = Convert.ToInt32(gv_ExchangePrograms.DataKeys[selectedRowIndex].Value);
            binddetailsView(Id);
        }

        protected void gv_ExchangePrograms_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            int newPageIndex = e.NewPageIndex;
            gv_ExchangePrograms.PageIndex = newPageIndex;
            BindExchangeProgramList();
        }

       
    }
}
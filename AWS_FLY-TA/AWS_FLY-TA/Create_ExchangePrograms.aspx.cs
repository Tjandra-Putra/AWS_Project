using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AWS_FLY_TA.DAL;

namespace AWS_FLY_TA
{
    public partial class Create_ExchangePrograms : System.Web.UI.Page
    {
        DAL_ExchangePrograms obj = new DAL_ExchangePrograms();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExchangePrograms.aspx");
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {


            int result = obj.insertPrograms(tb_Title.Text, tb_Description.Text, tb_Duration.Text, ddl_Type.Text, tb_Quota.Text, tb_Fees.Text);

            ddl_Type.Text = ddl_Type.SelectedItem.Value;

            if (result > 0)
            {
                //Response.Write("<script>alert('Successfully Created!');</script>");
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertMe()", true);

            }

        }
    }
}
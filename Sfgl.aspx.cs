using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class Sfgl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebData.CurrentMenu = "收费管理";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //
            string s_cxlb = cxlb.Value;
            string s_cxnr = cxnr.Text;
            //
            string sql = "select * from sfxx where 1=1 ";
            //
            if (!string.IsNullOrEmpty(s_cxlb) && !string.IsNullOrEmpty(s_cxnr))
            {
                sql += " and " + s_cxlb + " like N'%" + s_cxnr + "%'";
            }
            //
            SqlDataSource1.SelectCommand = sql;
            GridView1.DataBind();
        }
    }
}
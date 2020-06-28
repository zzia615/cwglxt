using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class CnglAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "新增出纳";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //获取页面数据
                string s_mc = mc.Text;
                string s_lb = lb.Text;
                string s_je = je.Text;
                string s_sm = sm.Text;
                //新增出纳
                string sql = ("insert into cnxx(mc,lb,je,sm)" +
                    "values('{0}','{1}','{2}','{3}')")
                    .AsFormat(s_mc, s_lb, s_je, s_sm);
                new SqlServerHelper().ExecuteSql(sql);
                //提示用户
                Response.Write("<script>alert('新增出纳成功');window.location.href='Cngl.aspx';</script>");

            }
        }
    }
}
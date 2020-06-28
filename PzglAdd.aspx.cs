using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class PzglAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "新增凭证";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //获取页面数据
                string s_mc = mc.Text;
                string s_pzurl = pzurl.Text;
                //新增凭证
                string sql = ("insert into pzxx(mc,pzurl)" +
                    "values('{0}','{1}')")
                    .AsFormat(s_mc, s_pzurl);
                new SqlServerHelper().ExecuteSql(sql);
                //提示用户
                Response.Write("<script>alert('新增凭证成功');window.location.href='Pzgl.aspx';</script>");

            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class PzglEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "修改凭证";
            if (!IsPostBack)
            {
                string s_id = Request.QueryString["id"];
                string sql = "select * from pzxx where id='{0}'".AsFormat(s_id);
                DataTable table = new SqlServerHelper().QuerySqlDataTable(sql);
                if (table != null && table.Rows.Count > 0)
                {
                    id.Text = table.Rows[0]["id"].AsString();
                    mc.Text = table.Rows[0]["mc"].AsString();
                    pzurl.Text = table.Rows[0]["pzurl"].AsString();
                    rq.Text = table.Rows[0]["rq"].AsD10();
                }
                else
                {
                    Response.Write("<script>alert('凭证信息不存在');window.location.href='Xsgl.aspx';</script>");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //获取页面数据
                string s_id = id.Text;
                string s_mc = mc.Text;
                string s_pzurl = pzurl.Text;
                string s_rq = rq.Text;
                //修改凭证
                string sql = ("update pzxx set mc='{1}',pzurl='{2}',rq='{3}'" +
                    " where id='{0}'")
                    .AsFormat(s_id, s_mc, s_pzurl, s_rq);
                new SqlServerHelper().ExecuteSql(sql);
                //提示用户
                Response.Write("<script>alert('修改凭证成功');window.location.href='Pzgl.aspx';</script>");

            }
        }
    }
}
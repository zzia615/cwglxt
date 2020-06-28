using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class SfglEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            WebData.CurrentMenu = "修改收费";
            if (!IsPostBack)
            {
                string s_id = Request.QueryString["id"];
                string sql = "select * from sfxx where id='{0}'".AsFormat(s_id);
                DataTable table = new SqlServerHelper().QuerySqlDataTable(sql);
                if (table != null && table.Rows.Count > 0)
                {
                    id.Text = table.Rows[0]["id"].AsString();
                    mc.Text = table.Rows[0]["mc"].AsString();
                    lb.Text = table.Rows[0]["lb"].AsString();
                    je.Text = table.Rows[0]["je"].AsString();
                    sm.Text = table.Rows[0]["sm"].AsString();
                }
                else
                {
                    Response.Write("<script>alert('收费信息不存在');window.location.href='Xsgl.aspx';</script>");
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
                string s_lb = lb.Text;
                string s_je = je.Text;
                string s_sm = sm.Text;
                //修改收费
                string sql = ("update sfxx set mc='{1}',lb='{2}',je='{3}',sm='{4}'" +
                    " where id='{0}'")
                    .AsFormat(s_id, s_mc, s_lb, s_je, s_sm);
                new SqlServerHelper().ExecuteSql(sql);
                //提示用户
                Response.Write("<script>alert('修改收费成功');window.location.href='Sfgl.aspx';</script>");

            }
        }
    }
}
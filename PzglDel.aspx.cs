﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cwglxt
{
    public partial class PzglDel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s_id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(s_id))
            {
                string sql = "delete from pzxx where id='{0}'".AsFormat(s_id);
                new SqlServerHelper().ExecuteSql(sql);
                Response.Write("<script>alert('删除凭证信息成功');window.location.href='Pzgl.aspx';</script>");
            }
        }
    }
}
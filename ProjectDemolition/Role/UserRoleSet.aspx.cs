using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using ProjectToYou.Code;
using ProjectDemolition.Utility;
using System.Data;
namespace ProjectDemolition.Role
{
    public partial class UserRoleSet :PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnClose.OnClientClick = ActiveWindow.GetHideReference();
                LoadData();
            }
        }

        private void LoadData()
        {
            string sql = string.Format("select Id,Name from UserTable");
            DataTable dt = DBAccess.QueryDataTable(sql);
            ddlUser.DataSource = dt.DefaultView;
            ddlUser.DataTextField = "Name";
            ddlUser.DataValueField = "Id";
            ddlUser.DataBind();

            string sql_role = string.Format("select Id,RoleName from Role");
            DataTable dts = DBAccess.QueryDataTable(sql_role);
            ddlRole.DataSource = dts.DefaultView;
            ddlRole.DataTextField = "RoleName";
            ddlRole.DataValueField = "Id";
            ddlRole.DataBind();

        }
        protected void btnSaveRefresh_Click(object sender, EventArgs e)
        {
            // 1. 这里放置保存窗体中数据的逻辑
            try
            {
                int userid =Convert.ToInt32(ddlUser.SelectedItem.Value);
                int roleid =Convert.ToInt32(ddlRole.SelectedItem.Value);
                string sql = string.Format("insert into UserRole values({0},{1})", userid,roleid);
                int count = DBAccess.ExecTransSql(sql);
                if (count > 0)
                {
                    Alert.ShowInTop("设置成功");
                }
                else
                {
                    Alert.ShowInTop("设置失败");
                }
            }
            catch (Exception ex)
            {
                WriteLog.WriteError(ex);
            }

            // 2. 关闭本窗体，然后刷新父窗体
            PageContext.RegisterStartupScript(ActiveWindow.GetHideRefreshReference());
        }
    }
}
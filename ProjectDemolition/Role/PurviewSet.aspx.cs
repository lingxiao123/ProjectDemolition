using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using FineUI;
using ProjectToYou.Code;
using ProjectDemolition.Utility;
using System.Data;

namespace ProjectDemolition.Role
{
    public partial class PurviewSet : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                btnClose.OnClientClick = ActiveWindow.GetHideReference();
                loadData(id);
            }
        }
        public void loadData(string str)
        {
            string sql = "select * from Menu";
            DataTable dt = DBAccess.QueryDataTable(sql);
            string sql_rolemenu = "select MenuName from RoleMenu where RoleId=" + Convert.ToInt32(str) + "";
            DataTable dts = DBAccess.QueryDataTable(sql_rolemenu);
            int len = dt.Rows.Count % 3;
            int lens = Convert.ToInt32(dt.Rows.Count / 3);
            len = len + lens;
            int n = 0;
            for (int i = 1; i <= len; i++)
            {
                FormRow row= new FormRow();
                row.ID = "row"+i;
                Form2.Rows.Add(row);
                //CheckBoxList cbl = new CheckBoxList();
                //cbl.ID = "chkList"+i;
                //Form2.Items.Add(cbl);

                for (int j = 0; j < 3; j++)
                {
                    if (n >= dt.Rows.Count)
                    {
                        return;
                    }
                    CheckBox chk = new CheckBox();
                    chk.ID = "chk"+(n+1);
                    chk.Text= dt.Rows[n]["MenuName"].ToString();
                    //CheckItem ci = new CheckItem();
                    //ci.Text = dt.Rows[n]["MenuName"].ToString();
                    //ci.Value = dt.Rows[n]["Id"].ToString();
                    if (dts.Rows.Count > 0)
                    {
                        for (int k = 0; k < dts.Rows.Count; k++)
                        {
                            if (dts.Rows[k]["MenuName"].ToString() == dt.Rows[n]["MenuName"].ToString())
                            {
                                chk.Checked = true;
                            }
                        }
                    }
                    row.Items.Add(chk);
                    n++;
                }

            }
            FormRow rows = new FormRow();
            rows.ID = "rowhidden";
            Form2.Rows.Add(rows);

            HiddenField hf = new HiddenField();
            hf.ID = "hiddenRole";
            hf.Hidden = true;
            hf.Text = str;
            rows.Items.Add(hf);

            HiddenField hfs = new HiddenField();
            hfs.ID = "hiddenLength";
            hfs.Hidden = true;
            hfs.Text = len.ToString();
            rows.Items.Add(hfs);
        }

        protected void btnSaveRefresh_Click(object sender, EventArgs e)
        {
            // 1. 这里放置保存窗体中数据的逻辑
            try
            {
                FormRow row = Form2.FindControl("rowhidden") as FormRow;          
                HiddenField hf = row.FindControl("hiddenLength") as HiddenField;
                string length = hf.Text;
                
                
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
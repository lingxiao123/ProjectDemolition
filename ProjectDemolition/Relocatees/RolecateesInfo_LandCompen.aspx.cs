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
namespace ProjectDemolition.Relocatees
{
    public partial class RolecateesInfo_LandCompen :PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        #region BindGrid

        private void BindGrid()
        {
            string sql = string.Empty;
            sql += "SELECT Id,UserName,CardID,BankCard,WaterFiledNumber as WaterFiledArea,";
            sql += "WaterFiledMoney,DroughtFiledNumber as DroughtFiledArea,DroughtFiledMoney,ReservoirNumber as ReservoirArea,ReservoirMoney,";
            sql += "HomeSteadNumber as HomeSteadArea,HomeSteadMoney,IncomeNumber as IncomeArea,IncomeMoney,";
            sql += "OtherForestNumber as OtherForestArea,OtherForestMoney,WasteHillNumber as WasteHillArea,WasteHillMoney,";
            sql += "OtherWaterFiledNumber as OtherWaterFiledArea,OtherWaterFiledMoney,OtherDroughtFiledNumber as OtherDroughtFiledArea,OtherDroughtFiledMoney,";
            sql += "OtherNumber as OtherArea,OtherMoney,";
            sql += "(WaterFiledMoney + DroughtFiledMoney + ReservoirMoney + HomeSteadMoney + IncomeMoney + OtherForestMoney + WasteHillMoney + OtherWaterFiledMoney + OtherDroughtFiledMoney + OtherMoney) as TotalMoney";
            sql += " from LandCompen";
            // 1.设置总项数（特别注意：数据库分页一定要设置总记录数RecordCount）
            Grid1.RecordCount = GetTotalCount(sql);
            // 2.获取当前分页数据
            DataTable table = GetPagedDataTable(sql);
            // 3.绑定到Grid
            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        /// <summary>
        /// 模拟返回总项数
        /// </summary>
        /// <returns></returns>
        private int GetTotalCount(string sql)
        {
            //return DataSourceUtil.GetDataTable2().Rows.Count;
            DataTable dt = DBAccess.QueryDataTable(sql);
            return dt.Rows.Count;
        }

        /// <summary>
        /// 模拟数据库分页
        /// </summary>
        /// <returns></returns>
        private DataTable GetPagedDataTable(string sql)
        {
            int pageIndex = Grid1.PageIndex;
            int pageSize = Grid1.PageSize;

            string sortField = Grid1.SortField;
            string sortDirection = Grid1.SortDirection;
            DataTable dt = DBAccess.QueryDataTable(sql);
            //DataTable table2 = DataSourceUtil.GetDataTable2();
            DataTable table2 = dt;
            DataView view2 = table2.DefaultView;
            view2.Sort = String.Format("{0} {1}", sortField, sortDirection);

            DataTable table = view2.ToTable();

            DataTable paged = table.Clone();

            int rowbegin = pageIndex * pageSize;
            int rowend = (pageIndex + 1) * pageSize;
            if (rowend > table.Rows.Count)
            {
                rowend = table.Rows.Count;
            }

            for (int i = rowbegin; i < rowend; i++)
            {
                paged.ImportRow(table.Rows[i]);
            }

            return paged;
        }

        #endregion

        #region Events

        protected void Button1_Click(object sender, EventArgs e)
        {
            //labResult.Text = HowManyRowsAreSelected(Grid1);
        }


        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void Grid1_Sort(object sender, FineUI.GridSortEventArgs e)
        {
            //Grid1.SortDirection = e.SortDirection;
            //Grid1.SortField = e.SortField;
            BindGrid();
        }

        #endregion
    }
}
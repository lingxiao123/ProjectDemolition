using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using System.Data;
using ProjectToYou.Code;
using ProjectDemolition.Utility;
namespace ProjectDemolition.Relocatees
{
    public partial class RolecateesInfo_Survey :PageBase
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
            sql += "SELECT Id,UserName,CardID,BankCard,";
            sql += "FrameNumber as FrameArea, FrameMoney,BrickNumber as BrickArea,BarckMoney as BrickMoney,BrickWoodNumber as BrickWoodArea,BrickWoodMoney as BrickWoodMoney,";
            sql += "EarthWoodNumber as EarthWoodArea,EarthWoodMoney,AffiliatedNumber as AffiliatedArea, AffiliatedMoney as AffiliatedMoney,";
            sql += "DecorationNumber as DecorationArea, DecorationPrice as DecorationPrice,DecorationMoney as DecorationMoney, PressureWellNumber AS RunWaterNumber,PressureWellMoney as RunWaterMoney,";
            sql += "PublicWellNumber,PublicWellMoney,BrickFenceNumber as BrickWallArea,BrickFenceMoney as BrickWallMoney,";
            sql += "BleacheryNumber as BleacheryArea,BleacheryMoney as BleacheryMoney,StoneNumber as StoneArea,StoneMoney,";
            sql += "OrangeResultNumber,OrangeResultMoney,OrangeNoResultNumber,OrangeNoResultMoney,OrangeThatResultNumber,";
            sql += "OrangeThatResultMoney,OtherResultNumber,OtherResultMoney,OtherNoResultNumber,OtherNoResultMoney,";
            sql += "OtherThatResultNumber,OtherThatResultMoney,OverPriceNumber as OverNumber,OverMoney,";
            sql += "GardenPoolNumber,GardenPoolPrice,GardenPoolMoney,GraveNumber,GraveMoney,";
            sql += "(FrameMoney + BarckMoney + BrickWoodMoney + EarthWoodMoney + AffiliatedMoney + DecorationMoney + PressureWellMoney + PublicWellMoney + BrickFenceMoney + BleacheryMoney + StoneMoney + OrangeResultMoney + OrangeNoResultMoney + OrangeThatResultMoney + OtherResultMoney + OtherNoResultMoney + OtherThatResultMoney + OverMoney + GardenPoolMoney + GraveMoney) as TotalMoney";
            sql += " from DemolitionSurvey ";
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
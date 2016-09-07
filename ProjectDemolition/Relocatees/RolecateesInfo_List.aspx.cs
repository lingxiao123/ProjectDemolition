using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ProjectToYou.Code;
using FineUI;
using ProjectDemolition.Utility;
namespace ProjectDemolition.Relocatees
{
    public partial class RolecateesInfo_List :PageBase
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
            sql += "SELECT ds.Id,ds.UserName,ds.CardID,ds.BankCard,ds.RreaName,";
            sql += "(ds.FrameNumber+ds.BrickNumber+ds.BrickWoodNumber+ds.EarthWoodNumber) as HouseArea,";
            sql += "(ds.FrameMoney+ds.BarckMoney+ds.BrickWoodMoney+ds.EarthWoodMoney) as HouseMoney,";
            sql += "ds.DecorationNumber as DecorationArea,ds.DecorationMoney as DecorationMoney,ds.RunWaterNumber,ds.RunWaterMoney,ds.PublicWellNumber,ds.PublicWellMoney,";
            sql += "ds.BrickFenceNumber as BrickWallArea,ds.BrickFenceMoney as BrickWallMoney,(ds.BleacheryNumber+ds.StoneNumber) as SunPlaceArea,(ds.BleacheryMoney+ds.StoneMoney) as SunPlaceMoney,";
            sql += "(ds.OrangeResultNumber + ds.OrangeNoResultNumber + ds.OrangeThatResultNumber + ds.OtherResultNumber + ds.OtherNoResultNumber + ds.OtherThatResultNumber) as FruiterNumber,";
            sql += "(ds.OrangeResultMoney+ds.OrangeNoResultMoney+ds.OrangeThatResultMoney+ds.OtherResultMoney+ds.OtherNoResultMoney+ds.OtherThatResultMoney) as FruiterMoney,";
            sql += "ds.OverPriceNumber as OverNumber, ds.OverMoney as OverMoney, ds.GardenPoolNumber, ds.GardenPoolMoney,";
            sql += "ds.GraveNumber, ds.GraveMoney, lc.WaterFiledNumber as WaterFiledArea, lc.WaterFiledMoney as WaterFiledMoney,";
            sql += "lc.DroughtFiledNumber as DryLandArea, lc.DroughtFiledMoney as DryLandMoney, lc.ReservoirNumber as ReservoirArea, lc.ReservoirMoney as ReservoirMoney,";
            sql += "lc.HomeSteadNumber as AbodeBaseArea, lc.HomeSteadMoney as AbodeBaseMoney, (lc.IncomeNumber + lc.OtherForestNumber) as WoodLandArea, (lc.IncomeMoney + lc.OtherForestMoney) as WoodLandMoney,";
            sql += "lc.WasteHillNumber as WasteLandArea, lc.WasteHillMoney as WasteLandMoney, lc.OtherWaterFiledNumber as GardenWaterFiledArea, lc.OtherWaterFiledMoney as GardenWaterFiledMoney,";
            sql += "lc.OtherDroughtFiledNumber as GardenDryLandArea, lc.OtherDroughtFiledMoney as GardenDryLandMoney, lc.OtherNumber as GardenOtherArea, lc.OtherMoney as GardenOtherMoney,";
            sql += "(ds.FrameMoney + ds.BarckMoney + ds.BrickWoodMoney + ds.EarthWoodMoney + ds.DecorationMoney + ds.PublicWellMoney + ds.BrickFenceMoney + ds.BleacheryMoney + ds.StoneMoney + ds.OrangeResultMoney + ds.OrangeNoResultMoney + ds.OrangeThatResultMoney + ds.OtherResultMoney + ds.OtherNoResultMoney + ds.OtherThatResultMoney + ds.OverMoney + GardenPoolMoney + ds.GraveMoney + lc.WaterFiledMoney + lc.DroughtFiledMoney + lc.ReservoirMoney + lc.HomeSteadMoney + lc.IncomeMoney + lc.OtherForestMoney + lc.WasteHillMoney + lc.OtherWaterFiledMoney + lc.OtherWaterFiledMoney + lc.OtherDroughtFiledMoney + lc.OtherMoney) as TotalMoney ";
            sql += " FROM DemolitionSurvey as ds LEFT JOIN LandCompen AS lc on ds.CardID = lc.CardID where 1=1";
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


        protected void btnSave_Click(object sender, EventArgs e)
        {
            Dictionary<int, Dictionary<string, object>> modifiedDict = Grid1.GetModifiedDict();
            try
            {
                int count = 0;
                foreach (int rowIndex in modifiedDict.Keys)
                {
                    int rowID = Convert.ToInt32(Grid1.DataKeys[rowIndex][0]);
                    GridRow row = Grid1.Rows[rowIndex];
                    int status = Convert.ToInt32(Grid1.Rows[rowIndex].Values[2]);
                    string datetime = DateTime.Now.ToString("yyyy-MM-dd");
                    string sql = string.Format("update UserTable set Status={0},UpdateTime='{1}' where Id={2}", status, datetime, rowID);
                    count += DBAccess.ExecTransSql(sql);
                }
                if (count > 0)
                {
                    Alert.ShowInTop("修改成功");
                    BindGrid();
                }
                else
                {
                    Alert.ShowInTop("修改失败");
                }
            }
            catch (Exception ex)
            {
                WriteLog.WriteError(ex);
            }
        }
        protected void Grid1_RowCommand(object sender, GridCommandEventArgs e)
        {
            if (e.CommandName == "Action1")
            {
                try
                {
                    object[] keys = Grid1.DataKeys[e.RowIndex];
                    int id = Convert.ToInt32(keys[0]);
                    string sql = string.Format("update UserTable set Pwd='{0}' where Id={1}", DESEncrypt.Encrypt("123456"), id);
                    int count = DBAccess.ExecTransSql(sql);
                    if (count > 0)
                    {
                        Alert.ShowInTop("重置成功");
                    }
                }
                catch (Exception ex)
                {
                    WriteLog.WriteError(ex);
                }

            }
        }
    }
}
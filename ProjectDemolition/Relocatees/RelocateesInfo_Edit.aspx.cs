using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FineUI;
using System.Data.SqlClient;
using ProjectToYou.Code;
namespace ProjectDemolition.Relocatees
{
    public partial class RelocateesInfo_Edit : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            IList<SqlParameter> list = new List<SqlParameter>();
            GetAllInfo(ref list);
            #region 公有信息
                string UserName = txtUserName.Text.Trim();
                string CardID = txtCardID.Text.Trim();
                string AreaName = txtAreaName.Text.Trim();
                string BankCard = txtBankCard.Text.Trim();
            if (UserName==""||CardID==""||AreaName==""||BankCard=="")
            {
                Alert.ShowInTop("未填写数据,请输入数据！");
                return;
            }
            string nowdate = DateTime.Now.ToString("yyyy-MM-dd");
            #endregion
            #region 拆迁情况
            string sql = string.Empty;
            sql += sql + "insert into DemolitionSurvey(UserName,CardID,BankCard,RreaName,FrameNumber,";
            sql +="FramePrice,FrameMoney,BrickNumber,BrickPrice,BarckMoney,";
            sql +="BrickWoodNumber,BrickWoodPrice,BrickWoodMoney,EarthWoodNumber,EarthWoodPrice,";
            sql +="EarthWoodMoney,OverPriceNumber,OverPrice,OverMoney,AffiliatedNumber,";
            sql +="AffiliatedPrice,AffiliatedMoney,DecorationNumber,DecorationPrice,DecorationMoney,";
            sql +="PressureWellNumber,PressureWellPrice,PressureWellMoney,PublicWellNumber,PublicWellPrice,";
            sql +="PublicWellMoney,BrickFenceNumber,BrickFencePrice,BrickFenceMoney,BleacheryNumber,";
            sql +="BleacheryPrice,BleacheryMoney,StoneNumber,StonePrice,StoneMoney,";
            sql +="OrangeResultNumber,OrangeResultPrice,OrangeResultMoney,OrangeNoResultNumber,OrangeNoResultPrice,";
            sql +="OrangeNoResultMoney,OrangeThatResultNumber,OrangeThatResultPrice,OrangeThatResultMoney,OtherResultNumber,";
            sql +="OtherResultPrice,OtherResultMoney,OtherNoResultNumber,OtherNoResultPrice,OtherNoResultMoney,";
            sql +="OtherThatResultNumber,OtherThatResultPrice,OtherThatResultMoney,GardenPoolNumber,GardenPoolPrice,";
            sql +="GardenPoolMoney,GraveNumber,GravePrice,GraveMoney,AddTime)";
            sql +="values('" + txtUserName.Text + "','" + txtCardID.Text + "','" + txtBankCard.Text + "','" + txtAreaName.Text + "','" + txtFrameNumber.Text + "',";
            sql +=  "'" + txtFramePrice.Text + "','" + txtFrameMoney.Text+ "','" + txtBrickNumber.Text + "','" + txtBrickPrice.Text + "','" + txtBrickMoney.Text + "',";
            sql += "'" + txtBrickWoodNumber.Text + "','" + txtBrickWoodPrice.Text + "','" + txtBrickWoodMoney.Text + "','" + txtEarthWoodNumber.Text + "','" + txtEarthWoodPrice.Text + "',";
            sql += "'" + txtEarthWoodMoney.Text + "','" + txtOverPriceNumber.Text + "','" + txtOverPrice.Text + "','" + txtOverMoney.Text+ "','" + txtAffiliatedNumber.Text + "',";
            sql += "'" + txtAffiliatedPrice.Text + "','" + txtAffiliatedMoney.Text + "','" + txtDecorationNumber.Text+ "','" + txtDecorationPrice.Text + "','" + txtDecorationMoney.Text + "',";
            sql +="'" + txtPressureWellNumber.Text + "','" + txtPressureWellPrice.Text + "','" + txtPressureWellMoney.Text + "','" + txtPublicWellNumber.Text + "','" + txtPublicWellPrice.Text + "',";
            sql +=  "'" + txtPublicWellMoney.Text + "','" + txtBrickFenceNumber.Text + "','" + txtBrickFencePrice.Text + "','" + txtBrickFenceMoney.Text + "','" + txtBleacheryNumber.Text+ "',";
            sql += "'" + txtBleacheryPrice.Text + "','" + txtBleacheryMoney.Text+ "','" + txtStoneNumber.Text + "','" + txtStonePrice.Text + "','" + txtStoneMoney.Text + "',";
            sql +=  "'" + txtOrangeResultNumber.Text + "','" + txtOrangeResultPrice.Text + "','" + txtOrangeResultMoney.Text + "','" + txtOrangeNoResultNumber.Text + "','" + txtOrangeNoResultPrice.Text + "',";
            sql +=  "'" + txtOrangeNoResultMoney.Text + "','" + txtOrangeThatResultNumber.Text + "','" + txtOrangeThatResultPrice.Text + "','" + txtOrangeThatResultMoney.Text + "','" + txtOtherResultNumber.Text + "',";
            sql += "'" + txtOtherResultPrice.Text+ "','" + txtOtherResultMoney.Text+ "','" + txtOtherNoResultNumber.Text+ "','" + txtOtherNoResultPrice.Text + "','" + txtOtherNoResultMoney.Text + "',";
            sql +=  "'" + txtOtherThatResultNumber.Text + "','" +txtOtherThatResultPrice.Text+ "','" + txtOtherThatResultMoney.Text+ "','" + txtGardenPoolNumber.Text+ "','" + txtGardenPoolPrice.Text+ "',";
            sql +=  "'" + txtGardenPoolMoney.Text + "','" + txtGraveNumber.Text + "','" + txtGravePrice.Text+ "','" + txtGraveMoney.Text + "','" + nowdate + "')";
            int count = DBAccess.ExecTransSql(sql);


            string sql_land = string.Empty;
            sql_land += "insert into LandCompen(UserName,CardID,BankCard,RreaName,WaterFiledNumber,";
            sql_land += "WaterFiledPrice,WaterFiledMoney,DroughtFiledNumber,DroughtFiledPrice,DroughtFiledMoney,";
            sql_land += "ReservoirNumber,ReservoirPrice,ReservoirMoney,IncomeNumber,IncomePrice,";
            sql_land += "IncomeMoney,OtherForestNumber,OtherForestPrice,OtherForestMoney,HomeSteadNumber,";
            sql_land += "HomeSteadPrice,HomeSteadMoney,WasteHillNumber,WasteHillPrice,WasteHillMoney,";
            sql_land += "OtherWaterFiledNumber,OtherWaterFiledPrice,OtherWaterFiledMoney,OtherDroughtFiledNumber,OtherDroughtFiledPrice,";
            sql_land += "OtherDroughtFiledMoney,OtherNumber,OtherPrice,OtherMoney)";
            sql_land += "values('" + txtUserName.Text + "','" + txtCardID.Text + "','" + txtBankCard.Text + "','" + txtAreaName.Text + "','"+txtWaterFiledNumber.Text+"',";
            sql_land += "'"+txtWaterFiledPrice.Text+"','"+txtWaterFiledMoney.Text+"','"+txtDroughtFiledNumber.Text+"','"+txtDroughtFiledPrice.Text+"','"+txtDroughtFiledMoney.Text+"',";
            sql_land += "'"+txtReservoirNumber.Text+"','"+txtReservoirPrice.Text+"','"+txtReservoirMoney.Text+"','"+txtIncomeNumber.Text+"','"+txtIncomePrice.Text+"',";
            sql_land += "'"+txtIncomeMoney.Text+"','"+txtOtherForestNumber.Text+"','"+txtOtherForestPrice.Text+"','"+txtOtherForestMoney.Text+"','"+txtHomeSteadNumber.Text+"',";
            sql_land += "'"+txtHomeSteadPrice.Text+"','"+txtHomeSteadMoney.Text+"','"+txtWasteHillNumber.Text+"','"+txtWasteHillPrice.Text+"','"+txtWasteHillMoney.Text+"',";
            sql_land += "'"+txtOtherWaterFiledNumber.Text+"','"+txtOtherWaterFiledPrice.Text+"','"+txtOtherWaterFiledMoney.Text+"','"+txtOtherDroughtFiledNumber.Text+"','"+txtOtherDroughtFiledPrice.Text+"',";
            sql_land += "'"+txtOtherDroughtFiledMoney.Text+"','"+txtOtherNumber.Text+"','"+txtOtherPrice.Text+"','"+txtOtherMoney.Text+"')";

            count += DBAccess.ExecTransSql(sql_land);
            if (count>0)
            {
                Alert.ShowInTop("录入成功");
            }
            else
            {
                Alert.ShowInTop("录入失败");
            }
            #endregion
            #region 征地情况

            #endregion
            #region 迁坟情况

            #endregion
        }
        #region 计算金额
        protected void txtFramePrice_TextChanged(object sender, EventArgs e)
        {
            txtFrameMoney.Text =Convert.ToString(Convert.ToDouble(txtFrameNumber.Text) * Convert.ToDouble(txtFramePrice.Text));
        }

        protected void txtBrickPrice_TextChanged(object sender, EventArgs e)
        {
            txtBrickMoney.Text = Convert.ToString(Convert.ToDouble(txtBrickNumber.Text)*Convert.ToDouble(txtBrickPrice.Text));
        }

        protected void txtBrickWoodPrice_TextChanged(object sender, EventArgs e)
        {
            txtBrickWoodMoney.Text = Convert.ToString(Convert.ToDouble(txtBrickWoodNumber.Text) * Convert.ToDouble(txtBrickWoodPrice.Text));
        }

        protected void txtEarthWoodPrice_TextChanged(object sender, EventArgs e)
        {
            txtEarthWoodMoney.Text = Convert.ToString(Convert.ToDouble(txtEarthWoodNumber.Text) * Convert.ToDouble(txtEarthWoodPrice.Text));
        }

        protected void txtAffiliatedPrice_TextChanged(object sender, EventArgs e)
        {
            txtAffiliatedMoney.Text = Convert.ToString(Convert.ToDouble(txtAffiliatedNumber.Text)*Convert.ToDouble(txtAffiliatedPrice.Text));
        }

        protected void txtDecorationPrice_TextChanged(object sender, EventArgs e)
        {
            txtDecorationMoney.Text = Convert.ToString(Convert.ToDouble(txtDecorationNumber.Text)*Convert.ToDouble(txtDecorationPrice.Text));
        }

        protected void txtOverPrice_TextChanged(object sender, EventArgs e)
        {
            txtOverMoney.Text = Convert.ToString(Convert.ToDouble(txtOverPriceNumber.Text)*Convert.ToDouble(txtOverPrice.Text));
        }

        protected void txtPressureWellPrice_TextChanged(object sender, EventArgs e)
        {
            txtPressureWellMoney.Text = Convert.ToString(Convert.ToDouble(txtPressureWellNumber.Text)*Convert.ToDouble(txtPressureWellPrice.Text));
        }

        protected void txtPublicWellPrice_TextChanged(object sender, EventArgs e)
        {
            txtPublicWellMoney.Text = Convert.ToString(Convert.ToDouble(txtPublicWellNumber.Text)*Convert.ToDouble(txtPublicWellPrice.Text));
        }

        protected void txtGardenPoolPrice_TextChanged(object sender, EventArgs e)
        {
            txtGardenPoolMoney.Text = Convert.ToString(Convert.ToDouble(txtGardenPoolNumber.Text)*Convert.ToDouble(txtGardenPoolPrice.Text));
        }

        protected void txtOrangeResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOrangeResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOrangeResultNumber.Text)*Convert.ToDouble(txtOrangeResultPrice.Text));
        }

        protected void txtOrangeNoResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOrangeNoResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOrangeNoResultNumber.Text)*Convert.ToDouble(txtOrangeNoResultPrice.Text));
        }

        protected void txtOrangeThatResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOrangeThatResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOrangeThatResultNumber.Text)*Convert.ToDouble(txtOrangeThatResultPrice.Text));
        }

        protected void txtOtherResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherResultNumber.Text)*Convert.ToDouble(txtOtherResultPrice.Text));
        }

        protected void txtOtherNoResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherNoResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherNoResultNumber.Text)*Convert.ToDouble(txtOtherNoResultPrice.Text));
        }

        protected void txtOtherThatResultPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherThatResultMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherThatResultNumber.Text)*Convert.ToDouble(txtOtherThatResultPrice.Text));
        }

        protected void txtBleacheryPrice_TextChanged(object sender, EventArgs e)
        {
            txtBleacheryMoney.Text = Convert.ToString(Convert.ToDouble(txtBleacheryNumber.Text)*Convert.ToDouble(txtBleacheryPrice.Text));
        }

        protected void txtStonePrice_TextChanged(object sender, EventArgs e)
        {
            txtStoneMoney.Text = Convert.ToString(Convert.ToDouble(txtStoneNumber.Text)*Convert.ToDouble(txtStonePrice.Text));
        }

        protected void txtBrickFencePrice_TextChanged(object sender, EventArgs e)
        {
            txtBrickFenceMoney.Text = Convert.ToString(Convert.ToDouble(txtBrickFenceNumber.Text)*Convert.ToDouble(txtBrickFencePrice.Text));
        }

        protected void txtOtherWaterFiledPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherWaterFiledMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherWaterFiledNumber.Text) * Convert.ToDouble(txtOtherWaterFiledPrice.Text));
        }

        protected void txtOtherDroughtFiledPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherDroughtFiledMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherDroughtFiledNumber.Text)*Convert.ToDouble(txtOtherDroughtFiledPrice.Text));
        }

        protected void txtOtherPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherNumber.Text)*Convert.ToDouble(txtOtherPrice.Text));
        }

        protected void txtGravePrice_TextChanged(object sender, EventArgs e)
        {
            txtGraveMoney.Text = Convert.ToString(Convert.ToDouble(txtGraveNumber.Text)*Convert.ToDouble(txtGravePrice.Text));
        }

        protected void txtOtherForestPrice_TextChanged(object sender, EventArgs e)
        {
            txtOtherForestMoney.Text = Convert.ToString(Convert.ToDouble(txtOtherForestNumber.Text)*Convert.ToDouble(txtOtherForestPrice.Text));
        }

        protected void txtIncomePrice_TextChanged(object sender, EventArgs e)
        {
            txtIncomeMoney.Text = Convert.ToString(Convert.ToDouble(txtIncomeNumber.Text)*Convert.ToDouble(txtIncomePrice.Text));
        }

        protected void txtWasteHillPrice_TextChanged(object sender, EventArgs e)
        {
            txtWasteHillMoney.Text = Convert.ToString(Convert.ToDouble(txtWasteHillNumber.Text)*Convert.ToDouble(txtWasteHillPrice.Text));
        }

        protected void txtHomeSteadPrice_TextChanged(object sender, EventArgs e)
        {
            txtHomeSteadMoney.Text = Convert.ToString(Convert.ToDouble(txtHomeSteadNumber.Text)*Convert.ToDouble(txtHomeSteadPrice.Text));
        }

        protected void txtReservoirPrice_TextChanged(object sender, EventArgs e)
        {
            txtReservoirMoney.Text = Convert.ToString(Convert.ToDouble(txtReservoirNumber.Text)*Convert.ToDouble(txtReservoirPrice.Text));
        }

        protected void txtDroughtFiledPrice_TextChanged(object sender, EventArgs e)
        {
            txtDroughtFiledMoney.Text = Convert.ToString(Convert.ToDouble(txtDroughtFiledNumber.Text)*Convert.ToDouble(txtDroughtFiledPrice.Text));
        }

        protected void txtWaterFiledPrice_TextChanged(object sender, EventArgs e)
        {
            txtWaterFiledMoney.Text = Convert.ToString(Convert.ToDouble(txtWaterFiledNumber.Text)*Convert.ToDouble(txtWaterFiledPrice.Text));
        }
        #endregion

        private void GetAllInfo(ref IList<SqlParameter> Params)
        {
            Params.Add(new SqlParameter("@UserName", txtUserName.Text));
            Params.Add(new SqlParameter("@Cardid",txtCardID.Text));
            Params.Add(new SqlParameter("@AreaName",txtAreaName.Text));
            Params.Add(new SqlParameter("@BankCard",txtBankCard.Text));
            Params.Add(new SqlParameter("@FrameNumber",txtFrameNumber.Text));
            Params.Add(new SqlParameter("@FramePrice", txtFramePrice.Text));
            Params.Add(new SqlParameter("@FrameMoney", txtFrameMoney.Text));
            Params.Add(new SqlParameter("@BrickNumber", txtBrickNumber.Text));
            Params.Add(new SqlParameter("@BrickPrice", txtBrickPrice.Text));
            Params.Add(new SqlParameter("@BrickMoney", txtBrickMoney.Text));
            Params.Add(new SqlParameter("@BrickWoodNumber", txtBrickWoodNumber.Text));

            Params.Add(new SqlParameter("@BrickWoodPrice", txtBrickWoodPrice.Text));
            Params.Add(new SqlParameter("@BrickWoodMoney", txtBrickWoodMoney.Text));
            Params.Add(new SqlParameter("@EarthWoodNumber", txtEarthWoodNumber.Text));
            Params.Add(new SqlParameter("@EarthWoodPrice", txtEarthWoodPrice.Text));
            Params.Add(new SqlParameter("@EarthWoodMoney", txtEarthWoodMoney.Text));
            Params.Add(new SqlParameter("@AffiliatedNumber", txtAffiliatedNumber.Text));
            Params.Add(new SqlParameter("@AffiliatedPrice", txtAffiliatedPrice.Text));
            Params.Add(new SqlParameter("@AffiliatedMoney", txtAffiliatedMoney.Text));
            Params.Add(new SqlParameter("@DecorationNumber", txtDecorationNumber.Text));
            Params.Add(new SqlParameter("@DecorationPrice", txtDecorationPrice.Text));

            Params.Add(new SqlParameter("@DecorationMoney", txtDecorationMoney.Text));
            Params.Add(new SqlParameter("@OverPriceNumber", txtOverPriceNumber.Text));
            Params.Add(new SqlParameter("@OverPrice", txtOverPrice.Text));
            Params.Add(new SqlParameter("@OverMoney", txtOverMoney.Text));
            Params.Add(new SqlParameter("@PressureWellNumber", txtPressureWellNumber.Text));
            Params.Add(new SqlParameter("@PressureWellPrice", txtPressureWellPrice.Text));
            Params.Add(new SqlParameter("@PressureWellMoney", txtPressureWellMoney.Text));
            Params.Add(new SqlParameter("@PublicWellNumber", txtPublicWellNumber.Text));
            Params.Add(new SqlParameter("@PublicWellPrice", txtPublicWellPrice.Text));
            Params.Add(new SqlParameter("@PublicWellMoney", txtPublicWellMoney.Text));

            Params.Add(new SqlParameter("@GardenPoolNumber", txtGardenPoolNumber.Text));
            Params.Add(new SqlParameter("@GardenPoolPrice", txtGardenPoolPrice.Text));
            Params.Add(new SqlParameter("@GardenPoolMoney", txtGardenPoolMoney.Text));
            Params.Add(new SqlParameter("@OrangeResultNumber", txtOrangeResultNumber.Text));
            Params.Add(new SqlParameter("@OrangeResultPrice", txtOrangeResultPrice.Text));
            Params.Add(new SqlParameter("@OrangeResultMoney", txtOrangeResultMoney.Text));
            Params.Add(new SqlParameter("@OrangeNoResultNumber", txtOrangeNoResultNumber.Text));
            Params.Add(new SqlParameter("@OrangeNoResultPrice", txtOrangeNoResultPrice.Text));
            Params.Add(new SqlParameter("@OrangeNoResultMoney", txtOrangeNoResultMoney.Text));
            Params.Add(new SqlParameter("@OrangeThatResultNumber", txtOrangeThatResultNumber.Text));

            Params.Add(new SqlParameter("@OrangeThatResultPrice", txtOrangeThatResultPrice.Text));
            Params.Add(new SqlParameter("@OrangeThatResultMoney", txtOrangeThatResultMoney.Text));
            Params.Add(new SqlParameter("@OtherResultNumber", txtOtherResultNumber.Text));
            Params.Add(new SqlParameter("@OtherResultPrice", txtOtherResultPrice.Text));
            Params.Add(new SqlParameter("@OtherResultMoney", txtOtherResultMoney.Text));
            Params.Add(new SqlParameter("@OtherNoResultNumber", txtOtherNoResultNumber.Text));
            Params.Add(new SqlParameter("@OtherNoResultPrice", txtOtherNoResultPrice.Text));
            Params.Add(new SqlParameter("@OtherNoResultMoney", txtOtherNoResultMoney.Text));
            Params.Add(new SqlParameter("@OtherThatResultNumber", txtOtherThatResultNumber.Text));
            Params.Add(new SqlParameter("@OtherThatResultPrice", txtOtherThatResultPrice.Text));

            Params.Add(new SqlParameter("@OtherThatResultMoney", txtOtherThatResultMoney.Text));
            Params.Add(new SqlParameter("@BleacheryNumber", txtBleacheryNumber.Text));
            Params.Add(new SqlParameter("@BleacheryPrice", txtBleacheryPrice.Text));
            Params.Add(new SqlParameter("@BleacheryMoney", txtBleacheryMoney.Text));
            Params.Add(new SqlParameter("@StoneNumber", txtStoneNumber.Text));
            Params.Add(new SqlParameter("@StonePrice", txtStonePrice.Text));
            Params.Add(new SqlParameter("@StoneMoney", txtStoneMoney.Text));
            Params.Add(new SqlParameter("@BrickFenceNumber", txtBrickFenceNumber.Text));
            Params.Add(new SqlParameter("@BrickFencePrice", txtBrickFencePrice.Text));
            Params.Add(new SqlParameter("@BrickFenceMoney", txtBrickFenceMoney.Text));

            Params.Add(new SqlParameter("@OtherWaterFiledNumber", txtOtherWaterFiledNumber.Text));
            Params.Add(new SqlParameter("@OtherWaterFiledPrice", txtOtherWaterFiledPrice.Text));
            Params.Add(new SqlParameter("@OtherWaterFiledMoney", txtOtherWaterFiledMoney.Text));
            Params.Add(new SqlParameter("@OtherDroughtFiledNumber", txtDroughtFiledNumber.Text));
            Params.Add(new SqlParameter("@OtherDroughtFiledPrice", txtDroughtFiledPrice.Text));
            Params.Add(new SqlParameter("@OtherDroughtFiledMoney", txtDroughtFiledMoney.Text));
            Params.Add(new SqlParameter("@OtherNumber", txtOtherNumber.Text));
            Params.Add(new SqlParameter("@OtherPrice", txtOtherPrice.Text));
            Params.Add(new SqlParameter("@OtherMoney", txtOtherMoney.Text));
            Params.Add(new SqlParameter("@WaterFiledNumber", txtWaterFiledNumber.Text));

            Params.Add(new SqlParameter("@WaterFiledPrice", txtWaterFiledPrice.Text));
            Params.Add(new SqlParameter("@WaterFiledMoney", txtWaterFiledMoney.Text));
            Params.Add(new SqlParameter("@DroughtFiledNumber", txtDroughtFiledNumber.Text));
            Params.Add(new SqlParameter("@DroughtFiledPrice", txtDroughtFiledPrice.Text));
            Params.Add(new SqlParameter("@DroughtFiledMoney", txtDroughtFiledMoney.Text));
            Params.Add(new SqlParameter("@ReservoirNumber", txtReservoirNumber.Text));
            Params.Add(new SqlParameter("@ReservoirPrice", txtReservoirPrice.Text));
            Params.Add(new SqlParameter("@ReservoirMoney", txtReservoirMoney.Text));
            Params.Add(new SqlParameter("@HomeSteadNumber", txtHomeSteadNumber.Text));
            Params.Add(new SqlParameter("@HomeSteadPrice", txtHomeSteadPrice.Text));

            Params.Add(new SqlParameter("@HomeSteadMoney", txtHomeSteadMoney.Text));
            Params.Add(new SqlParameter("@WasteHillNumber", txtWasteHillNumber.Text));
            Params.Add(new SqlParameter("@WasteHillPrice", txtWasteHillPrice.Text));
            Params.Add(new SqlParameter("@IncomeNumber", txtIncomeNumber.Text));
            Params.Add(new SqlParameter("@IncomePrice", txtIncomePrice.Text));
            Params.Add(new SqlParameter("@IncomeMoney", txtIncomeMoney.Text));
            Params.Add(new SqlParameter("@OtherForestNumber", txtOtherForestNumber.Text));
            Params.Add(new SqlParameter("@OtherForestPrice", txtOtherForestPrice.Text));
            Params.Add(new SqlParameter("@OtherForestMoney", txtOtherForestMoney.Text));

            Params.Add(new SqlParameter("@GraveNumber", txtGraveNumber.Text));
            Params.Add(new SqlParameter("@GravePrice", txtGravePrice.Text));
            Params.Add(new SqlParameter("@GraveMoney", txtGraveMoney.Text));
        }
    }
}
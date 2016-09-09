<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolecateesInfo_List.aspx.cs" Inherits="ProjectDemolition.Relocatees.RolecateesInfo_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>拆迁补偿汇总</title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <f:Panel ID="Panel1" runat="server" Width="100%" ShowBorder="false" ShowHeader="false" Layout="Region">
    <Items>
        <f:Panel ID="Panel2" runat="server" RegionPosition="top" BodyPadding="0px" ShowBorder="true" ShowHeader="true" Title="搜索条件">
            <Items>
                <f:Form ID="sform1" runat="server" ShowHeader="false" ShowBorder="true" BodyPadding="5px">
                            <Rows>
                                <f:FormRow>
                                    <Items>
                                        <f:DropDownList ID="ddlBusType" runat="server" Label="统计批次" LabelWidth="100px">
                                            
                                        </f:DropDownList>
                                        <f:DropDownList ID="ddlStore" runat="server" Label="项目区域" LabelWidth="100px"></f:DropDownList>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow>
                                    <Items>
                                    </Items>
                                </f:FormRow>
                                <%--<f:FormRow>
                                    <Items>
                                        <f:DropDownList ID="ddlInventory" runat="server" Label="存货" LabelWidth="100px" AutoPostBack="true"
                                            CompareType="String" EnableEdit="true">
                                        </f:DropDownList>
                                        <f:DropDownList ID="ddlDep" runat="server" Label="生产车间" LabelWidth="100px"></f:DropDownList>
                                    </Items>
                                </f:FormRow>--%>
                                <f:FormRow>
                                    <Items>
                                    </Items>
                                </f:FormRow>
                            </Rows>
                        </f:Form>
            </Items>
        </f:Panel>
        <f:Grid ID="Grid1" Title="拆迁信息汇总"   Width="100%" PageSize="1" ShowBorder="true" ShowHeader="true"
            AllowPaging="true" runat="server" EnableCheckBoxSelect="true"
            DataKeyNames="Id,UserName" IsDatabasePaging="true"   OnPageIndexChange="Grid1_PageIndexChange"
            AllowSorting="true" SortField="Id" SortDirection="ASC"  EnableRowSelectEvent="true"  OnRowSelect="Grid1_RowSelect"  OnSort="Grid1_Sort"
             OnRowCommand="Grid1_RowCommand" ClearSelectedRowsAfterPaging="false" >
            <Toolbars>
                <f:Toolbar ID="toolgrid" runat="server">
                    <Items>
                        <f:ToolbarSeparator ID="ToolbarSeparator4" runat="server"></f:ToolbarSeparator>
                        <f:Button ID="btnImport" runat="server" Text="拆迁汇总" Icon="ApplicationAdd" OnClick="btnImport_Click" >
                        </f:Button>
                        <f:ToolbarSeparator ID="ToolbarSeparator5" runat="server"></f:ToolbarSeparator>
                        <f:Button ID="btnSave" runat="server" Text="征地汇总" OnClick="btnSave_Click" Icon="ApplicationAdd" >
                        </f:Button>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server"></f:ToolbarSeparator>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Columns>
                <f:RowNumberField></f:RowNumberField>
                <f:BoundField ID="SurveyBatch" DataField="SurveyBatch" HeaderText="拆迁批次"></f:BoundField>
                <f:BoundField ID="LandBatch" DataField="LandBatch" HeaderText="征地批次"></f:BoundField>
                <f:BoundField ID="UserName" DataField="UserName" HeaderText="拆迁户姓名"></f:BoundField>
                <f:GroupField HeaderText="房屋类别" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="HouseArea" DataField="HouseArea" HeaderText="房屋面积"></f:BoundField>
                        <f:BoundField ID="HouseMoney" DataField="HouseMoney" HeaderText="房屋金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="装修补偿" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="DecorationArea" DataField="DecorationArea" HeaderText="装修面积"></f:BoundField>
                        <f:BoundField ID="DecorationMoney" DataField="DecorationMoney" HeaderText="装修金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="家用自来水" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="RunWaterNumber" DataField="RunWaterNumber" HeaderText="自来水数量"></f:BoundField>
                        <f:BoundField ID="RunWaterMoney" DataField="RunWaterMoney" HeaderText="自来水金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="村庄公用水井" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="PublicWellNumber" DataField="PublicWellNumber" HeaderText="公用水井数量"></f:BoundField>
                        <f:BoundField ID="PublicWellMoney" DataField="PublicWellMoney" HeaderText="公用水井金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="砖围墙" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="BrickWallArea" DataField="BrickWallArea" HeaderText="砖围墙面积"></f:BoundField>
                        <f:BoundField ID="BrickWallMoney" DataField="BrickWallMoney" HeaderText="砖围墙金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="晒场" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="SunPlaceArea" DataField="SunPlaceArea" HeaderText="晒场面积"></f:BoundField>
                        <f:BoundField ID="SunPlaceMoney" DataField="SunPlaceMoney" HeaderText="晒场金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="果树" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="FruiterNumber" DataField="FruiterNumber" HeaderText="果树数量"></f:BoundField>
                        <f:BoundField ID="FruiterMoney" DataField="FruiterMoney" HeaderText="果树金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="过渡费" TextAlign="Center">
                    <Columns>
                       <f:BoundField ID="OverNumber" DataField="OverNumber" HeaderText="过渡费数量"></f:BoundField>
                       <f:BoundField ID="OverMoney" DataField="OverMoney" HeaderText="过渡费金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="果园水池" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="GardenPoolNumber" DataField="GardenPoolNumber" HeaderText="果园水池数量"></f:BoundField>
                        <f:BoundField ID="GardenPoolMoney" DataField="GardenPoolMoney" HeaderText="果园水池金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="坟墓" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="GraveNumber" DataField="GraveNumber" HeaderText="坟墓数量"></f:BoundField>
                        <f:BoundField ID="GraveMoney" DataField="GraveMoney" HeaderText="坟墓金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="水田,油茶林,菜地,精养鱼塘" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="WaterFiledArea" DataField="WaterFiledArea" HeaderText="水田面积"></f:BoundField>
                        <f:BoundField ID="WaterFiledMoney" DataField="WaterFiledMoney" HeaderText="水田金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="旱地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="DryLandArea" DataField="DryLandArea" HeaderText="旱地面积"></f:BoundField>
                        <f:BoundField ID="DryLandMoney" DataField="DryLandMoney" HeaderText="旱地金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="水库" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="ReservoirArea" DataField="ReservoirArea" HeaderText="水库面积"></f:BoundField>
                        <f:BoundField ID="ReservoirMoney" DataField="ReservoirMoney" HeaderText="水库金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="宅基地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="AbodeBaseArea" DataField="AbodeBaseArea" HeaderText="宅基地面积"></f:BoundField>
                        <f:BoundField ID="AbodeBaseMoney" DataField="AbodeBaseMoney" HeaderText="宅基地金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="林地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="WoodLandArea" DataField="WoodLandArea" HeaderText="林地面积"></f:BoundField>
                        <f:BoundField ID="WoodLandMoney" DataField="WoodLandMoney" HeaderText="林地金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="荒山" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="WasteLandArea" DataField="WasteLandArea" HeaderText="荒山面积"></f:BoundField>
                        <f:BoundField ID="WasteLandMoney" DataField="WasteLandMoney" HeaderText="荒山金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="果园" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="GardenWaterFiledArea" DataField="GardenWaterFiledArea" HeaderText="果园水田面积"></f:BoundField>
                        <f:BoundField ID="GardenWaterFiledMoney" DataField="GardenWaterFiledMoney" HeaderText="果园水田金额"></f:BoundField>
                        <f:BoundField ID="GardenDryLandArea" DataField="GardenDryLandArea" HeaderText="果园旱地面积"></f:BoundField>
                        <f:BoundField ID="GardenDryLandMoney" DataField="GardenDryLandMoney" HeaderText="果园旱地金额"></f:BoundField>
                        <f:BoundField ID="GardenOtherArea" DataField="GardenOtherArea" HeaderText="果园其它面积"></f:BoundField>
                        <f:BoundField ID="GardenOtherMoney" DataField="GardenOtherMoney" HeaderText="果园其它金额"></f:BoundField>
                    </Columns>
                </f:GroupField>     
                <f:BoundField ID="TotalMoney" DataField="TotalMoney" HeaderText="合计金额"></f:BoundField>
                <f:BoundField ID="BankCard" DataField="BankCard" HeaderText="卡号"></f:BoundField>
                <f:BoundField ID="CardID" DataField="CardID" HeaderText="身份证号"></f:BoundField>
            </Columns>
        </f:Grid>
        <f:HiddenField ID="hfSelectedIDS" runat="server">
        </f:HiddenField>
    </Items>
    </f:Panel>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolecateesInfo_LandCompen.aspx.cs" Inherits="ProjectDemolition.Relocatees.RolecateesInfo_LandCompen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <f:Panel ID="Panel1" runat="server" Width="100%" ShowBorder="false" ShowHeader="false" Layout="Region">
    <Items>
        <f:Grid ID="Grid1" Title="征地信息汇总"   Width="100%" PageSize="5" ShowBorder="true" ShowHeader="true"
            AllowPaging="true" runat="server" EnableCheckBoxSelect="true"
            DataKeyNames="Id,UserName" IsDatabasePaging="true"   OnPageIndexChange="Grid1_PageIndexChange"
            AllowSorting="true" SortField="Id" SortDirection="ASC" OnSort="Grid1_Sort">
            <Toolbars>
                <f:Toolbar ID="toolgrid" runat="server">
                    <Items>
                        <f:Button ID="Button1" runat="server" Text="汇总批次" Icon="Add" EnablePostBack="false" ></f:Button>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server"></f:ToolbarSeparator>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Columns>
                <f:RowNumberField></f:RowNumberField>
                <f:BoundField ID="Id" DataField="Id" HeaderText="批次"></f:BoundField>
                <f:BoundField ID="UserName" DataField="UserName" HeaderText="被征地户"></f:BoundField>
                <f:GroupField HeaderText="水田,油茶林,菜地,精养鱼塘" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="WaterFiledArea" DataField="WaterFiledArea" HeaderText="面积"></f:BoundField>
                        <f:BoundField ID="WaterFiledMoney" DataField="WaterFiledMoney" HeaderText="金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="旱地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="DroughtFiledArea" DataField="DroughtFiledArea" HeaderText="面积"></f:BoundField>
                        <f:BoundField ID="DroughtFiledMoney" DataField="DroughtFiledMoney" HeaderText="金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="水库(塘)" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="ReservoirArea" DataField="ReservoirArea" HeaderText="面积"></f:BoundField>
                        <f:BoundField ID="ReservoirMoney" DataField="ReservoirMoney" HeaderText="金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="宅基地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="HomeSteadArea" DataField="HomeSteadArea" HeaderText="面积"></f:BoundField>
                        <f:BoundField ID="HomeSteadMoney" DataField="HomeSteadMoney" HeaderText="金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="林地" TextAlign="Center">
                    <Columns>
                        <f:GroupField HeaderText="经济林" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="IncomeArea" DataField="IncomeArea" HeaderText="面积"></f:BoundField>
                                <f:BoundField ID="IncomeMoney" DataField="IncomeMoney" HeaderText="金额"></f:BoundField>
                            </Columns>
                        </f:GroupField>
                        <f:GroupField HeaderText="其他林" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="OtherForestArea" DataField="OtherForestArea" HeaderText="面积"></f:BoundField>
                                <f:BoundField ID="OtherForestMoney" DataField="OtherForestMoney" HeaderText="金额"></f:BoundField>
                            </Columns>
                        </f:GroupField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="荒山,荒地" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="WasteHillArea" DataField="BleacheryArea" HeaderText="面积"></f:BoundField>
                        <f:BoundField ID="WasteHillMoney" DataField="BleacheryMoney" HeaderText="金额"></f:BoundField>                                   
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="果园" TextAlign="Center">
                    <Columns>
                        <f:GroupField HeaderText="水田" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="OtherWaterFiledArea" DataField="OtherWaterFiledArea" HeaderText="数量"></f:BoundField>
                                <f:BoundField ID="OtherWaterFiledMoney" DataField="OtherWaterFiledMoney" HeaderText="金额"></f:BoundField>                 
                            </Columns>
                        </f:GroupField>
                        <f:GroupField HeaderText="旱地" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="OtherDroughtFiledArea" DataField="OtherDroughtFiledArea" HeaderText="数量"></f:BoundField>
                                <f:BoundField ID="OtherDroughtFiledMoney" DataField="OtherDroughtFiledMoney" HeaderText="金额"></f:BoundField>  
                            </Columns>
                        </f:GroupField>
                        <f:GroupField HeaderText="其他" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="OtherArea" DataField="OtherArea" HeaderText="数量"></f:BoundField>
                                <f:BoundField ID="OtherMoney" DataField="OtherMoney" HeaderText="金额"></f:BoundField>  
                            </Columns>
                        </f:GroupField>                       
                    </Columns>
                </f:GroupField>               
                <f:BoundField ID="TotalMoney" DataField="TotalMoney" HeaderText="合计金额"></f:BoundField>
                <f:BoundField ID="BankCard" DataField="BankCard" HeaderText="卡号"></f:BoundField>
                <f:BoundField ID="CardID" DataField="CardID" HeaderText="身份证号"></f:BoundField>
            </Columns>
        </f:Grid>
    </Items>
    </f:Panel>
    </form>
</body>
</html>

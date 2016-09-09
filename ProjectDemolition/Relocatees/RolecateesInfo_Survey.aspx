<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolecateesInfo_Survey.aspx.cs" Inherits="ProjectDemolition.Relocatees.RolecateesInfo_Survey" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>拆迁汇总</title>
</head>
<body>
    <form id="form1" runat="server">
    <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
    <f:Panel ID="Panel1" runat="server" Width="100%" ShowBorder="false" ShowHeader="false" Layout="Region">
    <Items>
        <f:Grid ID="Grid1" Title="拆迁信息汇总"   Width="100%" PageSize="5" ShowBorder="true" ShowHeader="true"
            AllowPaging="true" runat="server" EnableCheckBoxSelect="true"
            DataKeyNames="Id,UserName" IsDatabasePaging="true"   OnPageIndexChange="Grid1_PageIndexChange"
            AllowSorting="true" SortField="Id" SortDirection="ASC" OnSort="Grid1_Sort" >
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
                <f:BoundField ID="UserName" DataField="UserName" HeaderText="拆迁户姓名"></f:BoundField>
                <f:GroupField HeaderText="房屋类别" TextAlign="Center">
                    <Columns>
                        <f:GroupField HeaderText="框架" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="FrameArea" DataField="FrameArea" HeaderText="框架面积"></f:BoundField>
                                <f:BoundField ID="FrameMoney" DataField="FrameMoney" HeaderText="框架金额"></f:BoundField>
                            </Columns>                           
                        </f:GroupField>
                        <f:GroupField HeaderText="砖混" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="BrickArea" DataField="BrickArea" HeaderText="砖混面积"></f:BoundField>
                                <f:BoundField ID="BrickMoney" DataField="BrickMoney" HeaderText="砖混金额"></f:BoundField>
                            </Columns>                           
                        </f:GroupField>
                        <f:GroupField HeaderText="砖木" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="BrickWoodArea" DataField="BrickWoodArea" HeaderText="砖木面积"></f:BoundField>
                                <f:BoundField ID="BrickWoodMoney" DataField="BrickWoodMoney" HeaderText="砖木金额"></f:BoundField>
                            </Columns>                           
                        </f:GroupField>
                        <f:GroupField HeaderText="土木" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="EarthWoodArea" DataField="EarthWoodArea" HeaderText="土木面积"></f:BoundField>
                                <f:BoundField ID="EarthWoodMoney" DataField="EarthWoodMoney" HeaderText="土木金额"></f:BoundField>
                            </Columns>                           
                        </f:GroupField>
                        <f:GroupField HeaderText="附属房" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="AffiliatedArea" DataField="AffiliatedArea" HeaderText="附属房面积"></f:BoundField>
                                <f:BoundField ID="AffiliatedMoney" DataField="AffiliatedMoney" HeaderText="附属房金额"></f:BoundField>
                            </Columns>                           
                        </f:GroupField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="装修补偿" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="DecorationArea" DataField="DecorationArea" HeaderText="装修面积"></f:BoundField>
                        <f:BoundField ID="DecorationPrice" DataField="DecorationPrice" HeaderText="单价"></f:BoundField>
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
                        <f:GroupField HeaderText="水泥" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="BleacheryArea" DataField="BleacheryArea" HeaderText="水泥面积"></f:BoundField>
                                <f:BoundField ID="BleacheryMoney" DataField="BleacheryMoney" HeaderText="水泥金额"></f:BoundField>
                            </Columns>
                        </f:GroupField>
                        <f:GroupField HeaderText="三合土" TextAlign="Center">
                            <Columns>
                                <f:BoundField ID="StoneArea" DataField="StoneArea" HeaderText="三合土面积"></f:BoundField>
                                <f:BoundField ID="StoneMoney" DataField="StoneMoney" HeaderText="三合土金额"></f:BoundField>
                            </Columns>
                        </f:GroupField>
                        
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="果树" TextAlign="Center">
                    <Columns>
                        <f:GroupField HeaderText="脐橙类" TextAlign="Center">
                            <Columns>
                                <f:GroupField HeaderText="已挂果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OrangeResultNumber" DataField="OrangeResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OrangeResultMoney" DataField="OrangeResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                                <f:GroupField HeaderText="未挂果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OrangeNoResultNumber" DataField="OrangeNoResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OrangeNoResultMoney" DataField="OrangeNoResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                                <f:GroupField HeaderText="当年果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OrangeThatResultNumber" DataField="OrangeThatResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OrangeThatResultMoney" DataField="OrangeThatResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                            </Columns>
                        </f:GroupField>
                        <f:GroupField HeaderText="其它类" TextAlign="Center">
                            <Columns>
                               <f:GroupField HeaderText="已挂果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OtherResultNumber" DataField="OtherResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OtherResultMoney" DataField="OtherResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                                <f:GroupField HeaderText="未挂果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OtherNoResultNumber" DataField="OtherNoResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OtherNoResultMoney" DataField="OtherNoResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                                <f:GroupField HeaderText="当年果" TextAlign="Center">
                                    <Columns>
                                        <f:BoundField ID="OtherThatResultNumber" DataField="OtherThatResultNumber" HeaderText="数量"></f:BoundField>
                                        <f:BoundField ID="OtherThatResultMoney" DataField="OtherThatResultMoney" HeaderText="金额"></f:BoundField>
                                    </Columns>
                                </f:GroupField>
                            </Columns>
                        </f:GroupField>                       
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
                        <f:BoundField ID="GardenPoolPrice" DataField="GardenPoolPrice" HeaderText="果园水池单价"></f:BoundField>
                        <f:BoundField ID="GardenPoolMoney" DataField="GardenPoolMoney" HeaderText="果园水池金额"></f:BoundField>
                    </Columns>
                </f:GroupField>
                <f:GroupField HeaderText="坟墓" TextAlign="Center">
                    <Columns>
                        <f:BoundField ID="GraveNumber" DataField="GraveNumber" HeaderText="坟墓数量"></f:BoundField>
                        <f:BoundField ID="GraveMoney" DataField="GraveMoney" HeaderText="坟墓金额"></f:BoundField>
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

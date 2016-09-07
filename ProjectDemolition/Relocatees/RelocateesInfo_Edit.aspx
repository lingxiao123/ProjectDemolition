<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RelocateesInfo_Edit.aspx.cs" Inherits="ProjectDemolition.Relocatees.RelocateesInfo_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>拆迁信息录入</title>
    <style></style>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server"></f:PageManager>
        <f:Panel ID="Panel1" runat="server" BodyPadding="5px" ShowHeader="false" Enabled="true" EnableCollapse="false" Expanded="true">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:ToolbarSeparator runat="server">
                        </f:ToolbarSeparator>
                        <f:Button ID="btnSave" runat="server" Text="保存" OnClick="btnSave_Click"  Icon="ApplicationEdit"></f:Button>
                        <f:ToolbarSeparator runat="server">
                        </f:ToolbarSeparator>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Panel ID="PanelMainInfo" runat="server" EnableCollapse="false" Title="户主信息" BodyPadding="0px">
                    <Items>
                        <f:Form ID="Form2" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false">
                            <Rows>
                                <f:FormRow ID="FormRow1" runat="server">
                                    <Items>
                                        <f:TextBox ID="txtUserName" runat="server" Label="所有权人：" Text=""></f:TextBox>
                                        <f:TextBox ID="txtCardID" runat="server" Label="身份证号：" Text=""></f:TextBox>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow2" runat="server">
                                    <Items>
                                        <f:TextBox ID="txtAreaName" runat="server" Label="项目区域：" Text=""></f:TextBox>
                                        <f:TextBox ID="txtBankCard" runat="server" Label="银行卡号：" Text=""></f:TextBox>
                                    </Items>
                                </f:FormRow>
                            </Rows>
                        </f:Form>
                    </Items>
                </f:Panel>
                <%--<f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Height="10px">
                    <hr />
                </f:ContentPanel>--%>
            </Items>
            <Items>
                <f:Panel ID="PanelRelocateInfo" runat="server" Title="拆迁情况" EnableCollapse="True" Expanded="true">
                    <Items>
                        <f:GroupPanel ID="GpanelHouse" runat="server" EnableCollapse="True" Title="房屋">
                            <Items>
                                <f:Form ID="Form3" runat="server" BodyPadding="5px" Title="Form" ShowBorder="false" ShowHeader="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow3" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------框架</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow4" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtFrameNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtFramePrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtFramePrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtFrameMoney" runat="server" Label="总额："  DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow5" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------砖混</b>
                                                    <hr style="width: 150px;" />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow6" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtBrickNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtBrickPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickMoney" runat="server" Label="总额：" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow7" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------砖木</b>
                                                    <hr style="width: 150px;" />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow8" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtBrickWoodNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickWoodPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtBrickWoodPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickWoodMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow9" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------土木</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow10" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtEarthWoodNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtEarthWoodPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtEarthWoodPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtEarthWoodMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow11" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------附属房</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow12" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtAffiliatedNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtAffiliatedPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtAffiliatedPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtAffiliatedMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow13" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------装修加价补偿</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow14" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtDecorationNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtDecorationPrice" runat="server" Label="单价：" AutoPostBack="true"  OnTextChanged="txtDecorationPrice_TextChanged" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtDecorationMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow15" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------搬迁过渡费</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow16" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOverPriceNumber" runat="server" Label="数量：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOverPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOverPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOverMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                    <Items>
                        <f:GroupPanel ID="GroupPanel1" runat="server" EnableCollapse="True" Title="果园水池">
                            <Items>
                                <f:Form ID="Form4" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow17" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------家用自来水或压水井</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow19" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtPressureWellNumber" runat="server" Label="数量：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtPressureWellPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtPressureWellPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtPressureWellMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow18" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------村庄公用水井或水池</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow20" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtPublicWellNumber" runat="server" Label="数量：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtPublicWellPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtPublicWellPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtPublicWellMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow21" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------果园水池</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow22" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtGardenPoolNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtGardenPoolPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtGardenPoolPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtGardenPoolMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>

                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                    <Items>
                        <f:GroupPanel ID="GroupPanel3" runat="server" EnableCollapse="True" Title="果树">
                            <Items>
                                <f:Form ID="Form7" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow31" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------脐橙类已挂果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow32" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOrangeResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOrangeResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow33" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------脐橙类未挂果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow34" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOrangeNoResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeNoResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOrangeNoResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeNoResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow35" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------脐橙类当年果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow36" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOrangeThatResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeThatResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOrangeThatResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOrangeThatResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow37" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------其他果已挂果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow38" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOtherResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow39" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------其他果未挂果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow40" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherNoResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherNoResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOtherNoResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherNoResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow41" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------其他果当年果</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow42" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherThatResultNumber" runat="server" Label="株数：" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherThatResultPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOtherThatResultPrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherThatResultMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                    <Items>
                        <f:GroupPanel ID="GroupPanel2" runat="server" EnableCollapse="True" Title="晒场围墙">
                            <Items>
                                <f:Form ID="Form5" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow23" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------水泥</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow24" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtBleacheryNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBleacheryPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtBleacheryPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBleacheryMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow25" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------三合土</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow26" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtStoneNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtStonePrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtStonePrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtStoneMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow29" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------砖围墙（延米）</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow30" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtBrickFenceNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickFencePrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtBrickFencePrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtBrickFenceMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                </f:Panel>
            </Items>
            <Items>
                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Height="10px">
                </f:ContentPanel>
            </Items>
            <Items>
                <f:Panel ID="PanelLandRequisitionInfo" runat="server" EnableCollapse="True" Expanded="true" Title="征地情况">
                    <Items>
                        <f:GroupPanel ID="GroupPanel4" runat="server" EnableCollapse="True" Title="果园">
                            <Items>
                                <f:Form ID="Form8" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow43" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------水田</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow44" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherWaterFiledNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherWaterFiledPrice" runat="server" Label="单价：" AutoPostBack="true"  OnTextChanged="txtOtherWaterFiledPrice_TextChanged" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherWaterFiledMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow45" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------旱地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow46" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherDroughtFiledNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherDroughtFiledPrice" runat="server" Label="单价：" AutoPostBack="true"  OnTextChanged="txtOtherDroughtFiledPrice_TextChanged" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherDroughtFiledMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow47" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------其他</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow48" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOtherPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                    <Items>
                        <f:GroupPanel ID="GroupPanel5" runat="server" EnableCollapse="True" Title="土地、林地、水塘、宅基地">
                            <Items>
                                <f:Form ID="Form9" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                                    <Rows>
                                        <f:FormRow ID="FormRow49" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------水田、人工高产油茶林、菜地、精养鱼塘</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow50" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtWaterFiledNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtWaterFiledPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtWaterFiledPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtWaterFiledMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow51" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------旱地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow52" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtDroughtFiledNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtDroughtFiledPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtDroughtFiledPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtDroughtFiledMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow53" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------水库（塘）</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow54" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtReservoirNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtReservoirPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtReservoirPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtReservoirMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow55" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------宅基地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow56" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtHomeSteadNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtHomeSteadPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtHomeSteadPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtHomeSteadMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow57" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------荒山、荒地、荒滩、其他土地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow58" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtWasteHillNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtWasteHillPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtWasteHillPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtWasteHillMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow59" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------经济林地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow60" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtIncomeNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtIncomePrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtIncomePrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtIncomeMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow61" runat="server">
                                            <Items>
                                                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                                    <b>----------其他林地</b>
                                                    <hr />
                                                </f:ContentPanel>
                                            </Items>
                                        </f:FormRow>
                                        <f:FormRow ID="FormRow62" runat="server">
                                            <Items>
                                                <f:NumberBox ID="txtOtherForestNumber" runat="server" Label="面积：" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherForestPrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtOtherForestPrice_TextChanged" Text="" DecimalPrecision="4"></f:NumberBox>
                                                <f:NumberBox ID="txtOtherForestMoney" runat="server" Label="总额：" Text="" DecimalPrecision="4"></f:NumberBox>
                                            </Items>
                                        </f:FormRow>
                                    </Rows>
                                </f:Form>
                            </Items>
                        </f:GroupPanel>
                    </Items>
                </f:Panel>
            </Items>
            <Items>
                <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Height="10px">
                </f:ContentPanel>
            </Items>
            <Items>
                <f:Panel ID="PanelGraveInfo" runat="server" Title="迁坟情况" EnableCollapse="True" Expanded="true">
                    <Items>
                        <f:Form ID="Form6" runat="server" BodyPadding="5px" Title="Form" ShowHeader="false" ShowBorder="false">
                            <Rows>
                                <f:FormRow ID="FormRow27" runat="server">
                                    <Items>
                                        <f:ContentPanel runat="server" ShowHeader="false" ShowBorder="false" Width="150px">
                                            <b>----------坟墓</b>
                                            <hr />
                                        </f:ContentPanel>
                                    </Items>
                                </f:FormRow>
                                <f:FormRow ID="FormRow28" runat="server">
                                    <Items>
                                        <f:NumberBox ID="txtGraveNumber" runat="server" Label="数量：" Text="" DecimalPrecision="2"></f:NumberBox>
                                        <f:NumberBox ID="txtGravePrice" runat="server" Label="单价：" AutoPostBack="true" OnTextChanged="txtGravePrice_TextChanged" Text="" DecimalPrecision="2"></f:NumberBox>
                                        <f:NumberBox ID="txtGraveMoney" runat="server" Label="总额：" Text="" DecimalPrecision="2"></f:NumberBox>
                                    </Items>
                                </f:FormRow>
                            </Rows>
                        </f:Form>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>

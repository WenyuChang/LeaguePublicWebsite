<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LatestListNews.aspx.cs" Inherits="Admin_LatestListNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>OrderList</title>
    <link href="inc/style.css" type="text/css" rel="stylesheet">
    <style type="text/css">
       
        .style1
            {
                font-family: "Times New Roman", Times, serif;
                font-size: large;
                font-weight: bold;
                font-style: italic;
                color: #6666FF;
            }
            .style2
            {
                font-family: "Times New Roman", Times, serif;
            }
    </style>
</head>
<body>
    <form id="Form1" method="post" runat="server">
    <table width="99%" height="500" style="border: 1px #619ADF solid; border-left: 0;
        margin-top: 6px; margin-right: 7px; background: #F2F7FD;" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="top">
                <div class="top1">
                    <table width="100%" align="center" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="tl">
                            </td>
                            <td class="tm">
                                <span class="tt">后台管理 &gt;&gt;最新新闻<asp:Label ID="lblTitleInfo" runat="server"></asp:Label></span>
                            </td>
                            <td class="tm2">
                                <span class="tt"><a href="http://www.wangqi.com" target="_blank">
                                    <img src="Images/admin_help.gif" border="0" alt="帮助"></a></span>
                            </td>
                            <td class="tr">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="mframe1">
                    <table width="100%" align="center" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="tl">
                            </td>
                            <td class="tm">
                                <div class="tt">
                                    &nbsp; 最新新闻</div>
                            </td>
                            <td class="tr">
                            </td>
                        </tr>
                    </table>
                    <table width="780" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="ml">
                            </td>
                            <td class="mm" align="left" valign="top">
                                <table width="100%" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td class="ml1">
                                        </td>
                                        <td class="mm1" align="center">
                                  <div>
     <table style="width: 100%" bgcolor="deepskyblue"  visible="true">
	 <tr >
					<td background="picimages/images/titlebg.gif" style="HEIGHT: 31px" colspan="3">&nbsp;<img src="picimages/images/2.gif" border="0">&nbsp;图文列表</td>
				</tr>
            <tr>
              
                <td align="right" bgcolor="#ffffff">
                  输入关键字：<asp:TextBox ID="txtKey" runat="server"  Width="232px"></asp:TextBox>
                </td>
                 <td bgcolor="#ffffff">
                   <asp:DropDownList ID="ddlNewsStyle" runat="server" Width="78px" CausesValidation="True">
                        <asp:ListItem>新闻标题</asp:ListItem>
                        <asp:ListItem>最新日期</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 4px; height: 25px;" bgcolor="#ffffff">
                    <asp:Button ID="btnSearch" CssClass="btn4" runat="server" Height="20px" OnClick="btnSearch_Click"
                        Text="站内搜索" /></td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="#ffffff" align="center">
        <asp:GridView ID="gvNewsList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            CellSpacing="1" Height="1px" PageSize="26" Width="500px" CssClass="txt" OnPageIndexChanging="gvNewsList_PageIndexChanging" OnRowDeleting="gvNewsList_RowDeleting" OnRowDataBound="gvNewsList_RowDataBound">
            <Columns>
                <asp:BoundField DataField="NewsId" HeaderText="ID" />
                <asp:BoundField DataField="NewsName" HeaderText="新闻标题" />
                <asp:BoundField DataField="NewsCatalog" HeaderText="新闻类别" />
                <asp:BoundField DataField="AddDate" HeaderText="发布日期" />
                <asp:HyperLinkField HeaderText="编辑" Text="编辑" DataNavigateUrlFields="NewsId" DataNavigateUrlFormatString="EditLatestNews.aspx?NewsId={0}" Target="right" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
             <tr><td colspan="3" align="right" bgcolor="#ffffff"><asp:Button Text="添加" runat="server" ID="Add" CssClass="btn4" onclick="Add_Click"/></td></tr>
        </table>
        
    
    
    </div>
     </td>
                                        <td class="mr1">
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%" align="center" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td class="bl">
                                        </td>
                                        <td class="bm">
                                            &nbsp;
                                        </td>
                                        <td class="br">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="mr">
                            </td>
                        </tr>
                    </table>
                    <table width="100%" align="center" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="bl">
                            </td>
                            <td class="bm">
                                &nbsp;
                            </td>
                            <td class="br">
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

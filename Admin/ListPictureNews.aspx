<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListPictureNews.aspx.cs" Inherits="Admin_ListPictureNews" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>OrderList</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	
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
<SCRIPT language="javascript">
		function ConfirmDel()
		{
			 if(confirm("确定要删除吗？一旦删除将不能恢复！"))
				return true;
			else
				 return false;
		}
		</SCRIPT>
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
                                <span class="tt">后台管理 &gt;&gt;图片新闻<asp:Label ID="lblTitleInfo" runat="server"></asp:Label></span>
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
                                    &nbsp; 图片新闻</div>
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
         <!--在此处加代码-->
    <table width="100%" border="0" cellpadding="1" cellspacing="1">
				<tr>
					<td background="picimages/images/titlebg.gif" style="HEIGHT: 31px">&nbsp;<img src="picimages/images/2.gif" border="0">&nbsp;图文列表</td>
				</tr>
				<tr>
					<td>
						<table border="0" bgcolor="deepskyblue" cellspacing="1" width="100%">
							<tr>
								<td bgcolor="#ffffff">
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tr align="center">
											<td width="10%"><asp:DropDownList id="type" runat="server" AutoPostBack="True">
													<asp:ListItem Value="all" Selected="True">所有栏目</asp:ListItem>
												</asp:DropDownList></td>
											<td width="28%">标题</td>
											<td width="18%">缩略图</td>
											<td width="20%">时间</td>
											<td width="7%">点击</td>
											
											<td width="10%">操作</td>
										</tr>
									</table>
									<hr size='1' noshade color='deepskyblue'>
									<asp:DataList id="list1" Runat="server" Width="100%">
										<ItemTemplate>
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tr class="altbg2" onmouseover="this.className='altbg1'" onmouseout="this.className='altbg2'">
													<td width="10%"><%# DataBinder.Eval(Container.DataItem,"c_name") %></td>
													<td width="28%"><%# DataBinder.Eval(Container.DataItem,"p_title") %></td>
													<td width="18%"><a target=_blank href='upload/<%# DataBinder.Eval(Container.DataItem,"p_sp") %>'><img title="点击查看原大图" border=0 width=100 height=60 src='upload/<%# DataBinder.Eval(Container.DataItem,"p_mp") %>'></a></td>
													<td width="20%"><%# DataBinder.Eval(Container.DataItem,"p_datetime") %></td>
													<td width="7%"><%# DataBinder.Eval(Container.DataItem,"p_dj") %></td>
													
													<td width="10%"><a href='del.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id") %>&cid=pic' onclick="return ConfirmDel();"><asp:Label runat="server" Text="删除" /></a>
														<a href='EditPictureNews.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id") %>'>编辑</a></td>
												</tr>
											</table>
										</ItemTemplate>
									</asp:DataList><hr size='1' noshade color='deepskyblue'>
									<table border="0" cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td width="40%">
											<!--	<webdiyer:AspNetPager id="pager1" runat="server" PageSize="8"></webdiyer:AspNetPager>-->
											
											</td>
											<td width="40%">
												<asp:Label id="Label1" runat="server">关健字：</asp:Label>
												<asp:TextBox id="search" runat="server"></asp:TextBox>
												<asp:Button id="Button2" runat="server" Text=" 搜 索 " CssClass="btn4" onclick="Button2_Click"></asp:Button></td>
											<td width="20%"><asp:Button id="Button1" CssClass="btn4" runat="server" Text=" 添加新图文 " onclick="Button1_Click"></asp:Button></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
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

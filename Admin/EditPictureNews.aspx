<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPictureNews.aspx.cs" Inherits="Admin_EditPictureNews" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>编辑图片新闻</title>
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
                                        
                                  <!--      从这里开始写-->
                                  <table width="100%" border="0" cellpadding="1" cellspacing="1">
				<tr>
					<td background="images/titlebg.gif" style="HEIGHT: 31px">&nbsp;<img src="picimages/images/2.gif" border="0">&nbsp;编辑图文信息</td>
				</tr>
				<tr>
					<td>
						<table border="0" bgcolor="#eaeaea" cellspacing="1">
							<tr>
								<td bgcolor="#ffffff">
									<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="500" border="0">
										<TR>
											<TD style="HEIGHT: 61px">
												<asp:Label id="Label1" runat="server">图片标题：</asp:Label><br>
												<asp:TextBox id="p_title" runat="server" Width="496px" MaxLength="100"></asp:TextBox>
												<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="请写入图片标题。" ControlToValidate="p_title"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 54px">
												<asp:Image id="p_sp" runat="server"></asp:Image></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 48px">
												<asp:Label id="Label2" runat="server">图片格式：jpg,gif,png</asp:Label></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 52px">
												<asp:Label id="Label4" runat="server">上传新图片：</asp:Label><br>
												<INPUT id="image" style="WIDTH: 496px; HEIGHT: 22px" type="file" size="63" name="File1"
													runat="server"></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 206px">
												<P>
													<asp:Label id="Label5" runat="server">图片简介：</asp:Label><br>
													<ftb:FreeTextBox id="p_content" runat="server" ButtonSet="Office2000"></ftb:FreeTextBox>
													<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="请输入图片小简介。" ControlToValidate="p_content"></asp:RequiredFieldValidator></P>
											</TD>
										</TR>
										
										<TR>
											<TD>
												<asp:Button id="Button1" runat="server" Text=" 编 辑 " onclick="Button1_Click"></asp:Button><INPUT type="button" value=" 取 消 " onclick="javascript:history.go(-1);"></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
                                  
                                        
                                        
                                        
                                        
                                   <!--结束-->
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

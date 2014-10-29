<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditLatestNews.aspx.cs" Inherits="Admin_EditLatestNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>编辑新闻信息</title>
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
                                   <table class="txt" style="width: 483px; height: 303px">
            <tr>
                <td align="center" class="title" colspan="3">
                    <asp:Label ID="labTitle" runat="server" Text="" Width="251px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 1585px">
                    新闻类别：</td>
                <td style="width: 614px">
                    <asp:DropDownList ID="ddlNewsType" runat="server" Width="116px" 
                        AutoPostBack="True" CssClass="css" DataSourceID="SqlDataSource1" 
                        DataTextField="NewsCatalog" DataValueField="NewsCatalog">
                    </asp:DropDownList>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [NewsCatalog] FROM [LatestNews]"></asp:SqlDataSource>
                   
                   </td>
                <td style="width: 85px">
                </td>
            </tr>
            <tr>
                <td style="width: 1585px">
                    新闻标题：</td>
                <td style="width: 614px">
                    <asp:TextBox ID="txtNewsTitle" runat="server" CssClass="txt" MaxLength="15" Width="200px"></asp:TextBox>(控制在15个字符以内)</td>
                <td style="width: 85px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewsTitle"
                        ErrorMessage="**"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 1585px">
                    新闻内容：</td>
                <td style="width: 614px">
                    <asp:TextBox ID="txtNewsContent" runat="server" Height="211px" TextMode="MultiLine" Width="380px"></asp:TextBox></td>
                <td style="width: 85px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewsContent"
                        ErrorMessage="**"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 1585px">
                </td>
                <td align="center" style="width: 614px">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保　存" Width="66px" />
                    <asp:Button ID="btnReset" runat="server" CausesValidation="False" OnClick="btnReset_Click"
                        Text="重　置" /></td>
                <td style="width: 85px">
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


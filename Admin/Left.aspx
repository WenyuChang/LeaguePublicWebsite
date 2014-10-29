<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Admin_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>功能导航</title>

    <script src="images/Switching.js" type="text/javascript"></script>

    <style type="text/css">
        body
        {
            background: #FFFFFF;
            margin: 0px;
            padding: 0px;
            font: normal 12px 宋体;
            color: #215DC6;
            font-weight: bold;
            text-align: center;
            height: 768px;
        }
        table
        {
            border: 0px;
        }
        span
        {
            padding-left: 30px;
            font-size: 14px;
            color: #215DC6;
        }
        a
        {
            font-size: 12px;
            color: #215DC6;
            text-decoration: none;
        }
        a:hover
        {
            color: #1E4EA2;
            font-size: 12px;
        }
        .b
        {
            color: #2B5DB6;
            font-size: 12px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 6px;
            text-align: center;
        }
        .c
        {
            border: 1px #75A9E3 solid;
            border-top: 0;
            background: #EBF3FE;
            width: 157px;
            color: #275DB5;
            line-height: 20px;
            text-align: left;
            padding-left: 0px;
            padding-top: 5px;
            padding-bottom: 6px;
        }
        .d
        {
            padding-left: 10px;
        }
        .cssMenuShow
        {
            background: url(images/menudown.gif);
            height: 28;
            width: 157px;
            margin-top: 5px;
        }
        .cssMenuHiden
        {
            background: url(images/menudown2.gif);
            height: 28;
            width: 157px;
            margin-top: 5px;
        }
        .cssMouseOver
        {
            background: url(images/menudown.gif);
            height: 28;
            width: 157px;
            margin-top: 5px;
        }
        .sec_menu
        {
            border-left: 1px solid white;
            border-right: 1px solid white;
            border-bottom: 1px solid white;
            background: #D6DFF7;
            padding: 5px 2px;
        }
        .menu_title
        {
        }
        .menu_title span
        {
            position: relative;
            top: 2px;
            left: 8px;
            color: #215DC6;
            font-weight: bold;
        }
        .menu_title2
        {
        }
        .menu_title2 span
        {
            position: relative;
            top: 2px;
            left: 8px;
            color: #428EFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <table width="100%" height="550" border="0" cellpadding="0" cellspacing="0" style="border-right: 0px;
        border-top: #619adf 1px solid; background: #f2f7fd; margin: 6px 0px 10px 10px;
        border-left: #619adf 1px solid; border-bottom: #619adf 1px solid; text-align: center">
        <tr>
            <td valign="top">
                <table width="174" height="6" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td background="images/admin_left_bg1.gif">
                            <img src="images/1x1.gif" width="1" height="1">
                        </td>
                    </tr>
                </table>
                <table width="174" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center" background="images/admin_left_bg2.gif">
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu1" class="cssMenuHiden" onclick="MemuClick('menu1','list1','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            新闻管理</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" border="0" width="157">
                                <tr>
                                    <td>
                                        <div class="c" id="list1" style="display: none">
                                            <table cellspacing="0" cellpadding="0" border="0" class="d">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="ListPictureNews.aspx" target="right">图片新闻</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="LatestListNews.aspx" target="right">最新新闻</a>
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                            
                           
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu11" class="cssMenuHiden" onclick="MemuClick('menu11','list11','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            资料下载</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list11" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" class="d" align="center">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">货币添加</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">支付方式添加</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu12" class="cssMenuHiden" onclick="MemuClick('menu12','list12','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            组织部发文</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list12" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" align="center" class="d">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="Article.aspx" target="right">文章查看</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="ArticleAdd.aspx" target="right">添加文章</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="ArticleCategory.aspx" target="right">文章类别</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="ArticleCategoryAdd.aspx" target="right">添加文章类别</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu13" class="cssMenuHiden" onclick="MemuClick('menu13','list13','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            留言管理</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list13" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" class="d" align="center">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">系统设置</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">管理模板</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">数据备份</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">缓存管理</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu14" class="cssMenuHiden" onclick="MemuClick('menu14','list14','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            精品项目</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list14" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" class="d" align="center">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="Link.aspx" target="right">链接管理</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="LinkAdd.aspx" target="right">友情链接添加</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">广告添加</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a target="right">会刊添加</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                             <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu10" class="cssMenuHiden" onclick="MemuClick('menu10','list10','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            友情链接</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list10" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" class="d" align="center">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="Manager.aspx" target="right">管理员查看</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="Member.aspx" target="right">会员查看</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="MemberAdd.aspx" target="right">会员添加</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">
                                                        <a href="MemberGroupAdd.aspx" target="right">会员组添加</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        <img src="images/1x1.gif">
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td id="menu18" class="cssMenuHiden" onclick="MemuClick('menu18','list18','cssMenuShow','cssMenuHiden')">
                                        <div class="b">
                                            版权信息</div>
                                    </td>
                                </tr>
                            </table>
                            <table cellspacing="0" cellpadding="0" width="157" border="0">
                                <tr>
                                    <td>
                                        <div class="c" id="list18" style="display: none">
                                            <table cellspacing="0" cellpadding="0" width="150" class="d" align="center">
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">&nbsp;<a href="#nogo" target="right">官方网站</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <img src="images/line1.gif">&nbsp;<a href="#nogo" target="right">程序制作</a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="6">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <div style="height: 2px">
                            </div>
                        </td>
                    </tr>
                </table>
                <table style="border-top: #75a9e5 1px solid; width: 174px" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <img src="images/1x1.gif" width="1" height="1">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>


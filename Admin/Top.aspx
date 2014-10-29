<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Admin_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Top</title>
</head>
<body background="images/02.gif" style="margin: 0px; " >
    <table height="100%" width="95%" border="0" cellpadding="0" cellspacing="0">
        <tr valign="middle">
            <td>
                <img onclick="switchBar(this)" src="images/admin_top_close.gif" alt="关闭左边管理菜单" style="cursor: hand" />
            </td>
            <td>
                <a href="ListPictureNews.aspx" target="right">
                    <img src="images/admindex.gif" border="0"></a> <a href="../websites/main.aspx" target="_top">
                        <img src="images/adminlogout.gif" border="0"></a>
            </td>
        </tr>
    </table>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Admin_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>团委管理界面</title>
</head>
<frameset rows="100,*" cols="*" border="0" framespacing="0" frameborder="0">
<frame src="top.aspx" name="top" scrolling="no" noresize >
<frameset id="frame" framespacing="0" border="false" cols="210,*" frameborder="0">
	<frame name="left"  scrolling="no" marginwidth="0" marginheight="0" src="Left.aspx" noresize="noresize">
	<frame name="right" src="ListPictureNews.aspx" scrolling="yes">
	</frameset>
</frameset>
<noframes>
    <body>
        <p>
            This page uses frames, but your browser doesn't support them.</p>
    </body>
</noframes>
</html>

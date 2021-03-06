<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddLatestNews.aspx.cs" Inherits="Admin_AddLatestNews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
   <SCRIPT LANGUAGE="JAVASCRIPT" SRC="../Content/editor/script/editfunc.js"></SCRIPT>
<SCRIPT LANGUAGE="JAVASCRIPT" SRC="../Content/editor/script/colorSelect.js"></SCRIPT>
<SCRIPT LANGUAGE="JAVASCRIPT" SRC="../Content/editor/script/portraitSelect.js"></SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<style type="text/css">
a {font-size:12px;}
img {border:0;}
td.icon {width:24px;height:24px;text-align:center;vertical-align:middle;}
td.sp {width:8px;height:24px;text-align:center;vertical-align:middle;}
td.xz {width:47px;height:24px;text-align:center;vertical-align:middle;}
td.bq {width:49px;height:24px;text-align:center;vertical-align:middle;}
div a.n {height:16px; line-height:16px; display:block; padding:2px; color:#000000; text-decoration:none;}
div a.n:hover {background:#E5E5E5;}
</style>
<style>
#magicface{}
#magicface td{ height:29px; width:29px; background-color:#F8F8F8; text-align:center;}
#magicface td onmouseover{background-Color:#FFcccc;} 
.mf_nowchose{ height:30px; background-color:#DFDFDF;border:1px solid #B5B5B5; border-left:none;}
.mf_other{ height:30px;border-left:1px solid #B5B5B5; }
.mf_otherdiv{ height:30px; width:30px;border:1px solid #FFF; border-right-color:#D6D6D6; border-bottom-color:#D6D6D6; background-color:#F8F8F8;}
.mf_otherdiv2{ height:30px; width:30px;border:1px solid #B5B5B5; border-left:none; border-top:none;}
.mf_link{ font-size:12px; color:#000000; text-decoration:none;}
.mf_link:hover{ font-size:12px; color:#000000; text-decoration:underline;}

</style>
<style type="text/css">
.ico {	height: 24px;	width: 24px; vertical-align:middle; text-align:center;
}
.ico2 {	height: 24px;	width: 27px; vertical-align:middle; text-align:center;
}
.ico3 {	height: 24px;	width: 25px; vertical-align:middle; text-align:center;
}
.ico4 {	height: 24px;	width: 8px; vertical-align:middle; text-align:center;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.icons{ width:20px; height:20px; background-image:url(../Content/editor/images/mtoolallbg.gif); background-repeat:no-repeat; margin-top:2px}
.icoCut{ background-position:0 0}.icoCpy{ background-position:-28px 0}.icoPse{ background-position:-56px 0}.icoFfm{ background-position:-82px 0}.icoFsz{ background-position:-110px 0}.icoWgt{ background-position:-140px 0}.icoIta{ background-position:-168px 0}.icoUln{ background-position:-196px 0}.icoAgn{ background-position:-224px 0}.icoLst{ background-position:-252px 0}.icoLst{ background-position:-252px 0}.icoOdt{ background-position:-280px 0}.icoIdt{ background-position:-308px 0}.icoFcl{ background-position:-335px 0}.icoBcl{ background-position:-362px 0}.icoUrl{ background-position:-392px 0}.icoImg{ background-position:-420px 0}.icoMfc{ background-position:-447px 0}

    #GetNewsInfo
    {
        height: 323px;
        width: 487px;
    }

    #NewsInfo
    {
        width: 818px;
        height: 410px;
    }

</style>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function fontname(obj){
		format('fontname',obj.innerHTML);
		obj.parentNode.style.display='none';
	}
	function fontsize(size,obj){
		format('fontsize',size);
		obj.parentNode.style.display='none';
	}
//-->
LoadContent(Request('id'))
</SCRIPT>

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
                                   <div>
    添加最新新闻
    </div>
    <div>
    <asp:Label ID="Label1" runat="server" Text="新闻类别:" />
    <asp:DropDownList ID="GetCatalog" runat="server" DataSourceID="DB" DataTextField="NewsCatalog" 
            DataValueField="NewsCatalog">
    
    </asp:DropDownList>
        <asp:SqlDataSource ID="DB" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT distinct ([NewsCatalog] )FROM [LatestNews]"></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="作者" />
        <asp:TextBox runat="server" ID="GetNewsAuthor" />
    </div>
    <div>
    <asp:Label ID="Label3" Text="新闻标题:" runat="server" />

<asp:TextBox Text="" ID="GetNewsName" runat="server" Width="369px" />   </div>
  
    <div>
    <asp:Label ID="Label4" Text="新闻内容" runat="server" /></div>
    <div>
 <!--  <iframe  src="../Content/editor/editor.html?id=cont" frameborder="0" scrolling="no"  style="width:550px" height="320"></iframe>-->
 
<table width="100%"  border="0" cellpadding="0" cellspacing="0" background="../Content/editor/images/bg.gif" style="border:1px solid #c5c5c5; ">
  <tr>
    <td height="31" style="padding-left:5px; "><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="ico">
		<div class="icons icoCut" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onclick="format('Cut')" title="剪切"
onmousedown=fSetBorderMouseDown(this)  
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>			</td>
        <td class="ico">
		<div class="icons icoCpy" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Copy')" title="复制"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoPse" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Paste')" title="粘贴"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico" style="width:12px"><img src="../Content/editor/images/line.gif" width="4" height="20" style="margin-left:2px "  /></td>
        <td class="ico2">
		<div class="icons icoFfm" style="width:25px"  ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this)  id="imgFontface" title="字体" onClick="fGetEv(event);fDisplayElement('fontface','')"  
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico2">
		<div class="icons icoFsz" style="width:25px" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) id="imgFontsize" title="字号" onClick="fGetEv(event);fDisplayElement('fontsize','')"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoWgt" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Bold');" title="加粗"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoIta" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Italic');" title="斜体"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoUln" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Underline')" title="下划线"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this) ></div>		</td>
		
        <td class="ico3">
		<div class="icons icoFcl"  ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) title="字体颜色"
            onmouseover=fSetBorderMouseOver(this)  onclick="foreColor(event)" id="imgFontColor"
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico2">
		<div class="icons icoBcl"  ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) title="背景颜色"
            onmouseover=fSetBorderMouseOver(this)  onclick="backColor(event)" id="imgBackColor"
            onmouseout=fSetBorderMouseOut(this)></div>		</td>		
        <td class="ico">
		<div class="icons icoAgn"><img border="0" width="100%" height="100%"  onmousedown=fSetBorderMouseDown(this) id="imgAlign" onClick="fGetEv(event);fDisplayElement('divAlign','')" title="对齐"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this) src="images/place.gif"></div>		</td>
        <td class="ico">
		<div class="icons icoLst" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) id="imgList" onClick="fGetEv(event);fDisplayElement('divList','')"title="编号"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoOdt" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Outdent')" title="减少缩进"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico">
		<div class="icons icoIdt" ><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="format('Indent')" title="增加缩进"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
        <td class="ico" style="width:12px"><img src="images/line.gif" width="4" height="20" style="margin-left:2px "  /></td>

        <td class="ico">
		<div class="icons icoUrl"><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif" onmousedown=fSetBorderMouseDown(this) onclick="createLink()" title="超链接"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>		</td>
		
       <td class="ico">
		<div class="icons icoImg"><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif"  onmousedown=fSetBorderMouseDown(this) onclick="createImg()" title="增加图片" 
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this)></div>
		</td>
		
        <td class="ico3">
		<div class="icons icoMfc"><img border="0" width="100%" height="100%" src="../Content/editor/images/place.gif"  onmousedown=fSetBorderMouseDown(this) onclick="addPortrait(event)" title="魔法表情" id="imgFace"
            onmouseover=fSetBorderMouseOver(this) 
            onmouseout=fSetBorderMouseOut(this) /></div>		</td>
		<td class="ico4"><img src="../Content/editor/images/line.gif" width="4" height="20" style="margin-left:5px "  /></td>
		<td style="font-size:12px"> <input type=checkbox name="switchMode" LANGUAGE="javascript" onclick="setMode(this.checked)" onmouseout="fHideTip()" onmouseover="fSetModeTip(this)"></td>
        </tr>
    </table></td>
  </tr>
</table>
<div style="width:100px;height:100px;position:absolute;display:none;top:-500px;left:-500px" ID="dvForeColor">
<TABLE CELLPADDING=0 CELLSPACING=0 style="border:1px #888888 solid" width="218" height="25">
</TABLE>
</div>
<div style="width:100px;height:100px;position:absolute;display:none;top:-500px;left:-500px" ID="dvPortrait"></div>
<div id="fontface" style="z-index:99; padding:1px; display:none; position:absolute; top:35px; left:2px; background:#FFFFFF; border:1px solid #838383; width:110px; height:270px;"><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px '宋体';">宋体</a><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px '黑体';">黑体</a><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px '楷体';">楷体</a><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px '隶书';">隶书</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px '幼圆';">幼圆</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px Arial;">Arial</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px 'Arial Narrow';">Arial Narrow</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px 'Arial Black';">Arial Black</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px 'Comic Sans MS';">Comic Sans MS</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px Courier;">Courier</a><a href="###" onClick="fontname(this)" class="n" style="font:normal 12px System;">System</a><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px 'Times New Roman';">Times New Roman</a><a href="javascript:void(0)" onClick="fontname(this)" class="n" style="font:normal 12px Verdana;">Verdana</a></div>
<div id="fontsize" style="padding:1px; display:none; position:absolute; top:35px; left:26px; background:#FFFFFF; border:1px solid #838383; width:115px; height:160px;"><a href="javascript:void(0)" onClick="fontsize(1,this)" class="n" style="font-size:xx-small;line-height:120%;">极小</a><a href="javascript:void(0)" onClick="fontsize(2,this)" class="n" style="font-size:x-small;line-height:120%;">特小</a><a href="javascript:void(0)" onClick="fontsize(3,this)" class="n" style="font-size:small;line-height:120%;">小</a><a href="#" onClick="fontsize(4,this)" class="n" style="font-size:medium;line-height:120%;">中</a><a href="javascript:void(0)" onClick="fontsize(5,this)" class="n" style="font-size:large;line-height:120%;">大</a><a href="javascript:void(0)" onClick="fontsize(6,this)" class="n" style="font-size:x-large;line-height:120%;">特大</a><a href="javascript:void(0)" onClick="fontsize(7,this)" class="n" style="font-size:xx-large;line-height:140%;">极大</a></div>
<div id="divList" style="padding:1px; display:none; position:absolute; top:35px; left:26px; background:#FFFFFF; border:1px solid #838383; width:60px; height:40px;"><a href="javascript:void(0)" onClick="format('Insertorderedlist');fHide(this.parentNode)" class="n">数字列表</a><a href="javascript:void(0)" onClick="format('Insertunorderedlist');fHide(this.parentNode)" class="n">符号列表</a></div>	
<div id="divAlign" style="padding:1px; display:none; position:absolute; top:35px; left:26px; background:#FFFFFF; border:1px solid #838383; width:60px; height:60px;"><a href="javascript:void(0)" onClick="format('Justifyleft');fHide(this.parentNode)" class="n">左对齐</a><a href="javascript:void(0)" onClick="format('Justifycenter');fHide(this.parentNode)" class="n">居中对齐</a><a href="javascript:void(0)" onClick="format('Justifyright');fHide(this.parentNode)" class="n">右对齐</a></div>	
<div id="divEditor">

<!--<IFRAME class="HtmlEditor" visible="false" ID="HtmlEditor" name="HtmlEditor" style=" height:286px;width:100%" frameBorder="0" marginHeight=0 marginWidth=0 src="../Content/editor/blankpage.htm"></IFRAME>-->
<textarea id="NewsInfo" name="NewsInfo" runat="server" /> 

    </div>
    <div>
        <asp:Button ID="Create" runat="server" Text="添加"  OnClick="CreateLatestNews"/>
        <asp:Button ID="Reset" runat="server" Text="重置" OnClick="ResetLatestNews" />
     </div>
    </div>
     
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

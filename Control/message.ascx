<%@ Control Language="c#" Inherits="Company.Control.message" CodeFile="message.ascx.cs" %>
<table width="270" height="84" border="0" align="center" cellpadding="0" cellspacing="1"
	bgcolor="#9a0000">
	<tr>
		<td width="23" bgcolor="#ffffff"><a href="http://news.qq.com/scroll/now.htm" target="_blank"><img src="images/new_1.gif" width="23" height="84" border="0"></a></td>
		<td bgcolor="#ffffff">
			<div style="OVERFLOW:hidden;HEIGHT:76px">
				<div id="marquees">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="left1">
								<asp:DataList ID="list1" Runat="server" Width="94%">
									<ItemTemplate>
										<a class="rlk" target="_blank" href='<%# DataBinder.Eval(Container.DataItem,"url") %>'>
											<%# DataBinder.Eval(Container.DataItem,"title") %>
										</a><span class="text06">(<%# DataBinder.Eval(Container.DataItem,"datetime","{0:dd HH:mm}") %>)</span><br>
									</ItemTemplate>
								</asp:DataList>
							</td>
						</tr>
					</table>
				</div>
				<script language="javascript">
<!--
marqueesHeight=75;
stopscroll=false; 
with(marquees){
noWrap=true; 
style.width=248; 
style.height=marqueesHeight;
style.overflowY="hidden"; 
onmouseover=new Function("stopscroll=true"); onmouseout=new Function("stopscroll=false"); 
}

document.write('<div id="templayer" style="position:absolute;z-index:1;visibility:hidden"></div>');
function init(){ //
while(templayer.offsetHeight<marqueesHeight){
templayer.innerHTML+=marquees.innerHTML;
} 
marquees.innerHTML=templayer.innerHTML+templayer.innerHTML;
setInterval("scrollUp()",30);
}
document.body.onload=init;
preTop=0; function scrollUp(){ if(stopscroll==true) return; 
preTop=marquees.scrollTop; 
marquees.scrollTop+=1; //当然不仅如此，同样还要向下滚动一个像素(+1)：
if(preTop==marquees.scrollTop){
marquees.scrollTop=templayer.offsetHeight-marqueesHeight+1;
}
}
-->
				</script>
			</div>
		</td>
	</tr>
</table>

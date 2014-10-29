<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PictureNews.aspx.cs" Inherits="websites_PictureNews" MasterPageFile="MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
<script language="JavaScript" type="text/javascript">
	function doZoom(size)
	{
		document.getElementById('Content').style.fontSize = size + 'px'
	}
	</script>
 <div>
    <table  cellspacing ="1" cellpadding="0" width ="100%"  align="center" bgcolor="White" border ="0">
       <tr>
         <td>
         <div class="mframe" style="width:100%">
                        <table width="100%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="tl">
                                    <div class="tt">
                                        图片新闻</div>
                                </td>
                                <td class="tm">
                                </td>
                                <td class="tr">
                                </td>
                            </tr>
                        </table>
                        <table width="100%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="ml">
                                </td>
                                <td class="mm">
                                <!--在此加代码-->
                                 <table width="100%" cellpadding="0" cellspacing="0" border="0" style="height:100px">
							<tr>
								<td height="10%"align="center" valign="middle"  bgcolor="#E7F1F8">
									<asp:label id="a_title" runat="server"></asp:label></td>
							</tr>
						</table>
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0" style="height:355px">
										<tr>
											<td align="center" height="5%" bgcolor="#afd5fc">发表时间：
												<asp:label id="a_datetime" runat="server"></asp:label>
											点击数：
												<asp:label id="a_dj" runat="server"></asp:label></td>
											
										</tr>
										<tr>
											<td >
										<!--	<a target=_blank href= "../Admin/upload/<%#"p_sp"%>">
											<img title="点击查看原大图" border=0 width=100 height=60 src="../Admin/upload/<%#"p_mp"%>"></a>-->
											
											<asp:Image id="a_mp" runat="server" Width="500px" Height="280px"></asp:Image>
												</td>
										</tr>
										<tr>
											<td colSpan="4">
										<!--	<asp:TextBox id="a_contents" runat="server" TextMode="MultiLine" Columns="4" Rows="4" />
											
											<!---->
											<asp:label id="a_content" runat="server"></asp:label>
											</td>
										</tr>
									</table>
																<!--在此结束-->

                                       </td>
                                       <td class="mr">
                                </td>
                                      </tr>
                                      </table>  
                                        
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
     </div>
 </asp:Content>
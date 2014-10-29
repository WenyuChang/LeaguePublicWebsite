<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LatestNews.aspx.cs" Inherits="websites_LatestNews" MasterPageFile="MasterPage.master" %>
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
                                        最新新闻</div>
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
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height:455px" cellpadding="0">
																	<tr >
																		<td height="5%" align="center" valign="middle"  bgcolor="#E7F1F8">
																	  <asp:Label ID="NewsName" runat="server" CssClass="title"  Text="Label"
                                                                   Width="373px"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td align="center" height="5%" bgcolor="#afd5fc">新闻分类：<asp:Label ID="NewsCatalog" runat="server" CssClass="title"  Text=""/>发表日期：<asp:Label ID="AddDate" runat="server" CssClass="title"  Text=""/> 来源：xxxx管理平台</td>
																	</tr>
																	
																<!--	<tr>
																		<td align="center" class="GbText">
																			<asp:GridView ID="ContentPicView" Width="450" CellPadding="0" BorderWidth="0" CellSpacing="5" runat="server" AutoGenerateColumns="False" ShowHeader="False">
																				<Columns>
																					<asp:TemplateField>
																						<ItemTemplate>
																							<table cellpadding="5" cellspacing="0">
																								<tr>
																									<td align="center"><img src='../aaaa' width="400" height="300" /></td>
																								</tr>
																								<tr>
																									<td align="center"><a href='ViewPicture.aspx?DocumentID=aaaaa' target="_blank">aaaa</a></td>
																								</tr>
																							</table>																							
																						</ItemTemplate>
																					</asp:TemplateField>
																				</Columns>
																			</asp:GridView>
																		</td>
																	</tr>-->
																	
																	<tr>
																		<td style="height:95%"  valign="top">
																			<div id="Content">
																			 <asp:TextBox ID="NewsInfo" runat="server" CssClass="txt" Height="155px" TextMode="MultiLine"
                                                                            Width="486px"></asp:TextBox>
																			
																			</div>
																			<br />
																		</td>
																	</tr>
																</table>

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
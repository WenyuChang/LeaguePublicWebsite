<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MorePictureNews.aspx.cs" Inherits="websites_MorePictureNews" MasterPageFile="MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div style="height:100%; width:100%">
    <table  cellspacing ="1" cellpadding="0" width ="100%"  align="center" bgcolor="White" border ="0">
        
       <tr>
         <td>
         <div class="mframe" style="width:100%; height:100%">
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
                                   <table width="100%" cellpadding="0" cellspacing="0" border="0" style="height:445px">
               <tr>
					<td style="text-align:center" background="../Admin/picimages/images/titlebg.gif" style="HEIGHT: 31px">&nbsp;<img src="../Admin/picimages/images/2.gif" border="0">&nbsp;图片新闻列表</td>
				</tr>
											<tr>
												
												<td width="100%" height="100px" valign="top">
													<table width="100%" border="0" cellpadding="0" cellspacing="0" class="kuan4">
														<tr>
															<td class="left">
																<asp:DataList ID="listpic" Runat="server" Width="100%">
																	<ItemTemplate>
																		*<a target="_blank" class="rlk1" href='PictureNews.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id") %>'><%# DataBinder.Eval(Container.DataItem,"p_title") %>『<%# DataBinder.Eval(Container.DataItem,"p_datetime")%>』</a><br>
																	</ItemTemplate>
																</asp:DataList>
															</td>
														</tr>
													</table>
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

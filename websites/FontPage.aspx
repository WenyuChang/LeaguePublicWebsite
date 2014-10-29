<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FontPage.aspx.cs" Inherits="websites_FontPage" MasterPageFile="MasterPage.master" %>
<%@ Register TagPrefix="uc1" TagName="image" Src="../Control/image.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div>
    <table  cellspacing ="1" cellpadding="0" width ="100%" 
            bgcolor="White" border ="0" >
 
       <tr>
        <td>
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
 <td align="left" style="width:654px">
            <div class="mframe">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
                <td class="tl">
                   <div class="tt">图片新闻</div>
                 </td>
                 
                 <td class="tm" style="width:500px">
                   <a href="MorePictureNews.aspx" class="more">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
                 </td>
                 <td class="tr"></td>
             </tr>
          </table>
          <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
              <td class="ml"></td>
              <td class="mm" valign="top">
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                 <tr>
                  <td style="width:260px; height:200px; padding:5px">
                  <uc1:image id="Image1" runat="server"></uc1:image>
                  </td>
                  <td style="height: 200px; padding:0px">
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
              <td class="mr"></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
                <td class="bl">&nbsp;</td>
                <td class="bm">&nbsp;</td>
                <td class="br">&nbsp;</td>
             </tr>
          </table>
        </div>
           
          </td>
</tr>




<tr>
<td align="left" valign="bottom" style="width:654px">
         <div class="mframe">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
                <td class="tl">
                
                   <div class="tt">最新新闻</div>
                 </td>
                 <td class="tm" style="width:500px">
                   <a href="MoreLatestNews.aspx" class="more">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> 
                 </td>
                 <td class="tr"></td>
             </tr>
          </table>
          <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tr>
             <td class="ml"></td>
              <td  style="width:100%; padding-left:0px" valign="top" align="left">
                    <div id="Div1">
                     
                      <marquee direction=up onmouseover=this.stop() onmouseout=this.start() scrollamount=1 scrolldelay=4 width=100%>
                      <table width="100%" cellspacing=0 cellpadding="0">
                      <tr><td style="padding-left:0px; padding:0px">
                          <asp:DataList ID="LatestNews" runat="server" OnItemCommand="LatestNews_ItemCommand">
                        <ItemTemplate>
                            <table border="0" cellspacing="0"  style="width: 100%; height:100%; padding-left: 0px; margin-left: 0px; margin-top: 0px; padding-top: 0px; font-size :9pt ">
                                <tr>
                                    <td style="width: 190px; height: 21px;border-bottom: 1px; padding-left:0px">
                        
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select">『 <%# DataBinder.Eval(Container.DataItem,"NewsCatalog")%>』<%# DataBinder.Eval(Container.DataItem,"NewsName") %>
                                         (<%# DataBinder.Eval(Container.DataItem,"AddDate")%>)
                                        </asp:LinkButton>

                                       </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" ForeColor="Blue" HorizontalAlign="Center" />
                    </asp:DataList>
                   </td></tr></table></marquee>
                    </div>  
              </td>
             <td class="mr"></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
                <td class="bl">&nbsp;</td>
                <td class="bm">&nbsp;</td>
                <td class="br">&nbsp;</td>
             </tr>
          </table>
        </div>
       </td>
</tr>
</table>
</td>


       </tr>
    </table>
</div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MoreLatestNews.aspx.cs" Inherits="websites_MoreLatestNews" MasterPageFile="MasterPage.master"%>

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
                                   <table width="100%" cellpadding="0" cellspacing="0" border="0" style="height:445px">
            <tr>
             
              <td  style="width:100%" valign="top" >
                <div style="overflow: hidden; height: 171px; margin: 5px">
                <table width="100%" border="0" cellpadding="1" cellspacing="1">
                <tr>
					<td style="text-align:center" background="../Admin/picimages/images/titlebg.gif" style="HEIGHT: 31px">&nbsp;<img src="../Admin/picimages/images/2.gif" border="0">&nbsp;最新新闻列表</td>
				</tr>
				
                </table>
				
                      <!--  <asp:Literal ID="Literal2" runat="server"></asp:Literal>-->
                      <marquee direction=up onmouseover=this.stop() onmouseout=this.start() scrollamount=1 scrolldelay=4 width=100%>
                      <table width=100% cellspacing=0 cellpadding=0>
                      <tr><td align=center>
                          <asp:DataList ID="LatestNews" runat="server" OnItemCommand="LatestNews_ItemCommand">
                        <ItemTemplate>
                            <table border="0" cellspacing="0"  style="width: 100%; height:100%; padding-left: 0px; margin-left: 0px; margin-top: 0px; padding-top: 0px; font-size :9pt ">
                                <tr>
                                    <td align="left" style="width: 190px; height: 21px;border-bottom: 1px ;">
                                       
                                       
                                        
                                      <!-- <td align="left" style="height: 21px;border-bottom: 1px dashed #000000;"></td>-->
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select">『 <%# DataBinder.Eval(Container.DataItem,"NewsCatalog")%>』<%# DataBinder.Eval(Container.DataItem,"NewsName") %>
                                         (<%# DataBinder.Eval(Container.DataItem,"AddDate")%>)
                                        </asp:LinkButton>
                                   <!--  <td align="left" style="width: 90px; height: 21px;border-bottom: 1px dashed #000000;">-->
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

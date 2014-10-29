<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoteBook.aspx.cs" Inherits="websites_NoteBook" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div>
    <table  cellspacing ="1" cellpadding="0" width ="100%"  align="center" bgcolor="White" border ="0">
        <tr>
                
                <td align="left">
                    &nbsp;您的位置：<a href="Main.aspx">首页</a>→留言
                </td>
            </tr> 
        <tr>
         <td>
         <div class="mframe" style="width:100%">
                        <table width="100%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td class="tl">
                                    <div class="tt">
                                        部长留言</div>
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
                                            <td valign="top">
                                                <table align="center" width="100%" cellpadding="5" cellspacing="0" border="0">
                                                  
                                                    
                                                    <tr>
                                                        <td colspan="2">
                                                            <table width="95%" cellpadding="1" cellspacing="1" border="0" align="center" bgcolor="white" >
                                                                <asp:Repeater ID="rptReviews" runat="server">
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td width="25%" bgcolor="#F6F6F6" align="center" style="height:30px;">
                                                                                留言者: <a href='#'>
                                                                                    </a>
                                                                            </td>
                                                                            <td width="75%" bgcolor="#ffffff" style="height:30px;">
                                                                                <table width="100%" style="height:30px;">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "Body") %><br>
                                                                                            <font color="#C1C1C1">
                                                                                                <%# DataBinder.Eval(Container.DataItem, "addTime") %>
                                                                                            </font>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <hr noshade="noshade" color="#333333" size="1" style="border-style: dotted; border-width: 1"
                                                                                                width="100%">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <b>
                                                                                                管理员回复：</b><br>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "Reply") %>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </table>
                                                            <div id="reviewForm" runat="server">

                                                            <script type="text/javascript" language="javascript">
																<!--
																function checkRemark()
																{
																var form=document.getElementById("reviewForm");
																if (form.body.value=="")
																{	alert("请填写评论内容！");
																	form.body.focus();
																	return false;
																}
																
																return true;
																}
																function showLen(obj)
																{
																	document.getElementById("bodyLen").value=obj.value.length;
																}
																-->
                                                            </script>

                                                            <table width="95%" cellpadding="0" cellspacing="0" border="0" align="center">
                                                                <tr>
                                                                    <td width="40">
                                                                        内容:
                                                                    </td>
                                                                    <td>
                                                                        <textarea name="body" cols="40" rows="4" onkeydown="showLen(this)" onkeyup="showLen(this)" runat="server" id="body"></textarea>
                                                                        <input type="text" id="bodyLen" size="4" style="border-width: 0; background: transparent;" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="40"> 
                                                                        Email:
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" id="i_email" name="email" size="15"  runat="server"/><input type="checkbox" id="i_hideEmail"
                                                                            name="hideemail" checked="checked" />隐藏邮件地址
                                                                    </td>
                                                                </tr>
                                                                
                                                               <tr>
                                                                    <td width="40"></td>
                                                                    <td>
                                                                       
                                                                        <asp:Button runat="server" ID="submit" Text="提交" 
                                                                            OnClientClick="return checkRemark()" onclick="submit_Click" />
                                                                        
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            </div>
                                                        </td>
                                                    </tr>  
                                                    <%--<%} %>  --%>                                       
                                                    <tr>
                                                        <td class="hr" colspan="2">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                           
                                                        </td>
                                                    </tr>
                                                </table>

                                                <script type="text/javascript">
		function addtocart(pid)
		{
		    if(pid != 0)
		    {
		       temp=window.open('ShoppingCart.aspx?PID='+pid,'shopcat','width=700,height=650,scrollbars=yes,top=0,left=0');
			   temp.focus();
			}
			else
			{
			   temp=window.open('ShoppingCart.aspx','shopcat','width=700,height=650,scrollbars=yes,top=0,left=0');
			   temp.focus();
			}
		}
                                                </script>

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

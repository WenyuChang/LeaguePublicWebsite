<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMain.aspx.cs" Inherits="Admin_AdminMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
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
                                <span class="tt">后台管理 &gt;&gt;图片新闻<asp:Label ID="lblTitleInfo" runat="server"></asp:Label></span>
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
                                    &nbsp; 图片新闻</div>
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
    <table  cellspacing ="1" cellpadding="0" width ="100%"  align="center" bgcolor="White" border ="0">
      <tr height="30px">
           <td class="style1" >List All NewsLinks as follows:</td>
      </tr>
     </table>
     <table>
       
                  
      <tr><td colspan="2">
		  <asp:GridView ID="GridView1" runat="server" AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="NLinkID" PagerSettings-Mode="Numeric" 
               OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
               OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound"
               HeaderStyle-CssClass="summary-title" HorizontalAlign="Center" Width="100%" PageSize="10">
                           
              <HeaderStyle Font-Bold="True"  CssClass="summary-title"></HeaderStyle>
                <Columns>
                    <asp:TemplateField >
                           <ItemTemplate>
                              <asp:CheckBox ID="CheckBox1" runat="server" />
                           </ItemTemplate>
                    </asp:TemplateField>
                              <asp:BoundField DataField="NLinkID" HeaderText="NLinkID" ReadOnly="true"/>
                             
                    <asp:BoundField DataField="Name" HeaderText="NewsName" />
                    <asp:BoundField DataField="Url" HeaderText="NewsUrl" />
                    <asp:BoundField DataField="Remark" HeaderText="NewsRemark"/>
                    <asp:BoundField DataField="Texts" HeaderText="NewsTexts" />
                    <asp:BoundField DataField="AddTime" HeaderText="NewsAddTime" />
                    
                   
                              
                    <asp:CommandField HeaderText=" Edit " ShowEditButton="True" EditText=" Edit " ShowCancelButton="True" ItemStyle-HorizontalAlign="Center">
                    </asp:CommandField>
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton=true DeleteText="Delete" ItemStyle-HorizontalAlign="Center">
                    </asp:CommandField>
                                                           
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerTemplate>
            </PagerTemplate>
          
            </asp:GridView>
          </td>
       </tr>
       
       <tr valign=top style="height:25px">
           <td >
              <div id="del">  
           <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
                      OnCheckedChanged="CheckBox2_CheckedChanged" Text="Select All" 
                      ForeColor="#2020FF"  Height="23px" Font-Bold=true/>
                  &nbsp; &nbsp;&nbsp;&nbsp; 
           <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn4" OnClick="Button1_Click" style="margin-top: 0px" />
                &nbsp; &nbsp;&nbsp; 
           <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="btn4" OnClick="Button2_Click" OnClientClick="return confirm('Are you sure to delete these courses?');"/>
        </div>
           </td>
		   <td >	
				<div id="page" style="color: #2020FF; vertical-align: middle;" >
                    &nbsp;&nbsp;<span style="color:#FFCC00; font-size:14px;"><asp:Label ID="Label2" 
                    runat="server"  Text="Label" ForeColor="#FF9933"></asp:Label></span>&nbsp;Pages&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;<span style="color:#FFCC00; font-size:14px;"><asp:Label ID="Label1" runat="server" 
                    Text="Label" ForeColor="#FF9933" ></asp:Label></span>  &nbsp;<&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">First</asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Forward</asp:LinkButton> &nbsp; 
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Back</asp:LinkButton>&nbsp;  
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Last</asp:LinkButton> &nbsp;&nbsp; Go<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
               </div>	
				</td>	
	</tr>
	</table>
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

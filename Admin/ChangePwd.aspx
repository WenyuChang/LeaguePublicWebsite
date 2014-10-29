<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="Admin_ChangePwd" MasterPageFile="AdminMasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

       <link href="../inc/style.css" type="text/css" rel="stylesheet"/>
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
        
    <div>
    <table width="100%" height="250" style="border:1px #619ADF solid; border-left:0;margin-top:0px; margin-right:7px;background:#F2F7FD;" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
    <div class="mframe" style="width:958px">
     <table width="100%" align="center" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="tl">
                            </td>
                            <td class="tm">
                                <div class="tt">
                                    &nbsp; 个人信息</div>
                            </td>
                            <td class="tr">
                            </td>
                        </tr>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="ml">
                            </td>
                            <td class="mm" align="center" valign="top">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td bgcolor="#EBF3FE" valign="top" style="border-right: 1px #77ABE5 solid;">
                                            <table width="100%" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td class="ml1">
                                                    </td>
                                                    <td class="mm1" align="center">
                                                    <table  cellspacing ="1" cellpadding="0" width ="100%"  align="center" bgcolor="White" border ="0">
      <tr height="30px">
           <td class="style1" >ChangePassword</td>
      </tr>
     </table>
                                                    <table width="90%"  cellspacing="0" cellpadding="0">
	<tr>
		<td class="ml1"></td>
		<td class="mm1">
<table class="tableBorder" cellSpacing="0" cellPadding="0" width="95%" align="center" border="0">
	<tr>
		<td align="left" width="150">AdminID：</td>
		<td><asp:Label ID="ids" runat="server"/></td>
	</tr>
	<tr>
		<td align="left" width="150">New Password：</td>
		<td><asp:textbox id="txtName" TextMode="Password" CssClass="input" runat="server"></asp:textbox></td>
	</tr>
	<tr>
		<td align="left" width="150">Repeat Password：</td>
		<td><asp:TextBox id="txtDiscount" TextMode="Password" CssClass="input" runat="server" ></asp:TextBox></td>
	</tr>
	<tr>
		<td align="center" colSpan="2"><br>
			<asp:button id="btnSave" CssClass="btn" runat="server" Text="保存" 
                onclick="btnSave_Click"></asp:button>&nbsp;&nbsp;<asp:button id="btnCancel" 
                runat="server" CssClass="btn" Text="取消" CausesValidation="False" 
                onclick="btnCancel_Click"></asp:button></td>
	</tr>
</table>
		</td>
		<td class="mr1"></td>
	</tr>
</table>
                                                    </td>
                                                </tr>
                                            </table>
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
</div>
</asp:Content>

<%@ Control Language="c#" Inherits="Company.Control.newsph" CodeFile="newsph.ascx.cs" %>
<table width="152" height="25" border="0" cellpadding="0" cellspacing="0" background="images/ribu_bg.gif">
	<tr>
		<td width="35" class="left5"><img src="images/dot5.gif" width="12" height="12"></td>
		<td width="122" valign="bottom" class="bla">пбнееепп</td>
	</tr>
</table>
<table width="152" border="0" cellpadding="0" cellspacing="0" class="kuan8">
	<tr>
		<td width="152" bgcolor="#f0f0f0" style="LINE-HEIGHT: 180%">
			<table width="152" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td colspan="2" height="7" bgcolor="#f0f0f0"></td>
				</tr>
				<tr>
					<td>
						<asp:DataList ID="listph" Runat="server" Width="100%">
							<ItemTemplate>
								<table>
									<tr>
										<td valign="top" bgcolor="#f0f0f0" class="left6">║╓</td>
										<td height="42" bgcolor="#f0f0f0"><a target="_blank" class="rlk_1" href='news_view.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id") %>'><%# DataBinder.Eval(Container.DataItem,"a_title") %></a></td>
									</tr>
								</table>
							</ItemTemplate>
						</asp:DataList></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td bgcolor="#f0f0f0" height="7"></td>
	</tr>
</table>

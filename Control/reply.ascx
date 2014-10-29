<%@ Control Language="c#" Inherits="Company.Control.reply" CodeFile="reply.ascx.cs" %>
<table border="0" cellpadding="0" cellspacing="0" background="images/ri_bg.gif">
	<tr>
		<td>
			<table width="159" border="0" cellpadding="0" cellspacing="0" background="images/ti_ri.gif">
				<tr>
					<td height="24" align="center" class="wh1">»»√≈∆¿¬€</td>
				</tr>
			</table>
			<table width="159" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="100%" valign="middle" height="200" align="center">
						<asp:DataList ID="list1" Runat="server" Width="94%">
							<ItemTemplate>
								°§<%# DataBinder.Eval(Container.DataItem,"title") %>
							</ItemTemplate>
						</asp:DataList>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

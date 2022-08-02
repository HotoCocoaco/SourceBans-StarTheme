{if NOT $permission_addadmin}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Warning" /></i>
	<b>已增加管理员</b>
	<br />
	新的管理员已被成功加入系统中。<br /><br />
	<i>重定向回管理员页面</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group">
				<h3>管理员详情</h3>
				<p>
					有关某个主题的更多信息或帮助，请将鼠标移到问号上。
				</p>
				<br /><br />
				<div id="banlist" class="table-responsive">
					<table class="table table-striped" id="group.details">
						<tr>
							<td valign="top" width="15%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="这是管理员用于登录其管理面板的用户名。 这也将识别管理员对他们所做的任何禁令。"></i>
									管理员登录
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="adminname" name="adminname" />
								</div>
								<div id="name.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="这是管理员的“STEAM”ID。 必须设置此项，以便管理员可以在游戏中使用他们的管理员权限。"></i>
									管理员 Steam ID
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 value="STEAM_0:" class="form-control" id="steam" name="steam" />
								</div>
								<div id="steam.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="设置管理员电子邮件地址。 这将用于从系统发送任何自动消息和更改忘记的密码。 仅当您设置网页面板权限时才需要这样做。"></i>
									管理员电子邮箱
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control" id="email" name="email" />
								</div>
								<div id="email.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="管理员访问管理面板所需的密码。 仅当您设置网页面板权限时才需要这样做。"></i>
									管理员密码
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=4 class="form-control" id="password" name="password" />
								</div>
								<div id="password.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="再次输入密码以确认。"></i>
									管理员密码（确认）
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=5 class="form-control" id="password2" name="password2" />
								</div>
								<div id="password2.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="如果选中此框，您将需要在游戏服务器中指定此密码，然后才能使用您的管理员权限。"></i>
									服务器密码 <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank">更多信息</a>)</small>
								</div>
							</td>
							<td>
								<div class="row">
									<div class="form-group mt-2">
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input id="a_useserverpass" type="checkbox" name="a_useserverpass" vspace="5px" class="form-check-input" TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;"> &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div class="col-sm-11">
										<input type="password" TABINDEX=7 class="form-control" name="a_serverpass" id="a_serverpass" disabled="disabled" />
									</div>
									<div id="a_serverpass.msg" class="badentry"></div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<hr>
				<h3>Admin Access</h3>
				<div id="banlist" class="table-responsive">
					<table class="table table-striped" id="group.details">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>服务器: </b><br>选择此管理员将能够管理的服务器或服务器组。"></i>
									服务区权限
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2">
								<table class="table table-sm">
									{foreach from="$group_list" item="group"}
									<tr>
										<td colspan="2" class="tablerow4">{$group.name}<b><i>(Group)</i></b></td>
										<td align="center" class="tablerow4">
											<div class="form-check">
												<label class="form-check-label">
												<input id="group[]" type="checkbox" name="group[]" vspace="5px" class="form-check-input" value="g{$group.gid}"> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</td>
									</tr>
									{/foreach}
									{foreach from="$server_list" item="server"}
									<tr class="tablerow1">
										<td colspan="2" class="tablerow1" style="background:#fff;" id="sa{$server.sid}"><i>获取主机名... {$server.ip}:{$server.port}</i></td>
										<td align="center" class="tablerow1" style="background:#fff;">
											<div class="form-check">
												<label class="form-check-label">
												<input id="servers[]" type="checkbox" name="servers[]" vspace="5px" class="form-check-input" value="s{$server.sid}"> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</td>
									</tr>
									{/foreach}
								</table>
							</td>
						</tr>
					</table>
				</div>
				<hr>
				<h3>Admin Permissions</h3>
				<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
					<tr>
						<td valign="top" width="35%">
							<div class="rowdesc">
								<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>自定义权限: </b><br>选择此项以为此管理员选择自定义权限。<br><br><b>新组: </b><br>选择此项以选择自定义权限，然后将权限另存为新组。<br><br><b>组: </b><br>选择要添加管理员的预制组。"></i>
								服务器管理员组
							</div>
						</td>
						<td>
							<div align="left" id="admingroup">
								<select TABINDEX=8 onchange="update_server()" name="serverg" id="serverg" class="form-control" style="width: 225px">
									<option value="-2">请选择...</option>
									<option value="-3">无权限</option>
									<option value="c">自定义权限</option>
									<option value="n">新管理员组</option>
									<optgroup label="Groups" style="font-weight:bold;">
										{foreach from="$server_admin_group_list" item="server_wg"}
										<option value='{$server_wg.id}'>{$server_wg.name}</option>
										{/foreach}
									</optgroup>
								</select>
							</div>
							<div id="server.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td colspan="2" id="serverperm" valign="top" style="height:5px;overflow:hidden;"></td>
					</tr>
					<tr>
						<td valign="top">
							<div class="rowdesc">
								<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="<b>自定义权限: </b><br>选择此项以为此管理员选择自定义权限。<br><br><b>新组: </b><br>选择此项以选择自定义权限，然后将权限另存为新组。<br><br><b>组: </b><br>选择要添加管理员的预制组。"></i>
								网页管理员组
							</div>
						</td>
						<td>
							<div align="left" id="webgroup">
								<select TABINDEX=9 onchange="update_web()" name="webg" id="webg" class="form-control" style="width: 225px">
									<option value="-2">请选择...</option>
									<option value="-3">无权限</option>
									<option value="c">自定义权限</option>
									<option value="n">新管理员组</option>
									<optgroup label="Groups" style="font-weight:bold;">
										{foreach from="$server_group_list" item="server_g"}
										<option value='{$server_g.gid}'>{$server_g.name}</option>
										{/foreach}
									</optgroup>
								</select>
							</div>
							<div id="web.msg" class="badentry"></div>
						</td>
					</tr>
					<tr>
						<td colspan="2" id="webperm" valign="top" style="height:5px;overflow:hidden;"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							{sb_button text="增加管理员" onclick="ProcessAddAdmin();" class="ok" id="aadmin" submit=false}
							&nbsp;
							{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="aback"}
						</td>
					</tr>
				</table>
				{$server_script}
			</div>
		</div>
	</div>
</div>
{/if}

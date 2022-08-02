<form action="" method="post">
	<div class="row">
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Mod详情</h3>
					<p>
						有关特定主题的更多信息或帮助，请将鼠标移到问号上。
					</p>
					<div class="table-responsive">
						<input type="hidden" name="insert_type" value="add">
						<table class="table" id="group.details" cellpadding="3">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入您要添加的 Mod 的名称。"></i>
										Mod 名称
									</div>
								</td>
								<td>
									<div align="left">
										<input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
										<input type="text" TABINDEX=1 class="form-control" id="name" name="name" value="{$name}" />
									</div>
									<div id="name.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入此 mods 文件夹的名称。 例如 Counter-Strike: Source 的 mod 文件夹是 'cstrike'"></i>
										Mod 文件夹
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="folder" name="folder" value="{$folder}" />
									</div>
									<div id="folder.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="(STEAM_<b>X</b>:Y:Z) 有些游戏显示 steamid 的方式与其他游戏不同。输入 SteamID 中的第一个数字 (<b>X</b>) 取决于它是如何被这个mod显示的。 (默认: 0)."></i>Steam 宇宙编号</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="steam_universe" name="steam_universe" value="{$steam_universe}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择此模组是否已启用并可分配给封禁和服务器。"></i>启用
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-group d-flex justify-content-between">
											<div class="form-check form-check-flat mt-0" id="loginRememberMeDiv">
												<label class="form-check-label">
												<input id="loginRememberMe" type="checkbox" id="enabled" name="enabled" value="1" TABINDEX=4 vspace="5px" checked="checked" class="form-check-input" checked=""> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="单击此处上传与此 mod 关联的图标。"></i>上传图标
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="Upload MOD Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save btn-secondary" id="upload" submit=false}
									</div>
									<div id="icon.msg" class="badentry" style="display:block;">
										{if $mod_icon}
										已上传: <b>{$mod_icon}</b>
										{/if}
									</div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									{sb_button text="保存更改" class="ok btn-success" id="editmod" submit=true}
									&nbsp;
									{sb_button text="返回" onclick="history.go(-1)" class="cancel btn-danger" id="back" submit=false}
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

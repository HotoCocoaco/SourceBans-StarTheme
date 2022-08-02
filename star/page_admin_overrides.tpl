{if NOT $permission_addadmin}
Access Denied!
{else}
{if $overrides_error != ""}
<script type="text/javascript">ShowBox("Error", "{$overrides_error}", "red");</script>
{/if}
{if $overrides_save_success}
<script type="text/javascript">ShowBox("Overrides updated", "The changes have been saved successfully.", "green", "index.php?p=admin&c=admins");</script>
{/if}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group">
				<form action="" method="post">
					<h3>Overrides</h3>
					<p>使用 Overrides，您可以在全局或特定组中更改任何命令的标志或权限，而无需编辑插件源代码。<br />
						<i>阅读相关 <b><a href="http://wiki.alliedmods.net/Overriding_Command_Access_%28SourceMod%29" title="Overriding Command Access (SourceMod)" target="_blank">override 命令权限</a></b> 于 AlliedModders Wiki！</i><br /><br />
					</p>
					删除 Override 的名称将删除它。<br /><br />
					<div id="banlist" class="table-responsive">
						<table class="table table-striped" id="overrides">
							<thead>
								<tr>
									<th>类型</th>
									<th>名字</th>
									<th>Flags</th>
								</tr>
							</thead>
							{foreach from=$overrides_list item=override}
							<tr>
								<td class="tablerow1">
									<select name="override_type[]" class="form-control">
									<option{if $override.type == "command"} selected="selected"{/if} value="command">命令</option>
									<option{if $override.type == "group"} selected="selected"{/if} value="group">组</option>
									</select>
									<input type="hidden" name="override_id[]" value="{$override.id}" />
								</td>
								<td class="tablerow1"><input class="form-control" name="override_name[]" value="{$override.name|htmlspecialchars}" /></td>
								<td class="tablerow1"><input class="form-control" name="override_flags[]" value="{$override.flags|htmlspecialchars}" /></td>
							</tr>
							{/foreach}
							<tr>
								<td class="tablerow1">
									<select class="form-control" name="new_override_type">
										<option value="command">命令</option>
										<option value="group">组</option>
									</select>
								</td>
								<td class="tablerow1"><input class="form-control" name="new_override_name" /></td>
								<td class="tablerow1"><input class="form-control" name="new_override_flags" /></td>
							</tr>
						</table>
					</div>
					<br />
					<center>
						{sb_button text="保存" class="ok" id="oversave" submit=true}
						{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="oback"}
					</center>
				</form>
			</div>
		</div>
	</div>
</div>
{/if}

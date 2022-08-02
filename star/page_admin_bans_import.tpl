{if NOT $permission_import}
Access Denied!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>导入封禁</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号上。</p>
				<br /><br />
				<div class="table-responsive">
					<form action="" method="post" enctype="multipart/form-data">
						<input type="hidden" name="action" value="importBans" />
						<table class="table table-striped" id="group.details">
							<tr>
								<td>
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择banned_users.cfg 或banned_ip.cfg 文件上传和添加封禁。"></i>
										File
									</div>
								</td>
								<td>
									<div align="left">
										<input type="file" TABINDEX=1 class="form-control" id="importFile" name="importFile" />
									</div>
									<div id="file.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="right" title="如果您想从他们的 Steam 社区资料中获取玩家的名字，请选中此框。（仅适用于banned_users.cfg）"></i>
									获取名字
								</td>
								<td>
									<div align="left">
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input id="friendsname" type="checkbox" name="friendsname" vspace="5px" class="form-check-input"> &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="friendsname.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									{sb_button text="导入" class="ok" id="iban" submit=true}
									&nbsp;
									{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="iback"}
								</td>
							</tr>
						</table>
					</form>
				</div>
				{if !$extreq}
				<script type="text/javascript">
					$('friendsname').disabled = true;
				</script>
				{/if}
			</div>
		</div>
	</div>
</div>
{/if}

<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Protest a ban</h4>
				<p>
					在您继续之前，请确保您首先检查我们的禁令列表并通过单击<a href="index.php?p=banlist">此处</a>进行搜索，如果您被列出以及出于什么原因。<br />
					如果您确实发现自己被列入禁令名单并发现原因不真实，您可以写一份申诉。
				</p>
				{literal}
				<style>
					.form-group label{text-align:right;}
				</style>
				{/literal}
				<form action="index.php?p=protest" method="post">
					<p class="card-description">
						Your Details
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">封禁种类</label>
								<div class="col-sm-9">
									<select class="form-control" name="Type" onChange="changeType(this[this.selectedIndex].value);">
										<option value="0">Steam ID</option>
										<option value="1">IP 地址</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="steam.row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你的 SteamID</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SteamID" value="{$steam_id}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="ip.row" style="display:none;">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你的 IP</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="IP" value="{$ip}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">名字</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="PlayerName" value="{$player_name}" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你应该被解禁的原因 <span class="text-danger">*</span>: <br>(尽可能具有描述性) </td></label>
								<div class="col-sm-9">
									<textarea name="BanReason" cols="30" rows="5" class="form-control">{$reason}</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">你的电子邮箱</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="EmailAddr" value="{$player_email}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><span class="text-danger">*</span> = 必填项</label>
								<div class="col-sm-9">
									<input type="submit" name="alogin" class="btn btn-success" value="Submit">
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="subprotest" value="1">
				</form>
				<p class="lead">发表申诉后会发生什么？</p>
				<p>
					管理员将收到您的申诉通知。然后，他们将审查封禁是否具有决定性。审核后您会收到回复，通常是指 24 小时内。<br /><br />
					<b>注意:</b> 向我们的管理员发送威胁、责骂或大喊大叫的电子邮件不会让您解除封禁，事实上我们会立即删除您的申诉！
				</p>
			</div>
		</div>
	</div>
</div>

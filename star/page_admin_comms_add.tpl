{if NOT $permission_addban}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>阻挡已增加</b><br />
	新的阻挡已被加入系统。<br /><br />
	<i>重定向回交流页面</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>增加阻挡</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号上。</p>
				<br /><br />
				<div class="table-responsive">
					<table  id="group.details" class="table table-striped">
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入您要禁止的人的昵称。"></i>
									昵称
								</div>
							</td>
							<td>
								<div align="left">
									<input type="hidden" id="fromsub" value="" />
									<input type="text" TABINDEX=1 class="form-control"  id="nickname" name="nickname"/>
								</div>
								<div id="nick.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="要封禁的人的 Steam ID 或Community ID。"></i>
									Steam ID / Community ID
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="steam" name="steam"/>
								</div>
								<div id="steam.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择要阻止的内容 - 聊天或语音"></i>
									阻挡种类
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="1">语音</option>
										<option value="2">聊天</option>
										<option value="3">聊天 &amp; 语音</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="详细解释为什么要制作这个阻挡。"></i>
									阻挡原因
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- 选择原因 -- </option>
										<optgroup label="Violation">
											<option value="Obscene language">淫秽语言</option>
											<option value="Insult players">侮辱玩家</option>
											<option value="Admin disrespect">不尊重管理员</option>
											<option value="Inappropriate Language">不适宜语言</option>
											<option value="Trading">交易</option>
											<option value="Spam in chat/voice">刷屏</option>
											<option value="Advertisement">广告</option>
										</optgroup>
										<option value="other">其他原因</option>
									</select>
									<div id="dreason" style="display:none;">
										<textarea class="form-control"  TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
									</div>
								</div>
								<div id="reason.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择您要阻挡此人多长时间。"></i>
									阻挡时长
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control">
										<option value="0">永久</option>
										<optgroup label="minutes">
											<option value="1">1 分钟</option>
											<option value="5">5 分钟</option>
											<option value="10">10 分钟</option>
											<option value="15">15 分钟</option>
											<option value="30">30 分钟</option>
											<option value="45">45 分钟</option>
										</optgroup>
										<optgroup label="hours">
											<option value="60">1 小时</option>
											<option value="120">2 小时</option>
											<option value="180">3 小时</option>
											<option value="240">4 小时</option>
											<option value="480">8 小时</option>
											<option value="720">12 小时</option>
										</optgroup>
										<optgroup label="days">
											<option value="1440">1 天</option>
											<option value="2880">2 天</option>
											<option value="4320">3 天</option>
											<option value="5760">4 天</option>
											<option value="7200">5 天</option>
											<option value="8640">6 天</option>
										</optgroup>
										<optgroup label="weeks">
											<option value="10080">1 周</option>
											<option value="20160">2 周</option>
											<option value="30240">3 周</option>
										</optgroup>
										<optgroup label="months">
											<option value="43200">1 月</option>
											<option value="86400">2 月</option>
											<option value="129600">3 月</option>
											<option value="259200">6 月</option>
											<option value="518400">12 月</option>
										</optgroup>
									</select>
								</div>
								<div id="length.msg" ></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="增加阻挡" onclick="ProcessBan();" class="ok" id="aban" submit=false}
								&nbsp;
								{sb_button text="返回" onclick="history.go(-1)" class="cancel" id="aback"}
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}

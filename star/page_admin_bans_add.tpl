{if NOT $permission_addban}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>封禁已增加</b><br />
	新封禁已添加到系统中。<br /><br />
	<i>重定向回封禁页面</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>增加封禁</h3>
				<p>有关特定主题的更多信息或帮助，请将鼠标移到问号上。</p>
				<br /><br />
				<div id="banlist" class="table-responsive">
					<table id="group.details" class="table table-striped">
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择是按 Steam ID 还是 IP 地址封禁。"></i>
									封禁种类
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="0">Steam ID</option>
										<option value="1">IP 地址</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="要封禁的人的 Steam ID 或 Community ID。"></i>
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入您要封禁的人的 IP 地址。"></i>
									IP 地址
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="ip" name="ip"/>
								</div>
								<div id="ip.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="详细解释为什么要制定这项封禁。"></i>
									封禁原因
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- 选择原因 -- </option>
										<optgroup label="Hacking">
											<option value="Aimbot">自瞄</option>
											<option value="Antirecoil">无后座</option>
											<option value="Wallhack">透视</option>
											<option value="Spinhack">陀螺</option>
											<option value="Multi-Hack">多重作弊</option>
											<option value="No Smoke">免疫烟雾</option>
											<option value="No Flash">免疫闪光</option>
										</optgroup>
										<optgroup label="Behavior">
											<option value="Team Killing">击杀队友</option>
											<option value="Team Flashing">闪光队友</option>
											<option value="Spamming Mic/Chat">刷屏语音/聊天</option>
											<option value="Inappropriate Spray">不适宜喷漆</option>
											<option value="Inappropriate Language">不适宜发言</option>
											<option value="Inappropriate Name">不适宜名称</option>
											<option value="Ignoring Admins">无视管理员</option>
											<option value="Team Stacking">恶意组队</option>
										</optgroup>
										{if $customreason}
										<optgroup label="Custom">
											{foreach from="$customreason" item="creason"}
											<option value="{$creason}">{$creason}</option>
											{/foreach}
										</optgroup>
										{/if}
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="选择您要封禁此人多长时间。"></i>
									封禁时长
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control"  >
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
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="单击此处上传带有此封禁提交的录像。"></i>
									上传录像
								</div>
							</td>
							<td>
								<div align="left">
									{sb_button text="上传一个录像" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="save" id="udemo" submit=false}
								</div>
								<div id="demo.msg" class="text-primary"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="增加封禁" onclick="ProcessBan();" class="ok" id="aban" submit=false}
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

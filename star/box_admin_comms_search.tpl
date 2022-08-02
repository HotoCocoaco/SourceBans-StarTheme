<div class="row">
	<div class="col-lg-6 mx-auto pt-3">
		<p class="text-center">
			<button class="btn btn-inverse-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			<i class="mdi mdi-magnify"></i>高级搜索
			</button>
		</p>
		{literal}
		<style>
			div input.form-control{margin-top: 8px;}
			div select.form-control{margin-top: 5px;}
		</style>
		{/literal}
		<div class="collapse box-shadow-delayed" id="collapseExample">
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="name" value="name"> 昵称
					</label>
				</div>
				<div class="col-sm-9">
					<input class="form-control" type="text" id="nick" value="" onmouseup="$('name').checked = true">
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="steam_" value="radiobutton"> Steam ID
					</label>
				</div>
				<div class="col-sm-9 row">
					<div class="col-sm-5">
						<input class="form-control" type="text" id="steamid" value="" onmouseup="$('steam_').checked = true">
					</div>
					<div class="col-sm-7">
						<select class="form-control" id="steam_match" onmouseup="$('steam_').checked = true">
							<option value="0" selected>精确匹配</option>
							<option value="1">模糊匹配</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="reason_" value="radiobutton"> 原因
					</label>
				</div>
				<div class="col-sm-9">
					<input class="form-control" type="text" id="ban_reason" value="" onmouseup="$('reason_').checked = true">
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="date" value="radiobutton"> 日期
					</label>
				</div>
				<div class="col-sm-9 row">
					<div class="col-sm-4"><input class="form-control" type="text" id="day" placeholder="DD" maxlength="2" onmouseup="$('date').checked = true"></div>
					<div class="col-sm-4"><input class="form-control" type="text" id="month" placeholder="MM" maxlength="2" onmouseup="$('date').checked = true"></div>
					<div class="col-sm-4"><input class="form-control" type="text" id="year" placeholder="YY" maxlength="4" onmouseup="$('date').checked = true"></div>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="length_" value="radiobutton"> 时长
					</label>
				</div>
				<div class="col-sm-9 row">
					<div class="col-sm-2">
						<select class="form-control" id="length_type" onmouseup="$('length_').checked = true">
							<option value="e" selected title="equal to">=</option>
							<option value="h" title="greater">&gt;</option>
							<option value="l" title="smaller">&lt;</option>
							<option value="eh" title="equal to or greater">&gt;=</option>
							<option value="el" title="equal to or smaller">&lt;=</option>
						</select>
					</div>
					<div class="col-sm-10 row">
						<div class="col-7">
							<select class="form-control" id="length" onmouseup="$('length_').checked = true" onchange="switch_length(this);$('length').setStyle('width', '210px');" onmouseover="if(this.options[this.selectedIndex].value=='other')$('length').setStyle('width', '210px');if(this.options[this.selectedIndex].value=='other')this.focus();" style="width:210px">
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
									<option value="40320">1 月</option>
									<option value="80640">2 月</option>
									<option value="120960">3 月</option>
									<option value="241920">6 月</option>
									<option value="483840">12 月</option>
								</optgroup>
								<option value="other">其他时长(单位: 分钟)</option>
							</select>
						</div>
						<div class="col-5">
							<input type="text" class="form-control" id="other_length" name="other_length" onmouseup="$('length_').checked = true" style="display:none;">
						</div>
					</div>
				</div>
			</div>
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="ban_type_" value="radiobutton"> 种类
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="ban_type" onmouseup="$('ban_type_').checked = true">
						<option selected value="1">禁聊天</option>
						<option value="2">禁语音</option>
					</select>
				</div>
			</div>
			{if !$hideadminname}
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="admin" value="radiobutton"> 管理员
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="ban_admin" onmouseup="$('admin').checked = true">
						{foreach from="$admin_list" item="admin}
						<option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
						{/foreach}
					</select>
				</div>
			</div>
			{/if}
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="where_banned" value="radiobutton"> 服务器
					</label>
				</div>
				<div class="col-sm-9">
					<select class="form-control" id="server" onmouseup="$('where_banned').checked = true">
						<option label="Web Ban" value="0">网页封禁</option>
						{foreach from="$server_list" item="server}
						<option value="{$server.sid}" id="ss{$server.sid}">获取主机名... ({$server.ip}:{$server.port})</option>
						{/foreach}
					</select>
				</div>
			</div>
			{if $is_admin}
			<div class="row mx-5">
				<div class="form-radio col-sm-3">
					<label class="form-check-label">
					<input type="radio" class="form-check-input" name="search_type" id="comment_" value="radiobutton"> 评论
					</label>
				</div>
				<div class="col-sm-9">
					<input class="form-control" type="text" id="ban_comment" value="" onmouseup="$('comment_').checked = true">
				</div>
			</div>
			{/if}
			<div class="row mx-5 pb-3">
				<div class="col-sm-3">
				</div>
				<div class="col-sm-9">
					{sb_button text="Search" onclick="search_blocks();" class="ok searchbtn btn-success" id="searchbtn" submit=false}
				</div>
			</div>
		</div>
	</div>
</div>
{$server_script}

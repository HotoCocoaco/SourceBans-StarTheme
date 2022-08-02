<div id="admin-page-content">
	<div class="row" id="0">
		<!-- div ID 0 is the first 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>你的权限</h3>
					<p>以下是您在此系统上拥有的权限列表。</p>
					<br /><br /> <br />
					<table width="100%" border="0">
						<tr>
							<td width="35%" valign="top">-{$web_permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}-</td>
							<td valign="top">-{$server_permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}-</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="1" style="display:none;">
		<!-- div ID 1 is the second 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>更改密码</h3>
					<div class="table-responsive">
						<table class="table" id="group.details">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="我们需要知道您当前的密码以验证您的身份。"></i>
										现密码
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onblur="xajax_CheckPassword(-{$user_aid}-, $('current').value);" class="form-control" id="current" name="current" />
									</div>
									<div id="current.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="在此处输入您的新密码。<br /><br /><i>最小长度: -{$min_pass_len}-</i>"></i>
										新密码
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" onkeyup="checkYourAcctPass();" id="pass1" value="" name="pass1" />
									</div>
									<div id="pass1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="请再次输入您的新密码，以免出错"></i>
										确认密码
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onkeyup="checkYourAcctPass();" class="form-control" id="pass2" name="pass2" />
									</div>
									<div id="pass2.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="xajax_CheckPassword(-{$user_aid}-, $('current').value);dispatch();" name="button" class="btn ok btn-success" id="button" value="保存" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="取消" />
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="2" style="display:none;">
		<!-- div ID 2 is the third 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>更改服务器密码</h3>
					<p>您需要在游戏服务器中指定此密码，然后才能使用您的管理员权限。<br />点击 <a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank"><b>这里</b></a> 查看更多信息。</p>
					<div class="table-responsive">
						<table class="table" id="group.details">
							-{if $srvpwset}-
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="我们需要知道您当前的密码以验证您的身份。"></i>
										现服务器密码
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onblur="xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);" class="form-control" id="scurrent" name="scurrent" />
									</div>
									<div id="scurrent.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							-{/if}-
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="这里输入你的新密码 <br /><br /><i>最小长度: -{$min_pass_len}-"></i>
										新密码
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" onkeyup="checkYourSrvPass();" id="spass1" value="" name="spass1" />
									</div>
									<div id="spass1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="请再次输入您的新服务器密码，以免出错。"></i>
										确认密码
									</div>
								</td>
								<td>
									<div align="left">
										<input type="password" onkeyup="checkYourSrvPass();" class="form-control" id="spass2" name="spass2" />
									</div>
									<div id="spass2.msg" class="badentry"></div>
								</td>
							</tr>
							-{if $srvpwset}-
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="如果要删除服务器密码，请选中此框"></i>
										移除密码
									</div>
								</td>
								<td>
									<div align="left">
										<input type="checkbox" id="delspass" name="delspass" />
									</div>
								</td>
							</tr>
							-{/if}-
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="-{if $srvpwset}-xajax_CheckSrvPassword(-{$user_aid}-, $('scurrent').value);-{/if}-srvdispatch();" name="button" class="btn ok btn-success" id="button" value="保存" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="取消" />
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" id="3" style="display:none;">
		<!-- div ID 3 is the fourth 'panel' to be shown -->
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>更改电子邮箱</h3>
					<div class="table-responsive">
						<table class="table" id="group.details">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="这是您当前保存的电子邮件地址。"></i>
										当前的电子邮箱
									</div>
								</td>
								<td>
									<div align="left">-{$email}-</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="输入你的密码。"></i>
									密码
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="password" id="emailpw" value="" name="emailpw" />
									</div>
									<div id="emailpw.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="在此处输入您的新电子邮件地址。"></i>
										新的电子邮箱
									</div>
								</td>
								<td>
									<div align="left">
										<input class="form-control" type="text" id="email1" value="" name="email1" />
									</div>
									<div id="email1.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="请再次输入您的新电子邮件地址，以免出错。"></i>
										确认电子邮箱
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" class="form-control" id="email2" name="email2" />
									</div>
									<div id="email2.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<input type="submit" onclick="checkmail();" name="button" class="btn ok btn-success" id="button" value="保存" />
									&nbsp; <input type="submit" onclick="history.go(-1)" name="button" class="btn cancel btn-danger" id="button" value="取消" />
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var error = 0;
			function set_error(count)
			{
				error = count;
			}
		function checkYourAcctPass()
			{
				var err = 0;

				if($('pass1').value.length < -{$min_pass_len}-)
				{
					$('pass1.msg').setStyle('display', 'block');
					$('pass1.msg').setHTML('您的密码必须至少为 -{$min_pass_len}- 字符长度');
					err++;
				}
				else
				{
					$('pass1.msg').setStyle('display', 'none');
				}
				if($('pass2').value != "" && $('pass2').value != $('pass1').value)
				{
					$('pass2.msg').setStyle('display', 'block');
					$('pass2.msg').setHTML('你的密码不匹配');
					err++;
				}else{
					$('pass2.msg').setStyle('display', 'none');
				}
				if(err > 0)
				{
					set_error(1);
					return false;
				}
				else
				{
					set_error(0);
					return true;
				}
			}
			function dispatch()
			{
				if($('current.msg').innerHTML == "密码错误。")
				{
					alert("Incorrect Password");
					return false;
				}
				if(checkYourAcctPass() && error == 0)
				{
					xajax_ChangePassword(-{$user_aid}-, $('pass2').value);
				}
			}
			function checkYourSrvPass()
			{
				if(!$('delspass') || $('delspass').checked == false)
				{
					var err = 0;

					if($('spass1').value.length < -{$min_pass_len}-)
					{
						$('spass1.msg').setStyle('display', 'block');
						$('spass1.msg').setHTML('您的密码必须至少为 -{$min_pass_len}- 字符长度');
						err++;
					}
					else
					{
						$('spass1.msg').setStyle('display', 'none');
					}
					if($('spass2').value != "" && $('spass2').value != $('spass1').value)
					{
						$('spass2.msg').setStyle('display', 'block');
						$('spass2.msg').setHTML('你的密码不匹配');
						err++;
					}else{
						$('spass2.msg').setStyle('display', 'none');
					}
					if(err > 0)
					{
						set_error(1);
						return false;
					}
					else
					{
						set_error(0);
						return true;
					}
				}
				else
				{
					set_error(0);
					return true;
				}
			}
			function srvdispatch()
			{
				-{if $srvpwset}-
				if($('scurrent.msg').innerHTML == "密码错误。")
				{
					alert("Incorrect Password");
					return false;
				}
				-{/if}-
				if(checkYourSrvPass() && error == 0 && (!$('delspass') || $('delspass').checked == false))
				{
					xajax_ChangeSrvPassword(-{$user_aid}-, $('spass2').value);
				}
				if($('delspass').checked == true)
				{
					xajax_ChangeSrvPassword(-{$user_aid}-, 'NULL');
				}
			}
			function checkmail()
			{
				var err = 0;
		        if($('email1').value == "")
		        {
		            $('email1.msg').setStyle('display', 'block');
					$('email1.msg').setHTML('请输入你的新电子邮件地址');
					err++;
				}else{
					$('email1.msg').setStyle('display', 'none');
				}

		        if($('email2').value == "")
		        {
		            $('email2.msg').setStyle('display', 'block');
					$('email2.msg').setHTML('请重新输入你的新电子邮件地址');
					err++;
				}else{
					$('email2.msg').setStyle('display', 'none');
				}

				if(err == 0 && $('email2').value != $('email1').value)
				{
					$('email2.msg').setStyle('display', 'block');
					$('email2.msg').setHTML('输入的电子邮箱不匹配');
					err++;
				}

		        if($('emailpw').value == "")
		        {
		            $('emailpw.msg').setStyle('display', 'block');
					$('emailpw.msg').setHTML('请输入你的密码');
					err++;
				}else{
					$('emailpw.msg').setStyle('display', 'none');
				}

				if(err > 0)
				{
					set_error(1);
					return false;
				}
				else
				{
					set_error(0);
				}
				if(error == 0)
				{
					xajax_ChangeEmail(-{$user_aid}-, $('email2').value, $('emailpw').value);
				}
			}
	</script>
</div>

<h3 class="title text-center">请选择一个选项来管理</h3>
<ul class="nav nav-pills nav-pills-primary nav-pills-icons justify-content-center">
	{if $access_admins}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=admins">
			<i class="menu-icon mdi mdi-account"></i> 管理员设置
		</a>
	</li>
	{/if}
	{if $access_servers}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=servers">
			<i class="menu-icon mdi mdi-server"></i> 服务器设置
		</a>
	</li>
	{/if}
	{if $access_bans}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=bans">
			<i class="menu-icon mdi mdi-do-not-disturb"></i> 封禁
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=comms">
			<i class="menu-icon mdi mdi-microphone-off"></i> 交流
		</a>
	</li>
	{/if}
	{if $access_groups}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=groups">
			<i class="menu-icon mdi mdi-account-multiple"></i> 组设置
		</a>
	</li>
	{/if}
	{if $access_settings}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=settings">
			<i class="menu-icon mdi mdi-settings"></i> 网页面板设置
		</a>
	</li>
	{/if}
	{if $access_mods}
	<li class="nav-item">
		<a class="nav-link" href="index.php?p=admin&amp;c=mods">
			<i class="menu-icon mdi mdi-tune"></i> 管理Mod
		</a>
	</li>
	{/if}
</ul>
<br>
<div class="row">
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-success"></div>
				<p class="text-muted mb-2">版本信息</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2" id='relver'>请稍后...</h1>
					<h5 class="font-weight-medium text-success ml-2">最新发行版 {if $dev} 和最新Git: <span id='svnrev'>请稍后...</span>{/if}</h5>
				</div>
				<div class="d-flex align-items-center">
					<div class="bg-success dot-indicator"></div>
					<p class="text-muted mb-0 ml-2" id='versionmsg'>请稍后...</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-primary"></div>
				<p class="text-muted mb-2">Admin Information</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_admins}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-primary ml-2">总计管理员</h5>
				</div>
				<div class="d-flex align-items-center">
					<i class="menu-icon mdi mdi-marker-check text-primary"></i>
					<p class="text-muted mb-0 ml-2">团队合作使 <span class="text-primary">梦想成真</span>！</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-3 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-warning"></div>
				<p class="text-muted mb-2">服务器信息</p>
				<div class="d-flex align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_servers}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-warning ml-2">总计服务器</h5>
				</div>
				<div class="d-flex align-items-center">
					<i class="menu-icon mdi mdi-marker-check text-warning"></i>
					<p class="text-muted mb-0 ml-2">当你想要 <span class="text-warning">放弃</span> 时想想你的 <span class="text-warning">初心</span>！</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-0 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-danger"></div>
				<p class="text-muted mb-2 pl-0 pt-0 pl-lg-3 pt-lg-3 pl-xl-0 pt-xl-0">封禁信息</p>
				<div class="d-none d-md-flex align-items-top">
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number mb-0" data-to="{$total_bans}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-danger">总计封禁</h5>
					</div>
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number ml-sm-0 mb-0" data-to="{$total_blocks}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-danger">阻挡连接</h5>
					</div>
				</div>
				<div class="d-flex d-md-none align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_bans}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-danger ml-2">总计封禁</h5>
					<h5 class="font-weight-medium mb-2 mx-1 d-none d-sm-flex"> 和 </h5>
					<h1 class="font-weight-medium mb-2 timer count-number ml-2 ml-sm-0" data-to="{$total_blocks}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-danger ml-2">阻挡的连接</h5>
				</div>
				<div class="d-flex align-items-center">
					<div class="bg-success dot-indicator"></div>
					<p class="text-muted mb-2 pl-0 pb-0 pl-lg-3 pb-lg-3 pl-xl-0 pb-xl-0">总计录像大小: <span class="text-danger">{$demosize}</span></p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-0 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-info"></div>
				<p class="text-muted mb-2 pl-0 pt-0 pl-lg-3 pt-lg-3 pl-xl-0 pt-xl-0">申诉信息</p>
				<div class="d-none d-md-flex align-items-top">
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number mb-0" data-to="{$total_protests}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-info">处理中的申诉</h5>
					</div>
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number ml-sm-0 mb-0" data-to="{$archived_protests}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-info">已归档的申诉</h5>
					</div>
				</div>
				<div class="d-flex d-md-none align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_protests}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-info ml-2">处理中</h5>
					<h5 class="font-weight-medium mb-2 mx-1 d-none d-sm-flex"> 和 </h5>
					<h1 class="font-weight-medium mb-2 timer count-number ml-2 ml-sm-0" data-to="{$archived_protests}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-info ml-2">已归档 申诉</h5>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4 grid-margin stretch-card">
		<div class="card aligner-wrapper" style="cursor:pointer;">
			<div class="card-body p-2 p-md-2 p-lg-0 p-xl-4">
				<div class="absolute left top bottom h-100 v-strock-2 bg-dark"></div>
				<p class="text-muted mb-2 pl-0 pt-0 pl-lg-3 pt-lg-3 pl-xl-0 pt-xl-0">提交信息</p>
				<div class="d-none d-md-flex align-items-top">
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number mb-0" data-to="{$total_submissions}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-dark">处理中的提交</h5>
					</div>
					<div class="d-block text-center w-50">
						<h1 class="font-weight-medium timer count-number ml-sm-0 mb-0" data-to="{$archived_submissions}" data-speed="1500"></h1>
						<h5 class="font-weight-medium text-dark">已归档的提交</h5>
					</div>
				</div>
				<div class="d-flex d-md-none align-items-center">
					<h1 class="font-weight-medium mb-2 timer count-number" data-to="{$total_submissions}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-dark ml-2">处理中</h5>
					<h5 class="font-weight-medium mb-2 mx-1 d-none d-sm-flex"> 和 </h5>
					<h1 class="font-weight-medium mb-2 timer count-number ml-2 ml-sm-0" data-to="{$archived_submissions}" data-speed="1500"></h1>
					<h5 class="font-weight-medium text-dark ml-2">已归档 提交</h5>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
xajax_CheckVersion();
</script>

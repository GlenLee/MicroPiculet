<#macro head title charset="UTF-8" lang="zh-CN">
<#compress>
<!doctype html>
<html lang="${lang}">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=${charset}" />
	<meta http-equiv="Content-Language" content="${lang}"/>
	<title>${title}</title>
	<#--<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />-->
	<#--<link rel="stylesheet" type="text/css" href="bootstrap/theme/flatly/bootstrap.min.css" />-->
	<link rel="stylesheet" type="text/css" href="bootstrap/theme/lumen/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/app.css" />
	<script type="text/javascript" src="js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="js/libs/t7/template7.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<#nested>
</head>
</#compress>
</#macro>

<#macro body admin="false" i="1">
<#compress>
<body>
	<div class="blog-masthead">
		<div class="container">
			<nav class="blog-nav">
				<a class="blog-nav-item<#if i == "1"> active</#if>" href="/">积分记录</a>
				<a class="blog-nav-item<#if i == "2"> active</#if>" href="/full">积分汇总</a>
				<#if admin == "true">
					<a class="blog-nav-item<#if i == "3"> active</#if>" href="/admin">考核项管理</a>
					<a class="blog-nav-item<#if i == "4"> active</#if>" href="/log">考核日志</a>
				</#if>
			</nav>
		</div>
	</div>
	<#nested>
	<footer class="blog-footer">
		<p>This service built for <a href="http://pcx.cn">pcx.cn</a> by <a href="https://i.pcx.cn">@glen</a>.</p>
	</footer>
</body>
</html>
</#compress>
</#macro>
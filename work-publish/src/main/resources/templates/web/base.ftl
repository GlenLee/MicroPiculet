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

<#macro body>
<#compress>
<body>
	<#nested>
</body>
</html>
</#compress>
</#macro>
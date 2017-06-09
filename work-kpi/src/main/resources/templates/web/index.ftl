<#include "base.ftl">
<#-- Page head -->
<@head title="积分记录">
	<script type="text/javascript" src="js/libs/echarts/common.min.js"></script>
	<style type="text/css">
		.blog-post .row-two .col-sm-4 { text-align: center; }
		.blog-post .qrcode { width: 90%; margin: 8px; }
	</style>
</@head>

<#-- Page body -->
<@body i="1">
<div class="container">

	<div class="blog-header">
		<h3 class="blog-title">积分记录</h3>
		<p class="lead blog-description">卓诚科技 - 积分发布记录</p>
	</div>

	<div class="row">

		<div class="col-xs-2 col-sm-2">
			<div class="sidebar-module">
				<h4>选择月份</h4>
				<ol class="list-unstyled">
					<li><a href="/{month}">2017年06月</a></li>
					<li><a href="/{month}">2017年05月</a></li>
					<li><a href="/{month}">2017年04月</a></li>
					<li><a href="/{month}">2017年05月</a></li>
					<li><a href="/{month}">2017年03月</a></li>
					<li><a href="/{month}">2017年02月</a></li>
					<li><a href="/{month}">2017年01月</a></li>
					<li><a href="/{month}">2016年12月</a></li>
					<li><a href="/{month}">2016年11月</a></li>
				</ol>
			</div>
		</div><!-- /.blog-sidebar -->

		<div class="col-xs-10 col-sm-10">

			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<th>#</th>
					<th>人员</th>
					<th>事件</th>
					<th>得分</th>
					<th>日期</th>
				</tr>
				</thead>
				<tbody>
				<tr style="border-bottom: 2px solid #9eb">
					<td>1</td>
					<td>柯南</td>
					<td>获得全勤奖积分</td>
					<td>+80</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #fcc">
					<td>2</td>
					<td>孙悟空</td>
					<td>扣减迟到积分</td>
					<td style="color:red">-5</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #9eb">
					<td>3</td>
					<td>草雉素子</td>
					<td>获得强攻奖</td>
					<td>+99</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #9eb">
					<td>4</td>
					<td>杰克</td>
					<td>获得幽灵船长奖</td>
					<td>+10</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #fcc">
					<td>5</td>
					<td>戴安娜·普林斯</td>
					<td>在天堂岛拾获一个男朋友</td>
					<td style="color:red">-50</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #fcc">
					<td>6</td>
					<td>瑞安·雷诺兹</td>
					<td>获得一个火星细胞</td>
					<td style="color:red">-999</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #9eb">
					<td>7</td>
					<td>刘德华</td>
					<td>在长城挖到一块磁铁</td>
					<td>+250</td>
					<td>2017-01-01</td>
				</tr>
				<tr style="border-bottom: 2px solid #9eb">
					<td>8</td>
					<td>阿米尔·汗</td>
					<td>得到两块摔跤金牌</td>
					<td>+100</td>
					<td>2017-01-01</td>
				</tr>
				</tbody>
			</table>

		</div><!-- /.blog-main -->

	</div><!-- /.row -->

</div><!-- /.container -->

<script type="text/html" id="row-tmpl">
	{{#each data}}
	<tr style="border-bottom: 2px solid #9eb">
		<td>{{Id}}</td>
		<td>{{UserName}}</td>
		<td>{{Description}}</td>
		<td>{{Score}}</td>
		<td>{{Date}}</td>
	</tr>
	{{/each}}
</script>
<script type="text/javascript">
//	$(document).ready(function() {
//		$.ajax('/kpi/list', {
//			type: 'GET',
//			dataType: 'json',
//			data: {},
//			success: function (data) {
//				console.log(data);
//				var tmpl = $('#row-tmpl').html();
//				var t7 = Template7.compile(tmpl);
//				$('table.table tbody').html(t7(data));
//			},
//			error: function (err) {
//				console.log(err);
//			}
//		});
//	});
</script>
</@body>
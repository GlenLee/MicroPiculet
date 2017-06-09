<#include "base.ftl">
<#-- Page head -->
<@head title="考核项管理">
</@head>

<#-- Page body -->
<@body admin="true" i="3">
<div class="container">

	<div class="blog-header">
		<h3 class="blog-title">考核项管理</h3>
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

		<div class="col-xs-7 col-sm-7">

			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<th>#</th>
					<th>类型</th>
					<th>事件</th>
					<th>得分</th>
					<th>说明</th>
					<th>创建日期</th>
					<th></th>
				</tr>
				</thead>
				<tbody></tbody>
			</table>

		</div><!-- /.blog-main -->

		<div class="col-xs-3 col-sm-3">

			<form method="post" action="/kpi/save">
				<div class="form-group">
					<label for="Type">类型：</label>
					<select id="Type" name="Type" class="form-control">
						<option value="Score">积分</option>
						<option value="KPI">KPI</option>
					</select>
				</div>
				<div class="form-group">
					<label for="Name">名称：</label>
					<input type="text" class="form-control" id="Name" name="Name" placeholder="" maxlength="128"/>
				</div>
				<div class="form-group">
					<label for="Description">说明：</label>
					<input type="text" class="form-control" id="Description" name="Description" placeholder="" maxlength="64"/>
				</div>
				<div class="form-group">
					<label for="Score">分数：</label>
					<input type="text" class="form-control" id="Score" name="Score" placeholder="" maxlength="8"/>
				</div>
				<button type="button" class="btn btn-default" onclick="save()">保存</button>
			</form>

		</div>

	</div><!-- /.row -->

</div><!-- /.container -->

<script type="text/html" id="project-row-tmpl">
	{{#each data}}
	<tr>
		<th scope="row">{{Id}}</th>
		<td>{{Type}}</td>
		<td>{{Name}}</td>
		<td>{{Score}}</td>
		<td>{{Description}}</td>
		<td>{{CreateDate}}</td>
		<td><a onclick="del({{Id}})">删除</a></td>
	</tr>
	{{/each}}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		load();
	});
	function load() {
		$.ajax('/kpi/list', {
			type: 'GET',
			dataType: 'json',
			data: {},
			success: function (data) {
				console.log(data);
				var tmpl = $('#project-row-tmpl').html();
				var t7 = Template7.compile(tmpl);
				$('table.table tbody').html(t7(data));
			},
			error: function (err) {
				console.log(err);
			}
		});
	}
	function save() {
		$.post('/kpi/save', $('form').serializeArray(), function (data) {
			console.log(data);
			load();
		});
//		console.log($('form').serialize());
//		console.log($('form').serializeArray());
//		console.log($('form').map());
	}
	function del(id) {
		if (confirm('确定要删除？')) {
			$.ajax('/kpi/del/' + id, {
				type: 'DELETE',
				dataType: 'json',
				data: {},
				success: function (data) {
					console.log(data);
					load();
				},
				error: function (err) {
					console.log(err);
				}
			});
		}
	}
</script>
</@body>
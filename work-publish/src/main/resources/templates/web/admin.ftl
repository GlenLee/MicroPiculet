<#include "base.ftl">
<#-- Page head -->
<@head title="首页">
</@head>

<#-- Page body -->
<@body>
<div class="blog-masthead">
	<div class="container">
		<nav class="blog-nav">
			<a class="blog-nav-item" href="/">发布日志</a>
			<a class="blog-nav-item" href="/full">完整日志</a>
			<a class="blog-nav-item active" href="/admin">管理后端</a>
		</nav>
	</div>
</div>

<div class="container">

	<div class="blog-header">
		<h3 class="blog-title">项目及发布管理</h3>
		<p class="lead blog-description">卓诚科技 - 软件测试及发布系统</p>
	</div>

	<div class="row">

		<div class="col-xs-8 col-sm-8">

			<table class="table table-bordered table-striped">
				<thead>
				<tr>
					<th>#</th>
					<th>项目名称</th>
					<th>项目编码</th>
					<th>项目简介</th>
					<th>项目地址</th>
					<th></th>
				</tr>
				</thead>
				<tbody></tbody>
			</table>

		</div>

		<div class="col-xs-3 col-xs-offset-1 col-sm-3 col-sm-offset-1 blog-sidebar">

			<form method="post" action="/project/info">
				<div class="form-group">
					<label for="Name">项目名称：</label>
					<input type="text" class="form-control" id="Name" name="Name" placeholder="" maxlength="128" value="aaa"/>
				</div>
				<div class="form-group">
					<label for="Code">项目编码：</label>
					<input type="text" class="form-control" id="Code" name="Code" placeholder="" maxlength="64" value="ccc"/>
				</div>
				<div class="form-group">
					<label for="Url">项目URL：</label>
					<input type="text" class="form-control" id="Url" name="Url" placeholder="" maxlength="255" value="ddd"/>
				</div>
				<div class="form-group">
					<label for="Description">项目简介：</label>
					<textarea type="text" class="form-control" id="Description" name="Description" placeholder="">eee</textarea>
				</div>
				<button type="submit" class="btn btn-default">保存</button>
			</form>

		</div>

	</div><!-- /.row -->

</div><!-- /.container -->

<script type="text/html" id="project-row-tmpl">
	{{#each data}}
	<tr>
		<th scope="row">{{Id}}</th>
		<td>{{Name}}</td>
		<td>{{Code}}</td>
		<td>{{Description}}</td>
		<td>{{Url}}</td>
		<td><!--编辑 | 删除--></td>
	</tr>
	{{/each}}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax('/project/list', {
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
	});
</script>

<#include "ui-footer.ftl"/>
</@body>
<#include "base.ftl">
<#-- Page head -->
<@head title="首页">
<script type="text/javascript" src="js/libs/echarts/common.min.js"></script>
</@head>

<#-- Page body -->
<@body>
<div class="blog-masthead">
	<div class="container">
		<nav class="blog-nav">
			<a class="blog-nav-item active" href="/">发布日志</a>
			<a class="blog-nav-item" href="/full">完整日志</a>
		</nav>
	</div>
</div>

<div class="container">

	<#include "ui-header.ftl"/>

	<div class="row">

		<div class="col-sm-8 blog-main">

			<div class="blog-post">
				<h3 class="blog-post-title">卓诚科技软件发布系统</h3>
				<p class="blog-post-meta">2017-06-08 by <a>李萨</a></p>

				<div class="col-xs-4 col-sm-4">
					QRCODE
				</div>
				<div class="col-xs-8 col-sm-8">
					<p>本次发布第一版本，更新内容如下：</p>
					<hr>
					<blockquote>
						<ol>
							<li>+ 初始版本</li>
							<li>* 修正BUG</li>
							<li>- 删除无用代码</li>
						</ol>
					</blockquote>
				</div>
			</div>

			<div class="blog-post">
				<h4 class="blog-post-title">卓诚科技软件发布系统</h4>
				<p class="blog-post-meta">2017-06-08 by <a>李萨</a></p>

				<p>本次发布第一版本，更新内容如下：</p>
				<hr>
				<blockquote>
					<ol>
						<li>+ 初始版本</li>
						<li>* 修正BUG</li>
						<li>- 删除无用代码</li>
					</ol>
				</blockquote>
				<pre><code>
					function test() {
						return true;
					}
				</code></pre>
			</div>

			<div class="blog-post">
				<h2 class="blog-post-title">卓诚科技软件发布系统</h2>
				<p class="blog-post-meta">2017-06-08 by <a>李萨</a></p>

				<p>本次发布第一版本，更新内容如下：</p>
				<hr>
				<blockquote>
					<ol>
						<li>+ 初始版本</li>
						<li>* 修正BUG</li>
						<li>- 删除无用代码</li>
					</ol>
				</blockquote>
				<pre><code>
					function test() {
						return true;
					}
				</code></pre>
			</div>

		</div><!-- /.blog-main -->

		<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
			<#include "ui-sidebar.ftl"/>
		</div><!-- /.blog-sidebar -->

	</div><!-- /.row -->

</div><!-- /.container -->

	<#include "ui-footer.ftl"/>
</@body>
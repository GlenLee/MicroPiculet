<#include "base.ftl">
<#-- Page head -->
<@head title="完整日志">
<script type="text/javascript" src="js/libs/qrcode.js"></script>
</@head>

<#-- Page body -->
<@body>
<div class="blog-masthead">
	<div class="container">
		<nav class="blog-nav">
			<a class="blog-nav-item" href="/">发布日志</a>
			<a class="blog-nav-item active" href="/full">完整日志</a>
		</nav>
	</div>
</div>

<div class="container">

	<div class="blog-header">
		<h3 class="blog-title">完整日志</h3>
		<p class="lead blog-description">卓诚科技 - 软件测试及发布系统</p>
	</div>

	<div class="row">

		<div class="col-sm-8 blog-main">

			<div class="blog-post">
				<h3 class="blog-post-title">红河乡镇业务运营管理系统</h3>
				<p class="blog-post-meta">2017-06-08 by <a>李萨</a></p>

				<div class="row row-two">
					<div class="col-xs-4 col-sm-4">
						<div id="qrcode" class="qrcode"></div>
						<script>
							var qrcode = new QRCode('qrcode', {
								text: 'http://pcx.cn',
								width : 200,
								height : 200
							});
						</script>
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
				<div class="alert alert-info" role="alert">
					http://pcx.cn
				</div>
			</div>

			<div class="blog-post">
				<h3 class="blog-post-title">卓诚科技软件发布系统</h3>
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
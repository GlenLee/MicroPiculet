<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Exception !</title>
	<style type="text/css">
		* { font-family: Consolas, "微软雅黑"; }
		.logo { position: absolute; top: 20px; right: 20px; }
		.error { font-size: 24px; padding: 0 20px; }
        .detail { font-size: 18px; padding: 0 20px; }
		.message {font-size: 16px; padding: 10px 20px; line-height: 1.5em; }
		.unhappy { display: none; }
		.emoticon { padding: 10px 20px; font-size: 16px; line-height: 18px; }
	</style>
</head>
<body>

<div class="logo"><a href="/index.jhtml"><div class="logo"><img src="/webpage/pc/img/logo1.png" alt="" style="width:180px;"></div></a></div>

<p class="unhappy">&nbsp;:(</p>
<p class="error">[${timestamp?string("yyyy-MM-dd HH:mm:ss")}] 错误异常: ${status!''} ${error!''}</p>
<p class="detail">Path: ${path!''}</p>
<pre id="emoticon" class="emoticon"></pre>
<pre class="message"><code class="language-java">${message!''}</code></pre>
<pre class="message"><code class="language-java">${trace!''}</code></pre>
<pre class="message"><code class="language-java">${exception!''}</code></pre>
<pre class="message"><code class="language-java">${errors!''}</code></pre>

<script>
	var state = {
		flip: {
			currentFrameIndex: 0,
			right: true
		}
	}
	var flip = function(now, state) {
		var frames = [
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\ \u252C\u2500\u252C',

			'(\\\u00B0\u25A1\u00B0)\\  \u252C\u2500\u252C',
			'(\\\u00B0\u25A1\u00B0)\\  \u252C\u2500\u252C',

			'(-\u00B0\u25A1\u00B0)-  \u252C\u2500\u252C',
			'(-\u00B0\u25A1\u00B0)-  \u252C\u2500\u252C',

			'(\u256F\u00B0\u25A1\u00B0)\u256F    ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F    ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F    ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F    ]',

			'(\u256F\u00B0\u25A1\u00B0)\u256F  \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F  \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F  \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F  \uFE35  \u253B\u2501\u253B',

			'(\u256F\u00B0\u25A1\u00B0)\u256F       [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       [',

			'(\u256F\u00B0\u25A1\u00B0)\u256F       \uFE35  \u252C\u2500\u252C',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       \uFE35  \u252C\u2500\u252C',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       \uFE35  \u252C\u2500\u252C',
			'(\u256F\u00B0\u25A1\u00B0)\u256F       \uFE35  \u252C\u2500\u252C',

			'(\u256F\u00B0\u25A1\u00B0)\u256F                 ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                 ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                 ]',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                 ]',

			'(\u256F\u00B0\u25A1\u00B0)\u256F               \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F               \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F               \uFE35  \u253B\u2501\u253B',
			'(\u256F\u00B0\u25A1\u00B0)\u256F               \uFE35  \u253B\u2501\u253B',

			'(\u256F\u00B0\u25A1\u00B0)\u256F                         [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                         [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                         [',
			'(\u256F\u00B0\u25A1\u00B0)\u256F                         [',

			'(\\\u00B0-\u00B0)\\                            \uFE35  \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                            \uFE35  \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                            \uFE35  \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                            \uFE35  \u252C\u2500\u252C',

			'(\\\u00B0-\u00B0)\\                                     ]',
			'(\\\u00B0-\u00B0)\\                                     ]',
			'(\\\u00B0-\u00B0)\\                                     ]',
			'(\\\u00B0-\u00B0)\\                                     ]',

			'(\\\u00B0-\u00B0)\\                                     \uFE35 \u253B\u2501\u253B',
			'(\\\u00B0-\u00B0)\\                                     \uFE35 \u253B\u2501\u253B',
			'(\\\u00B0-\u00B0)\\                                     \uFE35 \u253B\u2501\u253B',
			'(\\\u00B0-\u00B0)\\                                     \uFE35 \u253B\u2501\u253B',

			'(\\\u00B0-\u00B0)\\                                               [',
			'(\\\u00B0-\u00B0)\\                                               [',
			'(\\\u00B0-\u00B0)\\                                               [',
			'(\\\u00B0-\u00B0)\\                                               [',

			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
			'(\\\u00B0-\u00B0)\\                                              \u252C\u2500\u252C',
		]

		setHash(' '+frames[state.currentFrameIndex], 'flip')


		if (state.currentFrameIndex >= frames.length-1) {
			state.right = false;
		} else if (state.currentFrameIndex <= 0){
			state.right = true
		}

		state.currentFrameIndex += state.right ? 1 : -1

	}
	function setHash(str, title) {
		document.getElementById("emoticon").innerHTML = str;
	}
	var now = 0;
	var tick = function() {
		now += 50;
		flip(now, state["flip"]) // current frame from table of functions
		setTimeout(tick, 50);
	}
	tick();
</script>
<style type="text/css">
	code[class*="language-"],
	pre[class*="language-"] {
		color: black;
		background: none;
		text-shadow: 0 1px white;
		font-family: Consolas, Monaco, 'Andale Mono', 'Ubuntu Mono', monospace;
		text-align: left;
		white-space: pre;
		word-spacing: normal;
		word-break: normal;
		word-wrap: normal;
		line-height: 1.5;

		-moz-tab-size: 4;
		-o-tab-size: 4;
		tab-size: 4;

		-webkit-hyphens: none;
		-moz-hyphens: none;
		-ms-hyphens: none;
		hyphens: none;
	}

	pre[class*="language-"]::-moz-selection, pre[class*="language-"] ::-moz-selection,
	code[class*="language-"]::-moz-selection, code[class*="language-"] ::-moz-selection {
		text-shadow: none;
		background: #b3d4fc;
	}

	pre[class*="language-"]::selection, pre[class*="language-"] ::selection,
	code[class*="language-"]::selection, code[class*="language-"] ::selection {
		text-shadow: none;
		background: #b3d4fc;
	}

	@media print {
		code[class*="language-"],
		pre[class*="language-"] {
			text-shadow: none;
		}
	}

	/* Code blocks */
	pre[class*="language-"] {
		padding: 1em;
		margin: .5em 0;
		overflow: auto;
	}

	:not(pre) > code[class*="language-"],
	pre[class*="language-"] {
		background: #f5f2f0;
	}

	/* Inline code */
	:not(pre) > code[class*="language-"] {
		padding: .1em;
		border-radius: .3em;
		white-space: normal;
	}

	.token.comment,
	.token.prolog,
	.token.doctype,
	.token.cdata {
		color: slategray;
	}

	.token.punctuation {
		color: #999;
	}

	.namespace {
		opacity: .7;
	}

	.token.property,
	.token.tag,
	.token.boolean,
	.token.number,
	.token.constant,
	.token.symbol,
	.token.deleted {
		color: #905;
	}

	.token.selector,
	.token.attr-name,
	.token.string,
	.token.char,
	.token.builtin,
	.token.inserted {
		color: #690;
	}

	.token.operator,
	.token.entity,
	.token.url,
	.language-css .token.string,
	.style .token.string {
		color: #a67f59;
		background: hsla(0, 0%, 100%, .5);
	}

	.token.atrule,
	.token.attr-value,
	.token.keyword {
		color: #07a;
	}

	.token.function {
		color: #DD4A68;
	}

	.token.regex,
	.token.important,
	.token.variable {
		color: #e90;
	}

	.token.important,
	.token.bold {
		font-weight: bold;
	}
	.token.italic {
		font-style: italic;
	}

	.token.entity {
		cursor: help;
	}
	.token.localclass {
		color: #f00;
	}
</style>
<script>
	var _self="undefined"!=typeof window?window:"undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope?self:{},Prism=function(){var e=/\blang(?:uage)?-(\w+)\b/i,t=0,n=_self.Prism={manual:_self.Prism&&_self.Prism.manual,util:{encode:function(e){return e instanceof a?new a(e.type,n.util.encode(e.content),e.alias):"Array"===n.util.type(e)?e.map(n.util.encode):e.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/\u00a0/g," ")},type:function(e){return Object.prototype.toString.call(e).match(/\[object (\w+)\]/)[1]},objId:function(e){return e.__id||Object.defineProperty(e,"__id",{value:++t}),e.__id},clone:function(e){var t=n.util.type(e);switch(t){case"Object":var a={};for(var r in e)e.hasOwnProperty(r)&&(a[r]=n.util.clone(e[r]));return a;case"Array":return e.map&&e.map(function(e){return n.util.clone(e)})}return e}},languages:{extend:function(e,t){var a=n.util.clone(n.languages[e]);for(var r in t)a[r]=t[r];return a},insertBefore:function(e,t,a,r){r=r||n.languages;var l=r[e];if(2==arguments.length){a=arguments[1];for(var i in a)a.hasOwnProperty(i)&&(l[i]=a[i]);return l}var o={};for(var s in l)if(l.hasOwnProperty(s)){if(s==t)for(var i in a)a.hasOwnProperty(i)&&(o[i]=a[i]);o[s]=l[s]}return n.languages.DFS(n.languages,function(t,n){n===r[e]&&t!=e&&(this[t]=o)}),r[e]=o},DFS:function(e,t,a,r){r=r||{};for(var l in e)e.hasOwnProperty(l)&&(t.call(e,l,e[l],a||l),"Object"!==n.util.type(e[l])||r[n.util.objId(e[l])]?"Array"!==n.util.type(e[l])||r[n.util.objId(e[l])]||(r[n.util.objId(e[l])]=!0,n.languages.DFS(e[l],t,l,r)):(r[n.util.objId(e[l])]=!0,n.languages.DFS(e[l],t,null,r)))}},plugins:{},highlightAll:function(e,t){var a={callback:t,selector:'code[class*="language-"], [class*="language-"] code, code[class*="lang-"], [class*="lang-"] code'};n.hooks.run("before-highlightall",a);for(var r,l=a.elements||document.querySelectorAll(a.selector),i=0;r=l[i++];)n.highlightElement(r,e===!0,a.callback)},highlightElement:function(t,a,r){for(var l,i,o=t;o&&!e.test(o.className);)o=o.parentNode;o&&(l=(o.className.match(e)||[,""])[1].toLowerCase(),i=n.languages[l]),t.className=t.className.replace(e,"").replace(/\s+/g," ")+" language-"+l,o=t.parentNode,/pre/i.test(o.nodeName)&&(o.className=o.className.replace(e,"").replace(/\s+/g," ")+" language-"+l);var s=t.textContent,u={element:t,language:l,grammar:i,code:s};if(n.hooks.run("before-sanity-check",u),!u.code||!u.grammar)return u.code&&(u.element.textContent=u.code),n.hooks.run("complete",u),void 0;if(n.hooks.run("before-highlight",u),a&&_self.Worker){var g=new Worker(n.filename);g.onmessage=function(e){u.highlightedCode=e.data,n.hooks.run("before-insert",u),u.element.innerHTML=u.highlightedCode,r&&r.call(u.element),n.hooks.run("after-highlight",u),n.hooks.run("complete",u)},g.postMessage(JSON.stringify({language:u.language,code:u.code,immediateClose:!0}))}else u.highlightedCode=n.highlight(u.code,u.grammar,u.language),n.hooks.run("before-insert",u),u.element.innerHTML=u.highlightedCode,r&&r.call(t),n.hooks.run("after-highlight",u),n.hooks.run("complete",u)},highlight:function(e,t,r){var l=n.tokenize(e,t);return a.stringify(n.util.encode(l),r)},tokenize:function(e,t){var a=n.Token,r=[e],l=t.rest;if(l){for(var i in l)t[i]=l[i];delete t.rest}e:for(var i in t)if(t.hasOwnProperty(i)&&t[i]){var o=t[i];o="Array"===n.util.type(o)?o:[o];for(var s=0;s<o.length;++s){var u=o[s],g=u.inside,c=!!u.lookbehind,h=!!u.greedy,f=0,d=u.alias;if(h&&!u.pattern.global){var p=u.pattern.toString().match(/[imuy]*$/)[0];u.pattern=RegExp(u.pattern.source,p+"g")}u=u.pattern||u;for(var m=0,y=0;m<r.length;y+=r[m].length,++m){var v=r[m];if(r.length>e.length)break e;if(!(v instanceof a)){u.lastIndex=0;var b=u.exec(v),k=1;if(!b&&h&&m!=r.length-1){if(u.lastIndex=y,b=u.exec(e),!b)break;for(var w=b.index+(c?b[1].length:0),_=b.index+b[0].length,P=m,A=y,j=r.length;j>P&&_>A;++P)A+=r[P].length,w>=A&&(++m,y=A);if(r[m]instanceof a||r[P-1].greedy)continue;k=P-m,v=e.slice(y,A),b.index-=y}if(b){c&&(f=b[1].length);var w=b.index+f,b=b[0].slice(f),_=w+b.length,x=v.slice(0,w),O=v.slice(_),S=[m,k];x&&S.push(x);var N=new a(i,g?n.tokenize(b,g):b,d,b,h);S.push(N),O&&S.push(O),Array.prototype.splice.apply(r,S)}}}}}return r},hooks:{all:{},add:function(e,t){var a=n.hooks.all;a[e]=a[e]||[],a[e].push(t)},run:function(e,t){var a=n.hooks.all[e];if(a&&a.length)for(var r,l=0;r=a[l++];)r(t)}}},a=n.Token=function(e,t,n,a,r){this.type=e,this.content=t,this.alias=n,this.length=0|(a||"").length,this.greedy=!!r};if(a.stringify=function(e,t,r){if("string"==typeof e)return e;if("Array"===n.util.type(e))return e.map(function(n){return a.stringify(n,t,e)}).join("");var l={type:e.type,content:a.stringify(e.content,t,r),tag:"span",classes:["token",e.type],attributes:{},language:t,parent:r};if("comment"==l.type&&(l.attributes.spellcheck="true"),e.alias){var i="Array"===n.util.type(e.alias)?e.alias:[e.alias];Array.prototype.push.apply(l.classes,i)}n.hooks.run("wrap",l);var o=Object.keys(l.attributes).map(function(e){return e+'="'+(l.attributes[e]||"").replace(/"/g,"&quot;")+'"'}).join(" ");return"<"+l.tag+' class="'+l.classes.join(" ")+'"'+(o?" "+o:"")+">"+l.content+"</"+l.tag+">"},!_self.document)return _self.addEventListener?(_self.addEventListener("message",function(e){var t=JSON.parse(e.data),a=t.language,r=t.code,l=t.immediateClose;_self.postMessage(n.highlight(r,n.languages[a],a)),l&&_self.close()},!1),_self.Prism):_self.Prism;var r=document.currentScript||[].slice.call(document.getElementsByTagName("script")).pop();return r&&(n.filename=r.src,!document.addEventListener||n.manual||r.hasAttribute("data-manual")||("loading"!==document.readyState?window.requestAnimationFrame?window.requestAnimationFrame(n.highlightAll):window.setTimeout(n.highlightAll,16):document.addEventListener("DOMContentLoaded",n.highlightAll))),_self.Prism}();"undefined"!=typeof module&&module.exports&&(module.exports=Prism),"undefined"!=typeof global&&(global.Prism=Prism);
	Prism.languages.css={comment:/\/\*[\w\W]*?\*\//,atrule:{pattern:/@[\w-]+?.*?(;|(?=\s*\{))/i,inside:{rule:/@[\w-]+/}},url:/url\((?:(["'])(\\(?:\r\n|[\w\W])|(?!\1)[^\\\r\n])*\1|.*?)\)/i,selector:/[^\{\}\s][^\{\};]*?(?=\s*\{)/,string:{pattern:/("|')(\\(?:\r\n|[\w\W])|(?!\1)[^\\\r\n])*\1/,greedy:!0},property:/(\b|\B)[\w-]+(?=\s*:)/i,important:/\B!important\b/i,"function":/[-a-z0-9]+(?=\()/i,punctuation:/[(){};:]/},Prism.languages.css.atrule.inside.rest=Prism.util.clone(Prism.languages.css),Prism.languages.markup&&(Prism.languages.insertBefore("markup","tag",{style:{pattern:/(<style[\w\W]*?>)[\w\W]*?(?=<\/style>)/i,lookbehind:!0,inside:Prism.languages.css,alias:"language-css"}}),Prism.languages.insertBefore("inside","attr-value",{"style-attr":{pattern:/\s*style=("|').*?\1/i,inside:{"attr-name":{pattern:/^\s*style/i,inside:Prism.languages.markup.tag.inside},punctuation:/^\s*=\s*['"]|['"]\s*$/,"attr-value":{pattern:/.+/i,inside:Prism.languages.css}},alias:"language-css"}},Prism.languages.markup.tag));
	Prism.languages.clike={comment:[{pattern:/(^|[^\\])\/\*[\w\W]*?\*\//,lookbehind:!0},{pattern:/(^|[^\\:])\/\/.*/,lookbehind:!0}],string:{pattern:/(["'])(\\(?:\r\n|[\s\S])|(?!\1)[^\\\r\n])*\1/,greedy:!0},"class-name":{pattern:/((?:\b(?:class|interface|extends|implements|trait|instanceof|new)\s+)|(?:catch\s+\())[a-z0-9_\.\\]+/i,lookbehind:!0,inside:{punctuation:/(\.|\\)/}},keyword:/\b(if|else|while|do|for|return|in|instanceof|function|new|try|throw|catch|finally|null|break|continue)\b/,"boolean":/\b(true|false)\b/,"function":/[a-z0-9_]+(?=\()/i,number:/\b-?(?:0x[\da-f]+|\d*\.?\d+(?:e[+-]?\d+)?)\b/i,operator:/--?|\+\+?|!=?=?|<=?|>=?|==?=?|&&?|\|\|?|\?|\*|\/|~|\^|%/,punctuation:/[{}[\];(),.:]/};
	Prism.languages.javascript=Prism.languages.extend("clike",{keyword:/\b(as|async|await|break|case|catch|class|const|continue|debugger|default|delete|do|else|enum|export|extends|finally|for|from|function|get|if|implements|import|in|instanceof|interface|let|new|null|of|package|private|protected|public|return|set|static|super|switch|this|throw|try|typeof|var|void|while|with|yield)\b/,number:/\b-?(0x[\dA-Fa-f]+|0b[01]+|0o[0-7]+|\d*\.?\d+([Ee][+-]?\d+)?|NaN|Infinity)\b/,"function":/[_$a-zA-Z\xA0-\uFFFF][_$a-zA-Z0-9\xA0-\uFFFF]*(?=\()/i,operator:/--?|\+\+?|!=?=?|<=?|>=?|==?=?|&&?|\|\|?|\?|\*\*?|\/|~|\^|%|\.{3}/}),Prism.languages.insertBefore("javascript","keyword",{regex:{pattern:/(^|[^\/])\/(?!\/)(\[.+?]|\\.|[^\/\\\r\n])+\/[gimyu]{0,5}(?=\s*($|[\r\n,.;})]))/,lookbehind:!0,greedy:!0}}),Prism.languages.insertBefore("javascript","string",{"template-string":{pattern:/`(?:\\\\|\\?[^\\])*?`/,greedy:!0,inside:{interpolation:{pattern:/\$\{[^}]+\}/,inside:{"interpolation-punctuation":{pattern:/^\$\{|\}$/,alias:"punctuation"},rest:Prism.languages.javascript}},string:/[\s\S]+/}}}),Prism.languages.markup&&Prism.languages.insertBefore("markup","tag",{script:{pattern:/(<script[\w\W]*?>)[\w\W]*?(?=<\/script>)/i,lookbehind:!0,inside:Prism.languages.javascript,alias:"language-javascript"}}),Prism.languages.js=Prism.languages.javascript;
	Prism.languages.java=Prism.languages.extend("clike",{keyword:/\b(abstract|continue|for|new|switch|assert|default|goto|package|synchronized|boolean|do|if|private|this|break|double|implements|protected|throw|byte|else|import|public|throws|case|enum|instanceof|return|transient|catch|extends|int|short|try|char|final|interface|static|void|class|finally|long|strictfp|volatile|const|float|native|super|while)\b/,number:/\b0b[01]+\b|\b0x[\da-f]*\.?[\da-fp\-]+\b|\b\d*\.?\d+(?:e[+-]?\d+)?[df]?\b/i,operator:{pattern:/(^|[^.])(?:\+[+=]?|-[-=]?|!=?|<<?=?|>>?>?=?|==?|&[&=]?|\|[|=]?|\*=?|\/=?|%=?|\^=?|[?:~])/m,lookbehind:!0}}),Prism.languages.insertBefore("java","function",{annotation:{alias:"punctuation",pattern:/(^|[^.])@\w+/,lookbehind:!0}});
</script>
</body>
</html>
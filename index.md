---
layout: default
---

<div class="jumbotron text-center">
	<div class="container">
		<h1>Rick has <noscript>called</noscript>
		<script>
			document.write(["called", "howled", "screeched", "shrieked", "squalled", "squealed", "yelped", "screamed", "bawled", "bellowed", "cried", "hollered", "roared", "shouted", "exclaimed"][Math.floor(Math.random() * 14 - 1)]);
		</script>
		 Carl's name <span id="odometer" class="odometer">000
		<script>
			setTimeout(function() {
				odometer.textContent = {% assign total = 0 %}{% for ep in site.data.episodes %}{% assign total = total | plus: ep.count %}{% endfor %}{{total}};
			}, 1000);
		</script>
		</span> times</h1>
		<audio id="caaarl" src="caaarl.mp3" preload="none">
			Your browser does not support the audio element. Perhaps you should upgrade to <a href="//google.com/chrome">one that does</a> to enjoy the sound of Caaarl.
		</audio>
		<p><a class="btn btn-primary btn-lg" role="button" onclick="document.getElementById('caaarl').play()">Hear him say it</a></p>
	</div>
</div>
<div class="container">
	<div id="chart"></div>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Episode</th>
					<th>Title</th>
					<th># of Carls</th>
				</tr>
			</thead>
			<tbody>
				{% for ep in site.data.episodes %}
				<tr>
					<td>S{% if ep.season < 10 %}0{% endif %}{{ ep.season }}E{% if ep.episode < 10 %}0{% endif %}{{ ep.episode}}</td>
					<td>{{ ep.title }}<span class="pull-right">{% if ep.amazon != null %}<a href="//amzn.com/{{ ep.amazon }}/?tag=caaarl-20" target="_blank" title="Watch on Amazon Instant"><img class="social" src="/images/glyphicons/social-8-amazon.png" srcset="/images/glyphicons/social-8-amazon@2x.png 2x, /images/glyphicons/social-8-amazon@3x.png 3x"></a>{% endif %}{% if ep.netflix != null %}<a href="//netflix.com/watch/{{ ep.netflix }}" target="_blank" title="Watch on Netflix" class="pull-right"><img class="social" src="/images/glyphicons/social-56-netflix.png" srcset="/images/glyphicons/social-56-netflix@2x.png 2x, /images/glyphicons/social-56-netflix@3x.png 3x"></a>{% endif %}{% if ep.youtube != null %}<a href="//youtu.be/{{ ep.youtube }}" target="_blank" title="Watch on YouTube"><img class="social" src="/images/glyphicons/social-23-youtube.png" srcset="/images/glyphicons/social-23-youtube@2x.png 2x, /images/glyphicons/social-23-youtube@3x.png 3x"></a>{% endif %}</span></td>
					<td>{% if ep.count != null %}{{ ep.count }}{% else %}-{% endif %}</td>
				</tr>
				{% endfor %}
			</tbody>
		</table>
	</div>
</div>

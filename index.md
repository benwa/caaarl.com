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
			Your broswer does not support the audio element. Perhaps you should upgrade to <a href="http://google.com/chrome">one that does</a> to enjoy the sound of Caaarl.
		</audio>
		<p><a class="btn btn-primary btn-lg" role="button" onclick="document.getElementById('caaarl').play()">Hear him say it</a></p>
	</div>
</div>
<div class="container">
	<div class="row-fluid">
		<div class="col-md-9 table-responsive" style="padding-left: 0;">
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
						<td>{{ ep.id }}</td>
						<td>{{ ep.title }}{% if ep.asin != null %}<a href="http://amazon.com/dp/{{ ep.asin }}/?tag=caaarl-20" target="_blank" title="Watch on Amazon Instant" class="social amazon pull-right"></a>{% endif %}</td>
						<td>{% if ep.count != null %}{{ ep.count }}{% else %}-{% endif %}</td>
					</tr>
					{% endfor %}
				</tbody>
			</table>
		</div>
		{% include supportUs.html %}
	</div>
</div>
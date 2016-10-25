---
layout: default
---

<div class='jumbotron jumbotron-fluid text-xs-center'>
	<div class='container'>
		<h1>Rick has <noscript>called</noscript>
		<script>
			document.write(['called', 'howled', 'screeched', 'shrieked', 'squalled', 'squealed', 'yelped', 'screamed', 'bawled', 'bellowed', 'cried', 'hollered', 'roared', 'shouted', 'exclaimed'][Math.floor(Math.random() * 15)]);
		</script>
		 Carl's name <span id='odometer' class='odometer'>000
		<script>
			setTimeout(function() {
				odometer.textContent = {% assign total = 0 %}{% for ep in site.data.episodes %}{% assign total = total | plus: ep.count %}{% endfor %}{{total}};
			}, 1000);
		</script>
		</span> times</h1>
		<audio id='caaarl' src='caaarl.mp3' preload='none'>
			Your browser does not support the audio element. Perhaps you should upgrade to <a href='//google.com/chrome'>one that does</a> to enjoy the sound of Caaarl.
		</audio>
		<p class='hidden-print'><button class='btn btn-outline-primary btn-lg' onclick='document.getElementById("caaarl").play()'>Hear him say it</button></p>
	</div>
</div>
<div class='container'>
	<div id='chart'></div>
	<div class='table-responsive'>
		<table class='table table-striped'>
			<thead>
				<tr>
					<th>Episode</th>
					<th>Title</th>
					<th class='hidden-print'></th>
					<th># of Carls</th>
				</tr>
			</thead>
			<tbody>
				{% for ep in site.data.episodes %}
				<tr>
					<th scope='row' class='align-middle'>S{{ ep.season | prepend: '00' | slice: -2, 2 }}E{{ ep.episode | prepend: '00' | slice: -2, 2 }}</th>
					<td class='align-middle'>{{ ep.title }}</td>
					<td class='align-middle float-xs-right hidden-print'>
						<ul class='list-inline'>
							{% unless ep.amazon == null %}<li class='list-inline-item'><a href='//amzn.com/{{ ep.amazon }}' target='_blank' title='Watch on Amazon Instant'><img class='social' src='/images/glyphicons/social-8-amazon.png' srcset='/images/glyphicons/social-8-amazon@2x.png 2x, /images/glyphicons/social-8-amazon@3x.png 3x'></a></li>{% endunless %}
							{% unless ep.netflix == null %}<li class='list-inline-item'><a href='//netflix.com/watch/{{ ep.netflix }}' target='_blank' title='Watch on Netflix'><img class='social' src='/images/glyphicons/social-56-netflix.png' srcset='/images/glyphicons/social-56-netflix@2x.png 2x, /images/glyphicons/social-56-netflix@3x.png 3x'></a></li>{% endunless %}
							{% unless ep.youtube == null %}<li class='list-inline-item'><a href='//youtu.be/{{ ep.youtube }}' target='_blank' title='Watch on YouTube'><img class='social' src='/images/glyphicons/social-23-youtube.png' srcset='/images/glyphicons/social-23-youtube@2x.png 2x, /images/glyphicons/social-23-youtube@3x.png 3x'></a></li>{% endunless %}
						</ul>
					</td>
					<td>{% unless ep.count == null %}{{ ep.count }}{% else %}-{% endunless %}</td>
				</tr>
				{% endfor %}
			</tbody>
		</table>
	</div>
</div>
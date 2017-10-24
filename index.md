---
layout: default
---

<div class='jumbotron jumbotron-fluid text-center'>
	<div class='container'>
		<h1>Rick has <noscript>called</noscript>
		<script>
			document.write(['called', 'howled', 'screeched', 'shrieked', 'squalled', 'squealed', 'yelped', 'screamed', 'bawled', 'bellowed', 'cried', 'hollered', 'roared', 'shouted', 'exclaimed'][Math.floor(Math.random() * 15)]);
		</script>
		 Carl's name <span id='odometer' class='odometer'>000
		{%- assign total = 0 -%}
		{%- for ep in site.data.episodes -%}
		{%- assign total = total | plus: ep.count -%}
		{%- endfor -%}
		Carl's name <span id='odometer' class='odometer'><noscript>{{total}}</noscript>
		<script>
			odometer.textContent = '000';
			setTimeout(function() {
				odometer.textContent = {{total}};
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
				{%- for ep in site.data.episodes -%}
				<tr>
					<th scope='row' class='align-middle'>S{{ ep.season | prepend: '00' | slice: -2, 2 }}E{{ ep.episode | prepend: '00' | slice: -2, 2 }}</th>
					<td class='align-middle'>{{ ep.title }}</td>
					<td class='align-middle float-right hidden-print'>
						<ul class='list-inline mb-0'>
							{%- unless ep.amazon == null -%}
							<li class='list-inline-item'><a href='https://amzn.com/{{ ep.amazon }}' target='_blank' rel='noopener' title='Watch on Amazon Instant'><img class='social' src='/images/amazon.svg' width='24px' height='24px' alt='Watch on Amazon Instant'></a></li>
							{%- endunless -%}
							{%- unless ep.netflix == null -%}
							<li class='list-inline-item'><a href='https://netflix.com/watch/{{ ep.netflix }}' target='_blank' rel='noopener' title='Watch on Netflix'><img class='social' src='/images/netflix.svg' width='24px' height='24px' alt='Watch on Netflix'></a></li>
							{%- endunless -%}
							{%- unless ep.youtube == null -%}
							<li class='list-inline-item'><a href='https://youtu.be/{{ ep.youtube }}' target='_blank' rel='noopener' title='Watch on YouTube'><img class='social' src='/images/youtube-play.svg' width='24px' height='24px' alt='Watch on YouTube'></a></li>
							{%- endunless -%}
						</ul>
					</td>
					<td class='align-middle'>
					{%- unless ep.count == null -%}
					{{ ep.count }}
					{%- else -%}
					-
					{%- endunless -%}</td>
				</tr>
				{%- endfor -%}
			</tbody>
		</table>
	</div>
</div>

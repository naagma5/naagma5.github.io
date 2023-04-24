---
layout: page
title: Home
id: home
permalink: /
---



<div style="padding: 3em 1em; background:rgba(254,246,232,1); border-radius: 4px;">
  <h1 class="text-center"> Mind Blend Cafe 🌱 </h1>
  <div class="line text-center"></div><br><br>
  <h5 class="text-center">Explore, connect, evolve</h5>
</div>
<br>
<div class="home-page-grid-containers">
	<div> 
    <img class="home-page-logo"  src="assets/img/MB_Cafe_LOGO_nobkgd.png">
  </div>
  <div>
	  <h2>Welcome to my digital thought cafe </h2>
    <h4>Get cozy with me as I explore ideas, connect concepts, and evolve my thoughts into insights!</h4>
  </div>
</div>

<br>
<div class="home-page-grid-containers">
  <div>
      <img src="assets/img/coffee_beans.jpg">
      <h2><a href="#">Blend</a></h2>
			<h5>Mixing and matching thoughts, feelings, experiences, and ideas</h5>
  </div>
  <div>
      <img src="assets/img/coffee_brew.jpg">
      <h2><a href="#">Brew</a></h2>
    <h5>Extracting insights from different "Blends"</h5>
  </div>
</div>






This digital garden template is free, open-source, and [available on GitHub here](https://github.com/maximevaillancourt/digital-garden-jekyll-template).

The easiest way to get started is to read this [step-by-step guide explaining how to set this up from scratch](https://maximevaillancourt.com/blog/setting-up-your-own-digital-garden-with-jekyll).

<strong>Recently updated notes</strong>

<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>

---
layout: page
title: test
id: test
permalink: /test
---

<div style="padding: 1em; background:rgba(254,246,232,1); border-radius: 4px;">
  <div>
  <h3> Welcome to </h3>
  </div>
  <div> 
    <img class="home-page-logo"  src="assets/img/MB_Cafe_LOGO_nobkgd.png">
  </div>
  <div>
  <h1> Mind Blend Cafe! </h1>
  </div>
  <div>
  <h6> Get cozy with me as I explore, connect, and evolve my ideas into insights </h6>
  </div>
</div>



<div class="line-bottom"></div>

<div class="row">
<div class="col-4">
<h4>Mood</h4>
<img style="height:300px;" src="assets/img/today.jpeg"><br>
</div>
<div class="col-4">
<h4>Ambience</h4>
<iframe width="100%" height="300" src="https://www.youtube-nocookie.com/embed/CvZHO_1l3uY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>
<div class="col-4">
<h4>Tunes</h4>
<iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/2e92nJZ9oYznMvGfjf5P84?utm_source=generator" width="100%" height="300" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
</div>
</div>



<div class="row">
  <div class="col">
    <h3> The Blend </h3>
    <h5 class= "padding-bb"> Thoughts, feelings, experiences </h5>
    <div style="background:#F3A11E;">
      <div>{% include notes_graph.html %}</div>
    </div>
  </div>
</div>

<div class="col-3">
<h3>Brews</h3>
      <h5 class= "padding-bb"> Extracted insights </h5>
      <img class= "img-blend" src="assets/img/coffee_brew.jpg"><br>
      <p> <strong> Featured: </strong> </p>
      <ul>
      <li><a class="internal-link" href="/mind-blend-cafe-the-backstory">Mind Blend Cafe - The Backstory</a></li>
      <li><a class="internal-link" href="/what-is-mind-blend-cafe?">What is Mind Blend Cafe?</a></li>
      </ul>
      <p> <strong>Recently updated: </strong></p>
      <ul>
        {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
        {% for note in recent_notes limit: 5 %}
        <li>
          {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ note.url }}">{{ note.title }}</a>
        </li>
        {% endfor %}
      </ul>
</div>
</div>




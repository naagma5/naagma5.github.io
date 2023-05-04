---
layout: page
title: Home
id: home
permalink: /
---




<div style="padding: 1em; background:rgba(254,246,232,1); border-radius: 4px;">
  <div id="notes-entry-container-home">
    <div> 
      <img class="home-page-logo"  src="assets/img/MB_Cafe_LOGO_nobkgd.png">
    </div>
    <div>
      <h3> Welcome to </h3>
      <h1> Mind Blend Cafe  </h1>
      <div class="line"></div><br>
      <h5>Naagma's digital thought cafe 🌱</h5>
    </div>
    <div>
      <h1></h1>
    </div>
  </div>
</div>
<br>



<div class="line-bottom"></div>

#### *Get cozy with me as I explore, connect, and evolve my ideas into insights*



<div>
  <br>
  <div id="notes-entry-container-home">
    <side>
        <h3>Today</h3>
        <h5 class= "padding-bb"> Vibes </h5>
        <img class= "img-blend" src="assets/img/IMG_2505.jpg"><br>
        <p> <strong> Ambience: </strong> </p>
        <iframe width="100%" height="300" src="https://www.youtube-nocookie.com/embed/r24SH2qF5mA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <p> <strong>Playlist: </strong></p>
        <small style="font-size: 12px"> **Log into Spotify in your web browser to hear the full playlist!** </small>
        <iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/2e92nJZ9oYznMvGfjf5P84?utm_source=generator" width="100%" height="300" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
      </side>
    <content>
      <h3> The Blend </h3>
      <h5 class= "padding-bb"> Thoughts, feelings, experiences </h5>
      <img class= "img-blend" src="assets/img/coffee_beans.jpg"><br>
      <div>
        {% include notes_graph.html %}
      </div>
    </content>
    <side>
      <h3>Brews</h3>
      <h5 class= "padding-bb"> Extracted insights </h5>
      <img class= "img-blend" src="assets/img/coffee_brew.jpg"><br>
      <p> <strong> Featured: </strong> </p>
      <ul>
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
    </side>
  </div>
</div>






---
layout: page
title: Cafe
id: cafe
permalink: /cafe
---
<script>
function moodImgSelect(img) {
  const moodImg = ["img1", "img2", "img3", "img4", "img5"];
  moodImg.forEach(resetMoodImg);
  var x = document.getElementById(img);
  x.style.border = "5px solid #555";
  var now_moodImg = document.getElementById(img).src;
  document.getElementById('now_moodImgID').src = now_moodImg;
}

function resetMoodImg(item) {
  img_reset = document.getElementById(item);
  img_reset.style.border = "none";
}



function ambSelect(amb,amb_frame) {
  const moodImg = ["amb1", "amb2", "amb3", "amb4", "amb5"];
  moodImg.forEach(resetAmb);
  var y = document.getElementById(amb);
  y.style.border = "5px solid #555";
  var now_amb = document.getElementById(amb_frame).src;
  document.getElementById('now_ambID').src = now_amb;
}

function resetAmb(item) {
  img_reset = document.getElementById(item);
  img_reset.style.border = "none";
}
</script>

<div style="padding: 1em; background:rgba(254,246,232,1); border-radius: 4px;">
  <div id="notes-entry-container-home">
    <div> 
      <img class="home-page-logo"  src="assets/img/MB_Cafe_LOGO_nobkgd.png">
    </div>
    <div>
      <h4>Welcome to</h4>
      <h2>Mind Blend Cafe 🌱</h2>
      <div class="line"></div><br>
    </div>
  </div>
</div>
<br>


<!-- 
<div>
    <h3>Today</h3>
    <h5 class= "padding-bb"> Vibes </h5>
    <img src="assets/img/today_june13.jpeg"><br>
    <p> <strong> Ambience: </strong> </p>
    <iframe width="100%" height="300" src="https://www.youtube-nocookie.com/embed/76KNAVn8Q_I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    <p> <strong>Playlist: </strong></p>
    <small style="font-size: 12px"> **Log into Spotify in your web browser to hear the full playlist!** </small>
    <iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/2e92nJZ9oYznMvGfjf5P84?utm_source=generator" width="100%" height="300" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
</div>

-->

# First vibes...

### Pick your mood!
<div class="row">
  <div class="col"><img id="img1" src="assets/img/mood/img1.jpeg" onclick="moodImgSelect('img1')"><br></div>
  <div class="col"><img id="img2" src="assets/img/mood/img2.jpeg" onclick="moodImgSelect('img2')"><br></div>
  <div class="col"><img id="img3" src="assets/img/mood/img3.jpeg" onclick="moodImgSelect('img3')"><br></div>
  <div class="col"><img id="img4" src="assets/img/mood/img4.jpeg" onclick="moodImgSelect('img4')"><br></div>
  <div class="col"><img id="img5" src="assets/img/mood/img5.jpeg" onclick="moodImgSelect('img5')"><br></div>
</div>

### What kinda ambience you going for?
<div class="row">
  <div class="col" id="amb1" onclick="ambSelect('amb1','amb1_frame')" ><iframe id="amb1_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/_LDOCk4ZIOY" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb2" onclick="ambSelect('amb2','amb2_frame')"><iframe id="amb2_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/76KNAVn8Q_I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb3" onclick="ambSelect('amb3','amb3_frame')"><iframe id="amb3_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/N5xlhV3qi0c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb4" onclick="ambSelect('amb4','amb4_frame')"><iframe id="amb4_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/vPL-TMVI6nc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb5" onclick="ambSelect('amb5','amb5_frame')"><iframe id="amb5_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/g3ZG_JBhgD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
</div>

### What tunes would you like?
<div class="row">
  <div class="col" id="amb1" onclick="ambSelect('amb1','amb1_frame')" ><iframe id="amb1_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/_LDOCk4ZIOY" title="YouTube video player" frameborder="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb2" onclick="ambSelect('amb2','amb2_frame')"><iframe id="amb2_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/76KNAVn8Q_I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb3" onclick="ambSelect('amb3','amb3_frame')"><iframe id="amb3_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/N5xlhV3qi0c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb4" onclick="ambSelect('amb4','amb4_frame')"><iframe id="amb4_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/vPL-TMVI6nc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col" id="amb5" onclick="ambSelect('amb5','amb5_frame')"><iframe id="amb5_frame" width="100%" height="300" src="https://www.youtube-nocookie.com/embed/g3ZG_JBhgD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
</div>


# Let's go!
<div class="row">
  <div class="col"><img id="now_moodImgID" src=""></div>
  <div class="col"><iframe id="now_ambID" width="100%" height="300" src="" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe></div>
  <div class="col"></div>
</div>


#### Awesome, let's go flow, connect, or wander 🌱


function displayNextImage() {
  x = (x === images.length - 1) ? 0 : x + 1;
  $(document.getElementById("img")).fadeTo(200, 0.01, function(){
      $(document.getElementById("img")).attr('src', images[x]).bind('onreadystatechange load')
      $(document.getElementById("img")).fadeTo(200, 1);
   });
}

function dropDown() {
  document.getElementById("drop").onclick = function(){
    if (document.getElementsByClassName("sub")[0].style.display === "block"){
      document.getElementsByClassName("sub")[0].style.visibility = "hidden";
      document.getElementsByClassName("sub")[0].style.display = "none";
    } else {
      document.getElementsByClassName("sub")[0].style.visibility = "visible";
      document.getElementsByClassName("sub")[0].style.display = "block";
    }
  };
}

function startTimer() {
  setInterval(displayNextImage, 4000);
  dropDown();
}

var images = [], x = 0;
images[0] = "/assets/healthy_foods1.png";
images[1] = "/assets/healthy_foods2.png";
images[2] = "/assets/healthy_foods3.png";

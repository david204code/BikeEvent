 // Set the date we're counting down to
 var countDownDate = new Date("April 1, 2020 10:00:00").getTime();
      
 // Update the count down every 1 second
 var x = setInterval(function() {
 
   // Get today's date and time
   var now = new Date().getTime();
     
   // Find the distance between now and the count down date
   var distance = countDownDate - now;
     
   // Time calculations for days, hours, minutes and seconds
   var days = Math.floor(distance / (1000 * 60 * 60 * 24));
   var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
   var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
   var seconds = Math.floor((distance % (1000 * 60)) / 1000);
     
   // Output the result in an element with id="timer"
   document.getElementById("demo").innerHTML = days + "d " + hours + "h "
   + minutes + "m " + seconds + "s ";
     
   // If the count down is over, write some text 
   if (distance < 0) {
     clearInterval(x);
     document.getElementById("demo").innerHTML = "EXPIRED";
   }
 }, 1000); 

 function startTime() {
   var today = new Date();
   var h = today.getHours();
   var m = today.getMinutes();
   var s = today.getSeconds();
   m = checkTime(m);
   s = checkTime(s);
   document.getElementById('txt').innerHTML =
   h + ":" + m + ":" + s;
   var t = setTimeout(startTime, 500);
 }
 function checkTime(i) {
   if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
   return i;
 }
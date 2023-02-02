// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
    setInterval(function() {
        var date = new Date();
        var time = date.toLocaleTimeString();
        document.getElementById("clock").innerHTML = time;
        document.getElementById("date").innerHTML = date;
    }, 1000);
});
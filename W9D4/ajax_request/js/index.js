console.log("Hello from the JavaScript console!");

$.ajax({
  type: "GET",
  url:
    "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=3bb2992b566d47d16b0cfebe2bbb3c22",
  success(data) {
    console.log("Here is the weather");
    console.log(data);
  },
  error() {
    console.log("error!");
  }
});

console.log("Testing testing");

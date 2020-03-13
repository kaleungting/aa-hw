window.setTimeout(function() {
  alert("HAMMERTIME");
}, 5000);

function hammerTime(time) {
  window.setTimeout(function() {
    console.log(`${time} is hammertime!`);
  }, time);
}

hammerTime(5000);

const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  let first, second;
  reader.question("Would you like some tea?", function(res) {
    console.log(`You replied ${res}.`);
    reader.question("Would you like some biscuits?", function(res2) {
      console.log(`You replied ${res2}.`);
      const firstRes = res === "yes" ? "do" : "don't";
      const secondRes = res2 === "yes" ? "do" : "don't";
      console.log(
        `So you ${firstRes} want tea and you ${secondRes} want biscuits.`
      );
      reader.close();
    });
  });
}

teaAndBiscuits();

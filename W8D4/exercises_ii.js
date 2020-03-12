// function titleize(names,callback){
//     arr = names.map(name => callback(name));
//     // arr.forEach(element => {
//     //     console.log(element);
//     // });
// }

// function printCallback(name){
//     console.log(`Mx. ${name} Jingleheimer Schmidt`)
// }

function titleize(names, callback) {
  const arr = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  return printCallback(arr);
}

function printCallback(arr) {
  arr.forEach(element => {
    console.log(element);
  });
}

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} goes phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
  console.log(this.height);
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${trick}`);
};

let june = new Elephant("June", 20, [
  "playing basketball",
  "dreaming about food",
  "sleeping at appAcademy"
]);
let haejun = new Elephant("Haejun", 185, [
  "giving human friends a ride",
  "playing hide and seek"
]);
let solomon = new Elephant("Solomon", 200, [
  "painting pictures",
  "spraying water for a slip and slide"
]);
let ken = new Elephant("Ken", 234, ["writing letters", "stealing peanuts"]);

let herd = [june, haejun, solomon, ken];
// }

function paradeHelper(elephant) {
  console.log(`${elephant.name} is trotting by!!!!`);
}

function parade(herd, callback) {
  herd.forEach(elephant => callback(elephant));
}

// parade(herd, paradeHelper);

function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};

let button = function(content) {
  this.content = content;
}

button.prototype.click = function() {
  console.log(`${this.content} clicked`);
}

let newButton = new button('add');

let looseButton = newButton.click.bind(newButton);

looseButton();
function madLib(verb, adj, noun) {
  console.log(
    `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
  );
}

madLib("make", "best", "guac");

function isSubstring(searchstring, substring) {
  console.log(searchstring.includes(substring));
}

isSubstring("time to program", "time");
isSubstring("Jump for joy", "joys");

function fizzBuzz(array) {
  const fizzBuzzArr = [];
  array.forEach(el => {
    if (el % 3 === 0 && el % 5 !== 0) {
      fizzBuzzArr.push(el);
    }
    if (el % 3 !== 0 && el % 5 === 0) {
      fizzBuzzArr.push(el);
    }
  });
  console.log(fizzBuzzArr);
}

fizzBuzz([5, 2, 3, 6, 7, 9, 10, 15]);

function isPrime(num) {
  if (num < 2) {
    return false;
  }
  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

// isPrime(-10);

function sumOfNPrimes(n) {
  let sum = 0;
  let array = [];
  let i = 2;
  while (array.length < n) {
    if (isPrime(i)) {
      sum += i;
      array.push(i);
    }
    i++;
  }

  console.log(sum);
}

sumOfNPrimes(4);

// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.


var evenNumbers = function(n) {
  console.log("Printing even numbers between 1 and " + n);
  for (i = 1; i <= n; i++ ) {
    if (i % 2 == 0) {
      console.log(i);
    }
  }
}

evenNumbers(10);
// Printing even numbers between 1 and 10
// 2
// 4
// 6
// 8
// 10

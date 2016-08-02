// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.


var isPrime = function(n) {
  if (n < 2) return false;
  for (var i = 2; i < n; i++) {
    if (n % i == 0)
      return false;
    }
    return true;
}

console.log(isPrime(2))     // true
console.log(isPrime(4))     // false
console.log(isPrime(5))     // true
console.log(isPrime(6))     // false
console.log(isPrime(7))     // true

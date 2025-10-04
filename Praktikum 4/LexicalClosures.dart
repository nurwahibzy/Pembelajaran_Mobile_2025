Function createCounter() {
  int count = 0;
  return () { // Ini adalah closure
    count++;
    print(count);
  };
}

void main() {
  var counter1 = createCounter();
  var counter2 = createCounter();

  counter1(); // Output: 1
  counter1(); // Output: 2
  counter2(); // Output: 1 (memiliki 'count' sendiri)
}
void main(List<String> args) {
  var fruits = ['apple', 'banana', 'orange'];

  // Menggunakan anonymous function dengan forEach
  fruits.forEach((fruit) {
    print('I love $fruit.');
  });

  // Menggunakan fat arrow syntax
  var doubled = fruits.map((fruit) => fruit.toUpperCase()).toList();
  print(doubled); // Output: [APPLE, BANANA, ORANGE]
}

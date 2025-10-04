var globalVar = 'Hello';

void outerFunction() {
  var outerVar = 'World';
  void innerFunction() {
    // innerFunction dapat mengakses globalVar dan outerVar
    print('$globalVar $outerVar');
  }
  innerFunction();
}

void main() {
  outerFunction(); // Output: Hello World
  print(globalVar); // Output: Hello
  // print(outerVar); // Error! outerVar tidak dapat diakses di sini
}
//Positional Required Parameters
String introduce(String name, int age) {
  return 'Hello, my name is $name and I am $age years old.';
}
//Positional Optional Parameters
String greet(String name, [String? greeting]) {
  if (greeting != null) {
    return '$greeting, $name!';
  }
  return 'Hello, $name!';
}
//Named Parameters
void login({required String username, required String password}) {
  print('Username: $username');
  print('Password: $password');
}

void main() {
  print(introduce('Wahib', 20));
  print(greet('Wahib')); // Output: Hello, Wahib!
  print(greet('Yahya', 'Hi')); // Output: Hi, Yahya!
  login(password: '123456', username: 'admin'); // Urutan tidak masalah
}

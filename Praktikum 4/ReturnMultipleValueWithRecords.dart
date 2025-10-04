// Mengembalikan Record dengan 3 nilai
(String, int, bool) getUserData() {
  var name = 'Wahib';
  var age = 20;
  var isActive = true;
  return (name, age, isActive);
}

void main() {
  // Menggunakan destructuring untuk memecah nilai yang dikembalikan
  var (name, age, isActive) = getUserData();
  print('Name: $name, Age: $age, Active: $isActive');

  // Anda juga bisa mengakses nilai berdasarkan posisinya
  var userData = getUserData();
  print(userData.$1); // Output: Wahib
  print(userData.$2); // Output: 20
}
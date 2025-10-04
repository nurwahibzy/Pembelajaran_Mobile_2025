Map<String, dynamic> getUserDataMap() {
  return {
    'name': 'Wahib',
    'age': 20,
    'isActive': true,
  };
}

void main() {
  var userData = getUserDataMap();
  print('Name: ${userData['name']}, Age: ${userData['age']}, Active: ${userData['isActive']}');
}
void main() {
  String nama = "Nurwahib Zakki Yahya";
  String nim = "2341720154";

  print("Bilangan Prima dari 0 hingga 201:");
  print("=================================");

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i. $nama $nim");
    } 
  }
}

bool isPrima(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

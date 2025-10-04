void main(List<String> args) {
  final List<dynamic> list = List.filled(5, null);
  assert(list.length == 5);
  list[1] = "Nurwahib Zakki Yahya";
  list[2] = "2341720154";
  print("Nama : ${list[1]}");
  print("NIM  : ${list[2]}");
  print(list);
}



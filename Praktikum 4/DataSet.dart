void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Nurwahib Zakki Yahya');
  names2.addAll(['Nurwahib Zakki Yahya', '2341720154']);
  
  print(names1);
  print(names2);
  print(names3);
}

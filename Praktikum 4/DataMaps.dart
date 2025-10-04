void main(List<String> args) {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

// menambah elemen nama dan NIM pada setiap variabel map
mhs1['nama'] = 'Nurwahib Zakki Yahya';
mhs1['NIM'] = '2341720154';
mhs2[1] = 'Nurwahib Zakki Yahya';
mhs2[2] = '2341720154';
gifts['Nama'] = 'Nurwahib Zakki Yahya';
gifts['NIM'] = '2341720154';
nobleGases[21] = 'Nurwahib Zakki Yahya';
nobleGases[22] = '2341720154';

print(gifts);
print(nobleGases);
print(mhs1);
print(mhs2);
}
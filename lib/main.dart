import 'package:tuple/tuple.dart';

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  // Praktikum 1.1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Praktikum 1.2
  // final List<String?> list2 = List.filled(5, null);
  // list2[1] = 'Alfan Farchi';
  // list2[2] = '2141720084';

  // print(list2);

  // Praktikum 2.1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // Praktikum 2.2
  // var names1 = <String>{};
  // Set<String> names2 = {};

  // names1.add('Alfan Farchi');
  // names1.add('2141720084');

  // names2.addAll(names1);

  // print(names1);
  // print(names2);

  // Praktikum 3.1
  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings'
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 'argon', // Menggunakan string sebagai nilai
  // };

  // var mhs1 = Map<String, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';

  // var mhs2 = Map<int, String>();
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';

  // gifts['sixth'] = 'Alfan Farchi';
  // gifts['seventh'] = '2141720084';

  // nobleGases[19] = 'Alfan Farchi';
  // nobleGases[20] = '2141720084';

  // mhs1['Nama'] = 'Alfan Farchi';
  // mhs1['NIM'] = '2141720084';

  // mhs2[2] = 'Alfan Farchi';
  // mhs2[10] = '2141720084';

  // print('gifts:');
  // print(gifts);

  // print('\nnobleGases:');
  // print(nobleGases);

  // print('\nmhs1:');
  // print(mhs1);

  // print('\nmhs2:');
  // print(mhs2);

  // Praktikum 4.1
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // Praktikum 4.3
  // var list1 = [1, 2, null, 2, 1, 4, 1, 7, 2, 0, 0, 8, 4];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // Praktikum 4.4
  // var promoActive = false;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print('promoActive = false');
  // print(nav);

  // Praktikum 4.5
  // var login = 'Manager';
  // var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Employee') 'Inventory'];
  // print('login case Employee');
  // print(nav2);
  
  // Praktikum 4.6
  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);

  // Praktikum 5.1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // // Praktikum 5.3
  // Tuple2<int, int> tukar(Tuple2<int, int> record) {
  //   var (a, b) = Tuple2<int, int>(record.item2, record.item1);
  //   return Tuple2<int, int>(a, b);
  // }

  // var initialTuple = Tuple2<int, int>(10, 20); // Tuple awal (a, b)
  // print('Sebelum tukar: $initialTuple');

  // var swappedTuple = tukar(initialTuple);
  // print('Setelah tukar: $swappedTuple');

  // Praktikum 5.4
  (String, int) mahasiswa = ('Alfan Farchi', 2141720084);
  print(mahasiswa);

  // Praktikum 5.5
  // var mahasiswa2 = ('Alfan Farchi', a: 2, b: true, '2141720084');

  // print(mahasiswa2.$1);
  // print(mahasiswa2.a);
  // print(mahasiswa2.b);
  // print(mahasiswa2.$2);

}


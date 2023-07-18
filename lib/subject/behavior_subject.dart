import 'package:rxdart/rxdart.dart';

void behaviorSubject() {
  /// # BEHAVIOR SUBJECT
  /// Behavior Subject adalah sebuah subject yang data terkhir nya akan
  /// diterima oleh listener, walaupun listener tersebut belum didefinisikan

  /// mendefinisikan behviour subject
  final behaviorSubject = BehaviorSubject<int>();

  // menambahkan data sebelum subject dilisten
  // hanya data terakhir yaitu (1) pada data ini akan diterima oleh listner
  // karena listener belum didefinisikan
  behaviorSubject.sink.add(0);
  behaviorSubject.sink.add(1);
  // setelah subject diisikan data maka
  // variable behaviorSubject akan berisikan data 0, 1

  /// definisikan listener pertama, setelah subject dilisten
  /// maka data yang akan diambil adalah data terakhir nya yaitu 1
  behaviorSubject.stream.listen((event) {
    print("listener pertama: $event");
  });

  // menambahkan data
  behaviorSubject.sink.add(2);
  behaviorSubject.sink.add(3);
  behaviorSubject.sink.add(4);

  /// mendefiniskan listener kedua lister ini akan
  /// mengambil data terakhir dari pada subject yaitu 4
  behaviorSubject.stream.listen((event) {
    print("listener kedua: $event");
  });

  behaviorSubject.sink.add(5);
}

import 'package:rxdart/rxdart.dart';

void replaySubject() {
  /// # REPlAY SUBJECT
  /// Replay Subject adalah sebuah subject yang akan mengingat atau menerima
  /// seluruh data walaupun observer/listner belum didefinisikan sekalipun,
  /// namun pada replay subject kita bisa membatasi data yang dapat diterima
  /// oleh listener ketika listner baru didefinisikan

  /// mendefinisikan behviour subject
  final replaySubject = ReplaySubject<int>();

  // menambahkan data sebelum subject dilisten
  // hanya data terakhir yaitu (1) pada data ini akan diterima oleh listner
  // karena listener belum didefinisikan
  replaySubject.sink.add(0);
  replaySubject.sink.add(1);
  // setelah subject diisikan data maka
  // variable replaySubject akan berisikan data 0, 1

  /// definisikan listener pertama, setelah subject dilisten
  /// maka data yang akan diambil adalah data terakhir nya yaitu 1
  replaySubject.stream.listen((event) {
    print("listener pertama: $event");
  });

  // menambahkan data
  replaySubject.sink.add(2);
  replaySubject.sink.add(3);
  replaySubject.sink.add(4);

  /// mendefiniskan listener kedua lister ini akan
  /// mengambil data terakhir dari pada subject yaitu 4
  replaySubject.stream.listen((event) {
    print("listener kedua: $event");
  });

  replaySubject.sink.add(5);
}

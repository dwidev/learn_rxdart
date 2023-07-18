import 'package:rxdart/rxdart.dart';

void publishSubject() {
  /// # PUBLISH SUBJECT
  /// Pubslih Subject adalah subject data yang akan menerima data setelah subject itu di listen
  /// data yang ada sebelum subject itu dilisten maka tidak akan dianggap/diambil

  // definisi subject atau data yang akan diterima oleh listener
  final publishSubjectData = PublishSubject<int>();

  // menambahkan data sebelum subject dilisten
  // data ini tidak akan diterima oleh listner karena listener belum didefinisikan
  publishSubjectData.sink.add(0);
  publishSubjectData.sink.add(1);

  /// membuat listener pertama
  /// listener ini akan siap menerima data yang di masukan kedalam subject
  publishSubjectData.stream.listen((value) {
    print("Hello from listener pertama: $value");
  });

  // menambahkan data kedalam subject dan akan diprint oleh listner pertama
  publishSubjectData.sink.add(2);
  publishSubjectData.sink.add(3);
  publishSubjectData.sink.add(4);

  /// membuat listener kedua
  publishSubjectData.stream.listen((value) {
    print("Hello from listener kedua: $value");
  });

  // menambahkan data kedalam subject dan
  // akan diprint oleh listner pertama dan kedua
  publishSubjectData.sink.add(5);
}

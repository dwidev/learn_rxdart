import 'package:rxdart/rxdart.dart';

void main(List<String> args) async {
  final subject = PublishSubject<int>();
  final stream = subject.stream;

  stream
      .debounce((event) => TimerStream(true, Duration(seconds: 1)))
      .listen((event) {
    print("Hasil data setelah didebounce :$event");
  });

  for (var i = 1; i <= 5; i++) {
    if (i == 2) {
      /// Menambahkan delay pada nilai 2
      /// untuk memastikan nilai 1 masuk kedalam listener
      await Future.delayed(Duration(seconds: 2));
      subject.add(i);
      continue;
    }

    subject.add(i);
  }

  subject.close();
}

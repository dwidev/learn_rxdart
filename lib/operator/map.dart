import 'package:rxdart/rxdart.dart';

void main(List<String> args) async {
  final subject = BehaviorSubject<int?>();

  final stream = subject.stream;

  /// map not null
  stream.mapNotNull((v) => v).listen((event) {
    print("Hasil data setelah dimap :$event");
  });

  for (var i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 2) {
      subject.add(null);
      continue;
    }
    subject.add(i);
  }
}

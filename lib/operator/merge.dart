import 'package:rxdart/rxdart.dart';

void main(List<String> args) async {
  final subject1 = ReplaySubject<int>();
  final subject2 = ReplaySubject<int>();

  subject1.add(0);
  subject1.add(1);
  subject1.add(2);

  subject2.add(3);
  subject2.add(4);
  subject2.add(5);

  final mergedStream = MergeStream([subject1.stream, subject2.stream]);

  mergedStream.listen((event) {
    print("Hasil merged :$event");
  });

  subject1.close();
  subject2.close();
}

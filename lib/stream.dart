import 'dart:async';

void main(List<String> args) {
  final streamController = StreamController<int>();
  streamController.add(100);

  streamController.stream.listen((event) {
    print(event);
  });

  for (var i = 0; i < 10; i++) {
    add(streamController.stream);
    streamController.add(i);
  }
}

Stream<void> add(Stream stream) async* {
  yield stream;
}

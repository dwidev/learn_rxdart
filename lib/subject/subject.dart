import 'behavior_subject.dart';
import 'publish_subject.dart';
import 'replay_subject.dart';

// run with `dart run lib/subject/subject.dart ps` for publish subject
// run with `dart run lib/subject/subject.dart bs` for behavior subject
// run with `dart run lib/subject/subject.dart rs` for replay subject
void main(List<String> arguments) async {
  // # SUBJECT
  if (arguments[0] == "ps") {
    publishSubject();
    return;
  }

  if (arguments[0] == "bs") {
    behaviorSubject();
    return;
  }

  if (arguments[0] == "rs") {
    replaySubject();
    return;
  }
}

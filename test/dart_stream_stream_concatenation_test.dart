import 'package:dart_stream_stream_concatenation/dart_stream_stream_concatenation.dart';
import 'package:test/test.dart';

void main() {
  test('concatenateStreams combines two string streams', () async {
    var stream1 = Stream.fromIterable(['Hello', 'World']);
    var stream2 = Stream.fromIterable(['Dart', 'Flutter']);
    var concatenated = concatenateStreams(stream1, stream2);
    var expected = ['Hello', 'World', 'Dart', 'Flutter'];
    expect(await concatenated.toList(), equals(expected));
  });

  test('concatenateStreams handles one empty stream', () async {
    var stream1 = Stream<String>.empty();
    var stream2 = Stream.fromIterable(['Dart', 'Flutter']);
    var concatenated = concatenateStreams(stream1, stream2);
    var expected = ['Dart', 'Flutter'];
    expect(await concatenated.toList(), equals(expected));
  });

  test('concatenateStreams handles both empty streams', () async {
    var stream1 = Stream<String>.empty();
    var stream2 = Stream<String>.empty();
    var concatenated = concatenateStreams(stream1, stream2);
    expect(await concatenated.toList(), isEmpty);
  });
}

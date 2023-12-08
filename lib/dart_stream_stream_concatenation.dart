/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_stream_stream_concatenation_base.dart';

import 'dart:async';

/*
Practice Question 1: Stream Concatenation
Task:
Create a function concatenateStreams that takes two 
Stream<String> objects and concatenates them into a 
single stream. The resulting stream should first emit 
all elements from the first stream, followed by all 
elements from the second stream.
 */

Stream<String> concatenateStreams(
    Stream<String> stream1, Stream<String> stream2) async* {
  await for (var indev in stream1) {
    yield indev;
  }

  await for (var indev in stream2) {
    yield indev;
  }
}

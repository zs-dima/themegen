import 'package:code_builder/code_builder.dart';

abstract class CodeProducer<T> {
  String produce(String className, T info);
}

abstract class BuilderCodeProducer<T> implements CodeProducer<T> {
  final DartEmitter _emitter;

  BuilderCodeProducer(DartEmitter emitter) : _emitter = emitter;

  Spec spec(String className, T info);

  @override
  String produce(String className, T info) =>
      spec(className, info).accept(_emitter).toString();
}
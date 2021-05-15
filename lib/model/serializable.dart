import 'dart:convert';

class Serializable<T> {
  static String serializableToRawJson(Map<String, dynamic> jsonValue) =>
      json.encode(
        jsonValue,
      );

  static dynamic serializableFromRawJson(
    String rawJson,
    Function(Map<String, dynamic>) fromJsonFunction,
  ) =>
      fromJsonFunction(
        json.decode(rawJson),
      );

  String toRawJson() => throw UnimplementedError();

  Map<String, dynamic> toJson() => throw UnimplementedError();
}

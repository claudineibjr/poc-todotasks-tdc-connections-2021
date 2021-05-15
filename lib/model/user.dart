import 'package:poc_todotasks_team/model/serializable.dart';

class User implements Serializable<User> {
  int id;
  String name;
  String surname;
  String email;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
  });

  // #region Serialization
  // #region FromJson
  factory User.fromJsonFactory(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      surname: json['surname'],
      email: json['email'],
    );
  }

  factory User.fromRawJson(String rawJson) =>
      Serializable.serializableFromRawJson(
        rawJson,
        fromJson,
      );

  static User fromJson(Map<String, dynamic> json) => User.fromJsonFactory(
        json,
      );
  // #endregion

  // #region ToJson
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'email': email,
    };
  }

  @override
  String toRawJson() => Serializable.serializableToRawJson(
        toJson(),
      );
  // #endregion
  // #endregion
}

import 'package:flutter/material.dart';

class User {
  int id;
  String name;
  String surname;
  String email;

  User({
    @required this.id,
    @required this.name,
    @required this.surname,
    @required this.email,
  });
}
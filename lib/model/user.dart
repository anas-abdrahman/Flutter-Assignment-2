import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String name;
  String email;
  String phone;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => new User(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
  };

  static User userFromJson(String str) {
    final jsonData = json.decode(str);
    return User.fromJson(jsonData);
  }

  static String userToJson(User data) {
    final dyn = data.toJson();
    return json.encode(dyn);
  }

  factory User.fromDocument(DocumentSnapshot doc) {
    return User.fromJson(doc.data);
  }

}
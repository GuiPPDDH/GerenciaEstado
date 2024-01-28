import 'dart:convert';

class ContactModel {
  final String? id;
  final String name;
  final String email;

  ContactModel({this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id'],
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory ContactModel.fromJson(String json) {
    return ContactModel.fromMap(
      jsonDecode(json),
    );
  }
}

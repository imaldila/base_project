import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name, email;

  const User({
    this.id,
    this.email,
    this.name,
  });

  factory User.fromJson(dynamic json) {
    return User(
      id: json['data']['id'],
      email: json['data']['email'],
      name: json['data']['first_name'] + ' ' + json['data']['last_name'],
    );
  }

  @override
  List<Object?> get props => [id, name, email];

  static List<User> users = [];
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class ResetPasswordBody extends Equatable {
  final String email;
  final String password;
  ResetPasswordBody({
    required this.email,
    required this.password,
  });

  ResetPasswordBody copyWith({
    String? email,
    String? password,
  }) {
    return ResetPasswordBody(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory ResetPasswordBody.fromMap(Map<String, dynamic> map) {
    return ResetPasswordBody(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ResetPasswordBody.fromJson(String source) =>
      ResetPasswordBody.fromMap(json.decode(source));

  @override
  String toString() => 'ResetPasswordBody(email: $email, password: $password)';

  @override
  List<Object> get props => [email, password];
}

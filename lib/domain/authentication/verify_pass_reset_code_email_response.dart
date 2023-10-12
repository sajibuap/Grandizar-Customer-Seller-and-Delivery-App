import 'dart:convert';

import 'package:equatable/equatable.dart';

class VerifyPassResetCodeEmailResponse extends Equatable {
  final String email;
  final bool canReset;
  VerifyPassResetCodeEmailResponse({
    required this.email,
    required this.canReset,
  });

  VerifyPassResetCodeEmailResponse copyWith({
    String? email,
    bool? canReset,
  }) {
    return VerifyPassResetCodeEmailResponse(
      email: email ?? this.email,
      canReset: canReset ?? this.canReset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'canReset': canReset,
    };
  }

  factory VerifyPassResetCodeEmailResponse.fromMap(Map<String, dynamic> map) {
    return VerifyPassResetCodeEmailResponse(
      email: map['email'] ?? '',
      canReset: map['canReset'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPassResetCodeEmailResponse.fromJson(String source) =>
      VerifyPassResetCodeEmailResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyPassResetCodeResponse(email: $email, canReset: $canReset)';

  @override
  List<Object> get props => [email, canReset];
}

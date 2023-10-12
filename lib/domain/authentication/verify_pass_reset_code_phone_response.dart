import 'dart:convert';

import 'package:equatable/equatable.dart';

class VerifyPassResetCodePhoneResponse extends Equatable {
  final String email;
  final bool canReset;
  VerifyPassResetCodePhoneResponse({
    required this.email,
    required this.canReset,
  });

  VerifyPassResetCodePhoneResponse copyWith({
    String? email,
    bool? canReset,
  }) {
    return VerifyPassResetCodePhoneResponse(
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

  factory VerifyPassResetCodePhoneResponse.fromMap(Map<String, dynamic> map) {
    return VerifyPassResetCodePhoneResponse(
      email: map['email'] ?? '',
      canReset: map['canReset'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPassResetCodePhoneResponse.fromJson(String source) =>
      VerifyPassResetCodePhoneResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyPassResetCodeResponse(email: $email, canReset: $canReset)';

  @override
  List<Object> get props => [email, canReset];
}

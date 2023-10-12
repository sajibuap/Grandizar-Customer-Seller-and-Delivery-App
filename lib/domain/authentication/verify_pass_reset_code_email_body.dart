import 'dart:convert';

import 'package:equatable/equatable.dart';

class VerifyPassResetCodeEmailBody extends Equatable {
  final String email;
  final String confirmationCode;
  VerifyPassResetCodeEmailBody({
    required this.email,
    required this.confirmationCode,
  });

  VerifyPassResetCodeEmailBody copyWith({
    String? email,
    String? confirmationCode,
  }) {
    return VerifyPassResetCodeEmailBody(
      email: email ?? this.email,
      confirmationCode: confirmationCode ?? this.confirmationCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'confirmationCode': confirmationCode,
    };
  }

  factory VerifyPassResetCodeEmailBody.fromMap(Map<String, dynamic> map) {
    return VerifyPassResetCodeEmailBody(
      email: map['email'] ?? '',
      confirmationCode: map['confirmationCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPassResetCodeEmailBody.fromJson(String source) =>
      VerifyPassResetCodeEmailBody.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyPassResetCodePhoneBody(email: $email, confirmationCode: $confirmationCode)';

  @override
  List<Object> get props => [email, confirmationCode];
}

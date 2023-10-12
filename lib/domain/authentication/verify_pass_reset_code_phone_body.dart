import 'dart:convert';

import 'package:equatable/equatable.dart';

class VerifyPassResetCodePhoneBody extends Equatable {
  final String phone;
  final String confirmationCode;
  VerifyPassResetCodePhoneBody({
    required this.phone,
    required this.confirmationCode,
  });

  VerifyPassResetCodePhoneBody copyWith({
    String? phone,
    String? confirmationCode,
  }) {
    return VerifyPassResetCodePhoneBody(
      phone: phone ?? this.phone,
      confirmationCode: confirmationCode ?? this.confirmationCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phone': phone,
      'confirmationCode': confirmationCode,
    };
  }

  factory VerifyPassResetCodePhoneBody.fromMap(Map<String, dynamic> map) {
    return VerifyPassResetCodePhoneBody(
      phone: map['phone'] ?? '',
      confirmationCode: map['confirmationCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPassResetCodePhoneBody.fromJson(String source) =>
      VerifyPassResetCodePhoneBody.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyRegisterOtp(phone: $phone, confirmationCode: $confirmationCode)';

  @override
  List<Object> get props => [phone, confirmationCode];
}

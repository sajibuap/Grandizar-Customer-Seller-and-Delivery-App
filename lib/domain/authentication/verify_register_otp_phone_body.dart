import 'dart:convert';

import 'package:equatable/equatable.dart';

class VerifyRegisterOtpPhoneBody extends Equatable {
  final String phone;
  final String confirmationCode;
  VerifyRegisterOtpPhoneBody({
    required this.phone,
    required this.confirmationCode,
  });

  VerifyRegisterOtpPhoneBody copyWith({
    String? phone,
    String? confirmationCode,
  }) {
    return VerifyRegisterOtpPhoneBody(
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

  factory VerifyRegisterOtpPhoneBody.fromMap(Map<String, dynamic> map) {
    return VerifyRegisterOtpPhoneBody(
      phone: map['phone'] ?? '',
      confirmationCode: map['confirmationCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyRegisterOtpPhoneBody.fromJson(String source) =>
      VerifyRegisterOtpPhoneBody.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyRegisterOtp(phone: $phone, confirmationCode: $confirmationCode)';

  @override
  List<Object> get props => [phone, confirmationCode];
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class SendOtpBody extends Equatable {
  final String phone;
  SendOtpBody({
    required this.phone,
  });

  SendOtpBody copyWith({
    String? phone,
  }) {
    return SendOtpBody(
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'phone': phone,
    };
  }

  factory SendOtpBody.fromMap(Map<String, dynamic> map) {
    return SendOtpBody(
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SendOtpBody.fromJson(String source) =>
      SendOtpBody.fromMap(json.decode(source));

  @override
  String toString() => 'ResendRegisterOtp(phone: $phone)';

  @override
  List<Object> get props => [phone];
}

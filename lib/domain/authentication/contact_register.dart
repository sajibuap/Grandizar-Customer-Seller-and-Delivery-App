import 'dart:convert';

import 'package:equatable/equatable.dart';

class ContactRegistrationBody extends Equatable {
  final String name;
  final String surname;
  final String emailAddress;
  final String mobile;
  final String password;
  final String captchaResponse;
  final int primaryHubId;
  ContactRegistrationBody({
    required this.name,
    required this.surname,
    required this.emailAddress,
    required this.mobile,
    required this.password,
    required this.captchaResponse,
    required this.primaryHubId,
  });

  ContactRegistrationBody copyWith({
    String? name,
    String? surname,
    String? emailAddress,
    String? mobile,
    String? password,
    String? captchaResponse,
    int? primaryHubId,
  }) {
    return ContactRegistrationBody(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      mobile: mobile ?? this.mobile,
      password: password ?? this.password,
      captchaResponse: captchaResponse ?? this.captchaResponse,
      primaryHubId: primaryHubId ?? this.primaryHubId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'emailAddress': emailAddress,
      'mobile': mobile,
      'password': password,
      'captchaResponse': captchaResponse,
      'primaryHubId': primaryHubId,
    };
  }

  factory ContactRegistrationBody.fromMap(Map<String, dynamic> map) {
    return ContactRegistrationBody(
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
      mobile: map['mobile'] ?? '',
      password: map['password'] ?? '',
      captchaResponse: map['captchaResponse'] ?? '',
      primaryHubId: map['primaryHubId']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactRegistrationBody.fromJson(String source) =>
      ContactRegistrationBody.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactRegister(name: $name, surname: $surname, emailAddress: $emailAddress, mobile: $mobile, password: $password, captchaResponse: $captchaResponse, primaryHubId: $primaryHubId)';
  }

  @override
  List<Object> get props {
    return [
      name,
      surname,
      emailAddress,
      mobile,
      password,
      captchaResponse,
      primaryHubId,
    ];
  }
}

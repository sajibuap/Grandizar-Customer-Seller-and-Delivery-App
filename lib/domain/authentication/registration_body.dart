import 'dart:convert';

import 'package:equatable/equatable.dart';

class RegistrationBody extends Equatable {
  final String name;
  final String surname;
  final String userName;
  final String emailAddress;
  final String password;
  final String captchaResponse;
  RegistrationBody({
    required this.name,
    required this.surname,
    required this.userName,
    required this.emailAddress,
    required this.password,
    required this.captchaResponse,
  });

  RegistrationBody copyWith({
    String? name,
    String? surname,
    String? userName,
    String? emailAddress,
    String? password,
    String? captchaResponse,
  }) {
    return RegistrationBody(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      userName: userName ?? this.userName,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      captchaResponse: captchaResponse ?? this.captchaResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'password': password,
      'captchaResponse': captchaResponse,
    };
  }

  factory RegistrationBody.fromMap(Map<String, dynamic> map) {
    return RegistrationBody(
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      userName: map['userName'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
      password: map['password'] ?? '',
      captchaResponse: map['captchaResponse'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationBody.fromJson(String source) =>
      RegistrationBody.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductFaqList(name: $name, surname: $surname, userName: $userName, emailAddress: $emailAddress, password: $password, captchaResponse: $captchaResponse)';
  }

  @override
  List<Object> get props {
    return [
      name,
      surname,
      userName,
      emailAddress,
      password,
      captchaResponse,
    ];
  }
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class AuthenticateBody extends Equatable {
  final String userNameOrEmailAddress;
  final String password;
  final String twoFactorVerificationCode;
  final bool rememberClient;
  final String twoFactorRememberClientToken;
  final bool singleSignIn;
  final String returnUrl;
  final String captchaResponse;
  AuthenticateBody({
    required this.userNameOrEmailAddress,
    required this.password,
    required this.twoFactorVerificationCode,
    required this.rememberClient,
    required this.twoFactorRememberClientToken,
    required this.singleSignIn,
    required this.returnUrl,
    required this.captchaResponse,
  });

  AuthenticateBody copyWith({
    String? userNameOrEmailAddress,
    String? password,
    String? twoFactorVerificationCode,
    bool? rememberClient,
    String? twoFactorRememberClientToken,
    bool? singleSignIn,
    String? returnUrl,
    String? captchaResponse,
  }) {
    return AuthenticateBody(
      userNameOrEmailAddress:
          userNameOrEmailAddress ?? this.userNameOrEmailAddress,
      password: password ?? this.password,
      twoFactorVerificationCode:
          twoFactorVerificationCode ?? this.twoFactorVerificationCode,
      rememberClient: rememberClient ?? this.rememberClient,
      twoFactorRememberClientToken:
          twoFactorRememberClientToken ?? this.twoFactorRememberClientToken,
      singleSignIn: singleSignIn ?? this.singleSignIn,
      returnUrl: returnUrl ?? this.returnUrl,
      captchaResponse: captchaResponse ?? this.captchaResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
      'twoFactorVerificationCode': twoFactorVerificationCode,
      'rememberClient': rememberClient,
      'twoFactorRememberClientToken': twoFactorRememberClientToken,
      'singleSignIn': singleSignIn,
      'returnUrl': returnUrl,
      'captchaResponse': captchaResponse,
    };
  }

  factory AuthenticateBody.fromMap(Map<String, dynamic> map) {
    return AuthenticateBody(
      userNameOrEmailAddress: map['userNameOrEmailAddress'] ?? '',
      password: map['password'] ?? '',
      twoFactorVerificationCode: map['twoFactorVerificationCode'] ?? '',
      rememberClient: map['rememberClient'] ?? false,
      twoFactorRememberClientToken: map['twoFactorRememberClientToken'] ?? '',
      singleSignIn: map['singleSignIn'] ?? false,
      returnUrl: map['returnUrl'] ?? '',
      captchaResponse: map['captchaResponse'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticateBody.fromJson(String source) =>
      AuthenticateBody.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Authenticate(userNameOrEmailAddress: $userNameOrEmailAddress, password: $password, twoFactorVerificationCode: $twoFactorVerificationCode, rememberClient: $rememberClient, twoFactorRememberClientToken: $twoFactorRememberClientToken, singleSignIn: $singleSignIn, returnUrl: $returnUrl, captchaResponse: $captchaResponse)';
  }

  @override
  List<Object> get props {
    return [
      userNameOrEmailAddress,
      password,
      twoFactorVerificationCode,
      rememberClient,
      twoFactorRememberClientToken,
      singleSignIn,
      returnUrl,
      captchaResponse,
    ];
  }
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class AuthenticateResponse extends Equatable {
  final String accessToken;
  final String encryptedAccessToken;
  final int expireInSeconds;
  final bool shouldResetPassword;
  final String passwordResetCode;
  final int userId;
  final bool requiresTwoFactorVerification;
  final List<String> twoFactorAuthProviders;
  final String twoFactorRememberClientToken;
  final String returnUrl;
  final String refreshToken;
  final int refreshTokenExpireInSeconds;
  final String c;
  final int contactId;
  AuthenticateResponse({
    required this.accessToken,
    required this.encryptedAccessToken,
    required this.expireInSeconds,
    required this.shouldResetPassword,
    required this.passwordResetCode,
    required this.userId,
    required this.requiresTwoFactorVerification,
    required this.twoFactorAuthProviders,
    required this.twoFactorRememberClientToken,
    required this.returnUrl,
    required this.refreshToken,
    required this.refreshTokenExpireInSeconds,
    required this.c,
    required this.contactId,
  });

  AuthenticateResponse copyWith({
    String? accessToken,
    String? encryptedAccessToken,
    int? expireInSeconds,
    bool? shouldResetPassword,
    String? passwordResetCode,
    int? userId,
    bool? requiresTwoFactorVerification,
    List<String>? twoFactorAuthProviders,
    String? twoFactorRememberClientToken,
    String? returnUrl,
    String? refreshToken,
    int? refreshTokenExpireInSeconds,
    String? c,
    int? contactId,
  }) {
    return AuthenticateResponse(
      accessToken: accessToken ?? this.accessToken,
      encryptedAccessToken: encryptedAccessToken ?? this.encryptedAccessToken,
      expireInSeconds: expireInSeconds ?? this.expireInSeconds,
      shouldResetPassword: shouldResetPassword ?? this.shouldResetPassword,
      passwordResetCode: passwordResetCode ?? this.passwordResetCode,
      userId: userId ?? this.userId,
      requiresTwoFactorVerification:
          requiresTwoFactorVerification ?? this.requiresTwoFactorVerification,
      twoFactorAuthProviders:
          twoFactorAuthProviders ?? this.twoFactorAuthProviders,
      twoFactorRememberClientToken:
          twoFactorRememberClientToken ?? this.twoFactorRememberClientToken,
      returnUrl: returnUrl ?? this.returnUrl,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpireInSeconds:
          refreshTokenExpireInSeconds ?? this.refreshTokenExpireInSeconds,
      c: c ?? this.c,
      contactId: contactId ?? this.contactId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'shouldResetPassword': shouldResetPassword,
      'passwordResetCode': passwordResetCode,
      'userId': userId,
      'requiresTwoFactorVerification': requiresTwoFactorVerification,
      'twoFactorAuthProviders': twoFactorAuthProviders,
      'twoFactorRememberClientToken': twoFactorRememberClientToken,
      'returnUrl': returnUrl,
      'refreshToken': refreshToken,
      'refreshTokenExpireInSeconds': refreshTokenExpireInSeconds,
      'c': c,
      'contactId': contactId,
    };
  }

  factory AuthenticateResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticateResponse(
      accessToken: map['accessToken'] ?? '',
      encryptedAccessToken: map['encryptedAccessToken'] ?? '',
      expireInSeconds: map['expireInSeconds']?.toInt() ?? 0,
      shouldResetPassword: map['shouldResetPassword'] ?? false,
      passwordResetCode: map['passwordResetCode'] ?? '',
      userId: map['userId']?.toInt() ?? 0,
      requiresTwoFactorVerification:
          map['requiresTwoFactorVerification'] ?? false,
      twoFactorAuthProviders: List<String>.from(map['twoFactorAuthProviders']),
      twoFactorRememberClientToken: map['twoFactorRememberClientToken'] ?? '',
      returnUrl: map['returnUrl'] ?? '',
      refreshToken: map['refreshToken'] ?? '',
      refreshTokenExpireInSeconds:
          map['refreshTokenExpireInSeconds']?.toInt() ?? 0,
      c: map['c'] ?? '',
      contactId: map['contactId']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticateResponse.fromJson(String source) =>
      AuthenticateResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Authenticate(accessToken: $accessToken, encryptedAccessToken: $encryptedAccessToken, expireInSeconds: $expireInSeconds, shouldResetPassword: $shouldResetPassword, passwordResetCode: $passwordResetCode, userId: $userId, requiresTwoFactorVerification: $requiresTwoFactorVerification, twoFactorAuthProviders: $twoFactorAuthProviders, twoFactorRememberClientToken: $twoFactorRememberClientToken, returnUrl: $returnUrl, refreshToken: $refreshToken, refreshTokenExpireInSeconds: $refreshTokenExpireInSeconds, c: $c, contactId: $contactId)';
  }

  @override
  List<Object> get props {
    return [
      accessToken,
      encryptedAccessToken,
      expireInSeconds,
      shouldResetPassword,
      passwordResetCode,
      userId,
      requiresTwoFactorVerification,
      twoFactorAuthProviders,
      twoFactorRememberClientToken,
      returnUrl,
      refreshToken,
      refreshTokenExpireInSeconds,
      c,
      contactId,
    ];
  }
}

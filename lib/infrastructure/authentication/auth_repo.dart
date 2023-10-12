import 'package:dio/dio.dart';
import 'package:grandizar_customer_v2/domain/authentication/authenticate_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/authenticate_response.dart';
import 'package:grandizar_customer_v2/domain/authentication/contact_register.dart';
import 'package:grandizar_customer_v2/domain/authentication/i_auth_repo.dart';
import 'package:grandizar_customer_v2/domain/authentication/reset_password_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_email_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_email_response.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_phone_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_phone_response.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_register_otp_phone_body.dart';

class AuthRepo extends IAuthRepo {
  final Dio dio;

  AuthRepo(this.dio);

  @override
  Future<String> contactRegister(
      {required ContactRegistrationBody body}) async {
    final response = await dio.post(
      '/api/services/app/Account/ContactRegister',
      data: body.toMap(),
    );
    return response.data['phone'] as String;
  }

  // ok
  @override
  Future<String> resendRegisterOtp({required String phone}) async {
    final response = await dio.post(
      '/api/services/app/Account/ResendRegisterOTP',
      queryParameters: {'phone': phone},
    );
    return response.data['phone'] as String;
  }

  // ready

  @override
  Future<String> sendPasswordResetCodeByEmail({required String email}) async {
    final response = await dio.post(
        'api/services/app/Account/SendPasswordResetCodeByEmail',
        queryParameters: {'email': email});
    return response.data['email'] as String;
  }

  @override
  Future<String> sendPasswordResetCodeByPhone({required String phone}) async {
    final response = await dio.post(
      '/api/services/app/Account/SendPasswordResetCodeByPhone',
      queryParameters: {'phone': phone},
    );
    return response.data['phone'] as String;
  }

  @override
  Future<VerifyPassResetCodeEmailResponse> verifyPasswordResetCodeByEmail(
      {required VerifyPassResetCodeEmailBody body}) async {
    final response = await dio.post(
      '/api/services/app/Account/VerifyPasswordResetCodeByEmail',
      data: body.toMap(),
    );
    return VerifyPassResetCodeEmailResponse.fromMap(response.data);
  }

  @override
  Future<VerifyPassResetCodePhoneResponse> verifyPasswordResetCodeByPhone(
      {required VerifyPassResetCodePhoneBody body}) async {
    final response = await dio.post(
      '/api/services/app/Account/VerifyPasswordResetCodeByPhone',
      data: body.toMap(),
    );
    return VerifyPassResetCodePhoneResponse.fromMap(response.data);
  }

  @override
  Future<bool> verifyRegisterOtp(
      {required VerifyRegisterOtpPhoneBody body}) async {
    final response = await dio.post(
      '/api/services/app/Account/VerifyRegisterOTP',
      data: body.toMap(),
    );
    return response.data['canLogin'] as bool;
  }

  @override
  Future<AuthenticateResponse> authenticate(
      {required AuthenticateBody body}) async {
    final response = await dio.post(
      '/api/TokenAuth/Authenticate',
      data: body.toMap(),
    );
    return AuthenticateResponse.fromMap(response.data);
  }

  @override
  Future<bool> resetPasswordByCode({required ResetPasswordBody body}) async {
    final response = await dio.post(
      'api/services/app/Account/ResetPasswordByCode',
      data: body.toMap(),
    );
    return response.data['canLogin'] as bool;
  }
}

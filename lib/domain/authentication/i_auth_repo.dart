import 'package:grandizar_customer_v2/domain/authentication/authenticate_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/authenticate_response.dart';
import 'package:grandizar_customer_v2/domain/authentication/reset_password_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_email_body.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_email_response.dart';
import 'package:grandizar_customer_v2/domain/authentication/verify_pass_reset_code_phone_response.dart';

import 'contact_register.dart';
import 'verify_pass_reset_code_phone_body.dart';
import 'verify_register_otp_phone_body.dart';

abstract class IAuthRepo {
  Future<String> contactRegister({required ContactRegistrationBody body});
  Future<bool> verifyRegisterOtp({required VerifyRegisterOtpPhoneBody body});
  Future<AuthenticateResponse> authenticate({required AuthenticateBody body});
  Future<String> resendRegisterOtp({required String phone});
  Future<String> sendPasswordResetCodeByPhone({required String phone});
  Future<VerifyPassResetCodePhoneResponse> verifyPasswordResetCodeByPhone(
      {required VerifyPassResetCodePhoneBody body});
  Future<VerifyPassResetCodeEmailResponse> verifyPasswordResetCodeByEmail(
      {required VerifyPassResetCodeEmailBody body});
  Future<String> sendPasswordResetCodeByEmail({required String email});
  Future<bool> resetPasswordByCode({required ResetPasswordBody body});
}

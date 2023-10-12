import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grandizar_customer_v2/application/dio_provider.dart';
import 'package:grandizar_customer_v2/domain/authentication/i_auth_repo.dart';
import 'package:grandizar_customer_v2/infrastructure/authentication/auth_repo.dart';

final authRepoProvider = Provider<IAuthRepo>((ref) {
  return AuthRepo(ref.read(dioProvider));
});

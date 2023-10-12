import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:grandizar_customer_v2/application/dio_provider.dart';
import 'package:grandizar_customer_v2/domain/hub/i_location_repo.dart';
import 'package:grandizar_customer_v2/infrastructure/authentication/location_repo.dart';

final getNearestHubsProvider = Provider<IGetNearestHubsRepo>((ref) {
  return LocationRepo(ref.read(dioProvider));
});


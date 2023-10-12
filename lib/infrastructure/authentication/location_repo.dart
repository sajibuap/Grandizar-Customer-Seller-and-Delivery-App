import 'package:dio/dio.dart';
import 'package:grandizar_customer_v2/domain/hub/i_location_repo.dart';

class LocationRepo extends IGetNearestHubsRepo {
  final Dio dio;

  LocationRepo(this.dio);

  @override
  Future<dynamic> getNearestHubs({double? lat = 0, double? long = 0}) async {
    final response = await dio.get(
        '/api/services/app/PublicPagesCommon/GetNearestHubsByUserLocation?Latitude=$lat&Longitude=$long');
    return response;
  }
}

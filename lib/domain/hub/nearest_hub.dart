import 'dart:convert';

import 'package:equatable/equatable.dart';

class NearestHub extends Equatable {
  final int id;
  final String name;
  final String url;
  final double latitude;
  final double longitude;
  final double distance;
  final String pictureId;
  final String picture;

  const NearestHub({
    required this.id,
    required this.name,
    required this.url,
    required this.latitude,
    required this.longitude,
    required this.distance,
    required this.pictureId,
    required this.picture,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        url,
        latitude,
        longitude,
        distance,
        pictureId,
        picture,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'latitude': latitude,
      'longitude': longitude,
      'distance': distance,
      'picture_id': pictureId,
      'picture': picture,
    };
  }

  factory NearestHub.fromMap(Map<String, dynamic> map) {
    return NearestHub(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
      distance: map['distance']?.toDouble() ?? 0.0,
      pictureId: map['picture_id'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NearestHub.fromJson(String source) =>
      NearestHub.fromMap(json.decode(source));
}

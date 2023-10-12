import 'dart:convert';

import 'package:equatable/equatable.dart';

class ContactAddress extends Equatable {
  final String title;
  final String fullAddress;
  final String address;
  final String zipCode;
  final int latitude;
  final int longitude;
  final bool active;
  final String city;
  final String noteForDelivery;
  final int contactId;
  final int countryId;
  final int stateId;
  final int id;
  ContactAddress({
    required this.title,
    required this.fullAddress,
    required this.address,
    required this.zipCode,
    required this.latitude,
    required this.longitude,
    required this.active,
    required this.city,
    required this.noteForDelivery,
    required this.contactId,
    required this.countryId,
    required this.stateId,
    required this.id,
  });

  ContactAddress copyWith({
    String? title,
    String? fullAddress,
    String? address,
    String? zipCode,
    int? latitude,
    int? longitude,
    bool? active,
    String? city,
    String? noteForDelivery,
    int? contactId,
    int? countryId,
    int? stateId,
    int? id,
  }) {
    return ContactAddress(
      title: title ?? this.title,
      fullAddress: fullAddress ?? this.fullAddress,
      address: address ?? this.address,
      zipCode: zipCode ?? this.zipCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      active: active ?? this.active,
      city: city ?? this.city,
      noteForDelivery: noteForDelivery ?? this.noteForDelivery,
      contactId: contactId ?? this.contactId,
      countryId: countryId ?? this.countryId,
      stateId: stateId ?? this.stateId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'fullAddress': fullAddress,
      'address': address,
      'zipCode': zipCode,
      'latitude': latitude,
      'longitude': longitude,
      'active': active,
      'city': city,
      'noteForDelivery': noteForDelivery,
      'contactId': contactId,
      'countryId': countryId,
      'stateId': stateId,
      'id': id,
    };
  }

  factory ContactAddress.fromMap(Map<String, dynamic> map) {
    return ContactAddress(
      title: map['title'] ?? '',
      fullAddress: map['fullAddress'] ?? '',
      address: map['address'] ?? '',
      zipCode: map['zipCode'] ?? '',
      latitude: map['latitude']?.toInt() ?? 0,
      longitude: map['longitude']?.toInt() ?? 0,
      active: map['active'] ?? false,
      city: map['city'] ?? '',
      noteForDelivery: map['noteForDelivery'] ?? '',
      contactId: map['contactId']?.toInt() ?? 0,
      countryId: map['countryId']?.toInt() ?? 0,
      stateId: map['stateId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactAddress.fromJson(String source) =>
      ContactAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactAddress(title: $title, fullAddress: $fullAddress, address: $address, zipCode: $zipCode, latitude: $latitude, longitude: $longitude, active: $active, city: $city, noteForDelivery: $noteForDelivery, contactId: $contactId, countryId: $countryId, stateId: $stateId, id: $id)';
  }

  @override
  List<Object> get props {
    return [
      title,
      fullAddress,
      address,
      zipCode,
      latitude,
      longitude,
      active,
      city,
      noteForDelivery,
      contactId,
      countryId,
      stateId,
      id,
    ];
  }
}

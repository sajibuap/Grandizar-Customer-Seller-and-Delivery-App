import 'dart:convert';

import 'contact_address.dart';

class ContactAddressForEdit {
  final ContactAddress contactAddress;
  final String contactFullName;
  final String countryName;
  final String stateName;
  ContactAddressForEdit({
    required this.contactAddress,
    required this.contactFullName,
    required this.countryName,
    required this.stateName,
  });

  ContactAddressForEdit copyWith({
    ContactAddress? contactAddress,
    String? contactFullName,
    String? countryName,
    String? stateName,
  }) {
    return ContactAddressForEdit(
      contactAddress: contactAddress ?? this.contactAddress,
      contactFullName: contactFullName ?? this.contactFullName,
      countryName: countryName ?? this.countryName,
      stateName: stateName ?? this.stateName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'contactAddress': contactAddress.toMap(),
      'contactFullName': contactFullName,
      'countryName': countryName,
      'stateName': stateName,
    };
  }

  factory ContactAddressForEdit.fromMap(Map<String, dynamic> map) {
    return ContactAddressForEdit(
      contactAddress: ContactAddress.fromMap(map['contactAddress']),
      contactFullName: map['contactFullName'] ?? '',
      countryName: map['countryName'] ?? '',
      stateName: map['stateName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactAddressForEdit.fromJson(String source) =>
      ContactAddressForEdit.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ContactAddressForEdit(contactAddress: $contactAddress, contactFullName: $contactFullName, countryName: $countryName, stateName: $stateName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ContactAddressForEdit &&
        other.contactAddress == contactAddress &&
        other.contactFullName == contactFullName &&
        other.countryName == countryName &&
        other.stateName == stateName;
  }

  @override
  int get hashCode {
    return contactAddress.hashCode ^
        contactFullName.hashCode ^
        countryName.hashCode ^
        stateName.hashCode;
  }
}

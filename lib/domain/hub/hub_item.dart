import 'dart:convert';

import 'package:equatable/equatable.dart';

class HubItem extends Equatable {
  final int id;
  final String name;
  final String url;
  final String picture;
  final String pictureLink;
  final int displaySequence;
  HubItem({
    required this.id,
    required this.name,
    required this.url,
    required this.picture,
    required this.pictureLink,
    required this.displaySequence,
  });

  HubItem copyWith({
    int? id,
    String? name,
    String? url,
    String? picture,
    String? pictureLink,
    int? displaySequence,
  }) {
    return HubItem(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
      picture: picture ?? this.picture,
      pictureLink: pictureLink ?? this.pictureLink,
      displaySequence: displaySequence ?? this.displaySequence,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'picture': picture,
      'pictureLink': pictureLink,
      'displaySequence': displaySequence,
    };
  }

  factory HubItem.fromMap(Map<String, dynamic> map) {
    return HubItem(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      picture: map['picture'] ?? '',
      pictureLink: map['pictureLink'] ?? '',
      displaySequence: map['displaySequence']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory HubItem.fromJson(String source) =>
      HubItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, url: $url, picture: $picture, pictureLink: $pictureLink, displaySequence: $displaySequence)';
  }

  @override
  List<Object> get props {
    return [
      id,
      name,
      url,
      picture,
      pictureLink,
      displaySequence,
    ];
  }
}

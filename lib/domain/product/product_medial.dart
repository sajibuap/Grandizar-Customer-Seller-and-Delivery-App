import 'dart:convert';

import 'package:equatable/equatable.dart';

class ProductMediaProductMedia extends Equatable {
  final int displaySequence;
  final int productId;
  final int mediaLibraryId;
  final int id;
  ProductMediaProductMedia({
    required this.displaySequence,
    required this.productId,
    required this.mediaLibraryId,
    required this.id,
  });

  ProductMediaProductMedia copyWith({
    int? displaySequence,
    int? productId,
    int? mediaLibraryId,
    int? id,
  }) {
    return ProductMediaProductMedia(
      displaySequence: displaySequence ?? this.displaySequence,
      productId: productId ?? this.productId,
      mediaLibraryId: mediaLibraryId ?? this.mediaLibraryId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displaySequence': displaySequence,
      'productId': productId,
      'mediaLibraryId': mediaLibraryId,
      'id': id,
    };
  }

  factory ProductMediaProductMedia.fromMap(Map<String, dynamic> map) {
    return ProductMediaProductMedia(
      displaySequence: map['displaySequence']?.toInt() ?? 0,
      productId: map['productId']?.toInt() ?? 0,
      mediaLibraryId: map['mediaLibraryId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductMediaProductMedia.fromJson(String source) =>
      ProductMediaProductMedia.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductMediaProductMedia(displaySequence: $displaySequence, productId: $productId, mediaLibraryId: $mediaLibraryId, id: $id)';
  }

  @override
  List<Object> get props => [displaySequence, productId, mediaLibraryId, id];
}

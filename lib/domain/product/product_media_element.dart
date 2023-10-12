import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'product_medial.dart';

class ProductMediaElement extends Equatable {
  final ProductMediaProductMedia productMedia;
  final String productName;
  final String mediaLibraryName;
  final String picture;
  final String videoUrl;
  ProductMediaElement({
    required this.productMedia,
    required this.productName,
    required this.mediaLibraryName,
    required this.picture,
    required this.videoUrl,
  });

  ProductMediaElement copyWith({
    ProductMediaProductMedia? productMedia,
    String? productName,
    String? mediaLibraryName,
    String? picture,
    String? videoUrl,
  }) {
    return ProductMediaElement(
      productMedia: productMedia ?? this.productMedia,
      productName: productName ?? this.productName,
      mediaLibraryName: mediaLibraryName ?? this.mediaLibraryName,
      picture: picture ?? this.picture,
      videoUrl: videoUrl ?? this.videoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productMedia': productMedia.toMap(),
      'productName': productName,
      'mediaLibraryName': mediaLibraryName,
      'picture': picture,
      'videoUrl': videoUrl,
    };
  }

  factory ProductMediaElement.fromMap(Map<String, dynamic> map) {
    return ProductMediaElement(
      productMedia: ProductMediaProductMedia.fromMap(map['productMedia']),
      productName: map['productName'] ?? '',
      mediaLibraryName: map['mediaLibraryName'] ?? '',
      picture: map['picture'] ?? '',
      videoUrl: map['videoUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductMediaElement.fromJson(String source) =>
      ProductMediaElement.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductMediaElement(productMedia: $productMedia, productName: $productName, mediaLibraryName: $mediaLibraryName, picture: $picture, videoUrl: $videoUrl)';
  }

  @override
  List<Object> get props {
    return [
      productMedia,
      productName,
      mediaLibraryName,
      picture,
      videoUrl,
    ];
  }
}

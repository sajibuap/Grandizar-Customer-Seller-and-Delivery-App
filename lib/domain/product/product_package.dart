import 'dart:convert';

import 'package:equatable/equatable.dart';

class ProductPackage extends Equatable {
  final int productId;
  final String name;
  final String url;
  final String picture;
  final int quantity;
  ProductPackage({
    required this.productId,
    required this.name,
    required this.url,
    required this.picture,
    required this.quantity,
  });

  ProductPackage copyWith({
    int? productId,
    String? name,
    String? url,
    String? picture,
    int? quantity,
  }) {
    return ProductPackage(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      url: url ?? this.url,
      picture: picture ?? this.picture,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'name': name,
      'url': url,
      'picture': picture,
      'quantity': quantity,
    };
  }

  factory ProductPackage.fromMap(Map<String, dynamic> map) {
    return ProductPackage(
      productId: map['productId']?.toInt() ?? 0,
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      picture: map['picture'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductPackage.fromJson(String source) =>
      ProductPackage.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductPackage(productId: $productId, name: $name, url: $url, picture: $picture, quantity: $quantity)';
  }

  @override
  List<Object> get props {
    return [
      productId,
      name,
      url,
      picture,
      quantity,
    ];
  }
}

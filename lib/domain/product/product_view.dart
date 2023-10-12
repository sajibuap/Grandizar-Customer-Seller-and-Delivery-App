import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'product_media_element.dart';
import 'product_package.dart';
import 'proruct_data.dart';

class ProductView extends Equatable {
  final int ratingScore;
  final String currencyIcon;
  final String productCategoryUrl;
  final int storeId;
  final String storeName;
  final String storeLogo;
  final int storeLogoMediaLibraryId;
  final String storeUrl;
  final int totalVariantPrice;
  final int cartQuantity;
  final int shoppingCartId;
  final List<String> storeTags;
  final int numberOfRatings;
  final List<ProductMediaElement> productMedias;
  final int displaySequence;
  final List<String> productTags;
  final bool isFlashSale;
  final int flashSaleRemainingDuration;
  final List<String> pickupOrDeliveryTags;
  final bool hasVariant;
  final List<ProductPackage> productPackages;
  final int membershipPrice;
  final String membershipName;
  final String shareUrl;
  final bool hasFaq;
  final Product product;
  final String productCategoryName;
  final String mediaLibraryName;
  final String measurementUnitName;
  final String currencyName;
  final String ratingLikeName;
  final String contactFullName;
  final String picture;
  ProductView({
    required this.ratingScore,
    required this.currencyIcon,
    required this.productCategoryUrl,
    required this.storeId,
    required this.storeName,
    required this.storeLogo,
    required this.storeLogoMediaLibraryId,
    required this.storeUrl,
    required this.totalVariantPrice,
    required this.cartQuantity,
    required this.shoppingCartId,
    required this.storeTags,
    required this.numberOfRatings,
    required this.productMedias,
    required this.displaySequence,
    required this.productTags,
    required this.isFlashSale,
    required this.flashSaleRemainingDuration,
    required this.pickupOrDeliveryTags,
    required this.hasVariant,
    required this.productPackages,
    required this.membershipPrice,
    required this.membershipName,
    required this.shareUrl,
    required this.hasFaq,
    required this.product,
    required this.productCategoryName,
    required this.mediaLibraryName,
    required this.measurementUnitName,
    required this.currencyName,
    required this.ratingLikeName,
    required this.contactFullName,
    required this.picture,
  });

  ProductView copyWith({
    int? ratingScore,
    String? currencyIcon,
    String? productCategoryUrl,
    int? storeId,
    String? storeName,
    String? storeLogo,
    int? storeLogoMediaLibraryId,
    String? storeUrl,
    int? totalVariantPrice,
    int? cartQuantity,
    int? shoppingCartId,
    List<String>? storeTags,
    int? numberOfRatings,
    List<ProductMediaElement>? productMedias,
    int? displaySequence,
    List<String>? productTags,
    bool? isFlashSale,
    int? flashSaleRemainingDuration,
    List<String>? pickupOrDeliveryTags,
    bool? hasVariant,
    List<ProductPackage>? productPackages,
    int? membershipPrice,
    String? membershipName,
    String? shareUrl,
    bool? hasFaq,
    Product? product,
    String? productCategoryName,
    String? mediaLibraryName,
    String? measurementUnitName,
    String? currencyName,
    String? ratingLikeName,
    String? contactFullName,
    String? picture,
  }) {
    return ProductView(
      ratingScore: ratingScore ?? this.ratingScore,
      currencyIcon: currencyIcon ?? this.currencyIcon,
      productCategoryUrl: productCategoryUrl ?? this.productCategoryUrl,
      storeId: storeId ?? this.storeId,
      storeName: storeName ?? this.storeName,
      storeLogo: storeLogo ?? this.storeLogo,
      storeLogoMediaLibraryId:
          storeLogoMediaLibraryId ?? this.storeLogoMediaLibraryId,
      storeUrl: storeUrl ?? this.storeUrl,
      totalVariantPrice: totalVariantPrice ?? this.totalVariantPrice,
      cartQuantity: cartQuantity ?? this.cartQuantity,
      shoppingCartId: shoppingCartId ?? this.shoppingCartId,
      storeTags: storeTags ?? this.storeTags,
      numberOfRatings: numberOfRatings ?? this.numberOfRatings,
      productMedias: productMedias ?? this.productMedias,
      displaySequence: displaySequence ?? this.displaySequence,
      productTags: productTags ?? this.productTags,
      isFlashSale: isFlashSale ?? this.isFlashSale,
      flashSaleRemainingDuration:
          flashSaleRemainingDuration ?? this.flashSaleRemainingDuration,
      pickupOrDeliveryTags: pickupOrDeliveryTags ?? this.pickupOrDeliveryTags,
      hasVariant: hasVariant ?? this.hasVariant,
      productPackages: productPackages ?? this.productPackages,
      membershipPrice: membershipPrice ?? this.membershipPrice,
      membershipName: membershipName ?? this.membershipName,
      shareUrl: shareUrl ?? this.shareUrl,
      hasFaq: hasFaq ?? this.hasFaq,
      product: product ?? this.product,
      productCategoryName: productCategoryName ?? this.productCategoryName,
      mediaLibraryName: mediaLibraryName ?? this.mediaLibraryName,
      measurementUnitName: measurementUnitName ?? this.measurementUnitName,
      currencyName: currencyName ?? this.currencyName,
      ratingLikeName: ratingLikeName ?? this.ratingLikeName,
      contactFullName: contactFullName ?? this.contactFullName,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ratingScore': ratingScore,
      'currencyIcon': currencyIcon,
      'productCategoryUrl': productCategoryUrl,
      'storeId': storeId,
      'storeName': storeName,
      'storeLogo': storeLogo,
      'storeLogoMediaLibraryId': storeLogoMediaLibraryId,
      'storeUrl': storeUrl,
      'totalVariantPrice': totalVariantPrice,
      'cartQuantity': cartQuantity,
      'shoppingCartId': shoppingCartId,
      'storeTags': storeTags,
      'numberOfRatings': numberOfRatings,
      'productMedias': productMedias.map((x) => x.toMap()).toList(),
      'displaySequence': displaySequence,
      'productTags': productTags,
      'isFlashSale': isFlashSale,
      'flashSaleRemainingDuration': flashSaleRemainingDuration,
      'pickupOrDeliveryTags': pickupOrDeliveryTags,
      'hasVariant': hasVariant,
      'productPackages': productPackages.map((x) => x.toMap()).toList(),
      'membershipPrice': membershipPrice,
      'membershipName': membershipName,
      'shareUrl': shareUrl,
      'hasFaq': hasFaq,
      'product': product.toMap(),
      'productCategoryName': productCategoryName,
      'mediaLibraryName': mediaLibraryName,
      'measurementUnitName': measurementUnitName,
      'currencyName': currencyName,
      'ratingLikeName': ratingLikeName,
      'contactFullName': contactFullName,
      'picture': picture,
    };
  }

  factory ProductView.fromMap(Map<String, dynamic> map) {
    return ProductView(
      ratingScore: map['ratingScore']?.toInt() ?? 0,
      currencyIcon: map['currencyIcon'] ?? '',
      productCategoryUrl: map['productCategoryUrl'] ?? '',
      storeId: map['storeId']?.toInt() ?? 0,
      storeName: map['storeName'] ?? '',
      storeLogo: map['storeLogo'] ?? '',
      storeLogoMediaLibraryId: map['storeLogoMediaLibraryId']?.toInt() ?? 0,
      storeUrl: map['storeUrl'] ?? '',
      totalVariantPrice: map['totalVariantPrice']?.toInt() ?? 0,
      cartQuantity: map['cartQuantity']?.toInt() ?? 0,
      shoppingCartId: map['shoppingCartId']?.toInt() ?? 0,
      storeTags: List<String>.from(map['storeTags']),
      numberOfRatings: map['numberOfRatings']?.toInt() ?? 0,
      productMedias: List<ProductMediaElement>.from(
          map['productMedias']?.map((x) => ProductMediaElement.fromMap(x))),
      displaySequence: map['displaySequence']?.toInt() ?? 0,
      productTags: List<String>.from(map['productTags']),
      isFlashSale: map['isFlashSale'] ?? false,
      flashSaleRemainingDuration:
          map['flashSaleRemainingDuration']?.toInt() ?? 0,
      pickupOrDeliveryTags: List<String>.from(map['pickupOrDeliveryTags']),
      hasVariant: map['hasVariant'] ?? false,
      productPackages: List<ProductPackage>.from(
          map['productPackages']?.map((x) => ProductPackage.fromMap(x))),
      membershipPrice: map['membershipPrice']?.toInt() ?? 0,
      membershipName: map['membershipName'] ?? '',
      shareUrl: map['shareUrl'] ?? '',
      hasFaq: map['hasFaq'] ?? false,
      product: Product.fromMap(map['product']),
      productCategoryName: map['productCategoryName'] ?? '',
      mediaLibraryName: map['mediaLibraryName'] ?? '',
      measurementUnitName: map['measurementUnitName'] ?? '',
      currencyName: map['currencyName'] ?? '',
      ratingLikeName: map['ratingLikeName'] ?? '',
      contactFullName: map['contactFullName'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductView.fromJson(String source) =>
      ProductView.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductView(ratingScore: $ratingScore, currencyIcon: $currencyIcon, productCategoryUrl: $productCategoryUrl, storeId: $storeId, storeName: $storeName, storeLogo: $storeLogo, storeLogoMediaLibraryId: $storeLogoMediaLibraryId, storeUrl: $storeUrl, totalVariantPrice: $totalVariantPrice, cartQuantity: $cartQuantity, shoppingCartId: $shoppingCartId, storeTags: $storeTags, numberOfRatings: $numberOfRatings, productMedias: $productMedias, displaySequence: $displaySequence, productTags: $productTags, isFlashSale: $isFlashSale, flashSaleRemainingDuration: $flashSaleRemainingDuration, pickupOrDeliveryTags: $pickupOrDeliveryTags, hasVariant: $hasVariant, productPackages: $productPackages, membershipPrice: $membershipPrice, membershipName: $membershipName, shareUrl: $shareUrl, hasFaq: $hasFaq, product: $product, productCategoryName: $productCategoryName, mediaLibraryName: $mediaLibraryName, measurementUnitName: $measurementUnitName, currencyName: $currencyName, ratingLikeName: $ratingLikeName, contactFullName: $contactFullName, picture: $picture)';
  }

  @override
  List<Object> get props {
    return [
      ratingScore,
      currencyIcon,
      productCategoryUrl,
      storeId,
      storeName,
      storeLogo,
      storeLogoMediaLibraryId,
      storeUrl,
      totalVariantPrice,
      cartQuantity,
      shoppingCartId,
      storeTags,
      numberOfRatings,
      productMedias,
      displaySequence,
      productTags,
      isFlashSale,
      flashSaleRemainingDuration,
      pickupOrDeliveryTags,
      hasVariant,
      productPackages,
      membershipPrice,
      membershipName,
      shareUrl,
      hasFaq,
      product,
      productCategoryName,
      mediaLibraryName,
      measurementUnitName,
      currencyName,
      ratingLikeName,
      contactFullName,
      picture,
    ];
  }
}

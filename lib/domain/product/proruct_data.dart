import 'dart:convert';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String shortDescription;
  final String description;
  final String sku;
  final String url;
  final String seoTitle;
  final String metaKeywords;
  final String metaDescription;
  final int regularPrice;
  final int salePrice;
  final int priceDiscountPercentage;
  final bool callForPrice;
  final int unitPrice;
  final int measurementAmount;
  final bool isTaxExempt;
  final int stockQuantity;
  final bool isDisplayStockQuantity;
  final bool isPublished;
  final bool isPackageProduct;
  final String internalNotes;
  final bool isTemplate;
  final int priceDiscountAmount;
  final bool isService;
  final bool isWholeSaleProduct;
  final String productManufacturerSku;
  final bool byOrderOnly;
  final int score;
  final int productCategoryId;
  final int mediaLibraryId;
  final int measurementUnitId;
  final int currencyId;
  final int ratingLikeId;
  final int contactId;
  final int storeId;
  final String pictureId;
  final String picture;
  final int id;
  Product({
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.sku,
    required this.url,
    required this.seoTitle,
    required this.metaKeywords,
    required this.metaDescription,
    required this.regularPrice,
    required this.salePrice,
    required this.priceDiscountPercentage,
    required this.callForPrice,
    required this.unitPrice,
    required this.measurementAmount,
    required this.isTaxExempt,
    required this.stockQuantity,
    required this.isDisplayStockQuantity,
    required this.isPublished,
    required this.isPackageProduct,
    required this.internalNotes,
    required this.isTemplate,
    required this.priceDiscountAmount,
    required this.isService,
    required this.isWholeSaleProduct,
    required this.productManufacturerSku,
    required this.byOrderOnly,
    required this.score,
    required this.productCategoryId,
    required this.mediaLibraryId,
    required this.measurementUnitId,
    required this.currencyId,
    required this.ratingLikeId,
    required this.contactId,
    required this.storeId,
    required this.pictureId,
    required this.picture,
    required this.id,
  });

  Product copyWith({
    String? name,
    String? shortDescription,
    String? description,
    String? sku,
    String? url,
    String? seoTitle,
    String? metaKeywords,
    String? metaDescription,
    int? regularPrice,
    int? salePrice,
    int? priceDiscountPercentage,
    bool? callForPrice,
    int? unitPrice,
    int? measurementAmount,
    bool? isTaxExempt,
    int? stockQuantity,
    bool? isDisplayStockQuantity,
    bool? isPublished,
    bool? isPackageProduct,
    String? internalNotes,
    bool? isTemplate,
    int? priceDiscountAmount,
    bool? isService,
    bool? isWholeSaleProduct,
    String? productManufacturerSku,
    bool? byOrderOnly,
    int? score,
    int? productCategoryId,
    int? mediaLibraryId,
    int? measurementUnitId,
    int? currencyId,
    int? ratingLikeId,
    int? contactId,
    int? storeId,
    String? pictureId,
    String? picture,
    int? id,
  }) {
    return Product(
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      description: description ?? this.description,
      sku: sku ?? this.sku,
      url: url ?? this.url,
      seoTitle: seoTitle ?? this.seoTitle,
      metaKeywords: metaKeywords ?? this.metaKeywords,
      metaDescription: metaDescription ?? this.metaDescription,
      regularPrice: regularPrice ?? this.regularPrice,
      salePrice: salePrice ?? this.salePrice,
      priceDiscountPercentage:
          priceDiscountPercentage ?? this.priceDiscountPercentage,
      callForPrice: callForPrice ?? this.callForPrice,
      unitPrice: unitPrice ?? this.unitPrice,
      measurementAmount: measurementAmount ?? this.measurementAmount,
      isTaxExempt: isTaxExempt ?? this.isTaxExempt,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      isDisplayStockQuantity:
          isDisplayStockQuantity ?? this.isDisplayStockQuantity,
      isPublished: isPublished ?? this.isPublished,
      isPackageProduct: isPackageProduct ?? this.isPackageProduct,
      internalNotes: internalNotes ?? this.internalNotes,
      isTemplate: isTemplate ?? this.isTemplate,
      priceDiscountAmount: priceDiscountAmount ?? this.priceDiscountAmount,
      isService: isService ?? this.isService,
      isWholeSaleProduct: isWholeSaleProduct ?? this.isWholeSaleProduct,
      productManufacturerSku:
          productManufacturerSku ?? this.productManufacturerSku,
      byOrderOnly: byOrderOnly ?? this.byOrderOnly,
      score: score ?? this.score,
      productCategoryId: productCategoryId ?? this.productCategoryId,
      mediaLibraryId: mediaLibraryId ?? this.mediaLibraryId,
      measurementUnitId: measurementUnitId ?? this.measurementUnitId,
      currencyId: currencyId ?? this.currencyId,
      ratingLikeId: ratingLikeId ?? this.ratingLikeId,
      contactId: contactId ?? this.contactId,
      storeId: storeId ?? this.storeId,
      pictureId: pictureId ?? this.pictureId,
      picture: picture ?? this.picture,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'shortDescription': shortDescription,
      'description': description,
      'sku': sku,
      'url': url,
      'seoTitle': seoTitle,
      'metaKeywords': metaKeywords,
      'metaDescription': metaDescription,
      'regularPrice': regularPrice,
      'salePrice': salePrice,
      'priceDiscountPercentage': priceDiscountPercentage,
      'callForPrice': callForPrice,
      'unitPrice': unitPrice,
      'measurementAmount': measurementAmount,
      'isTaxExempt': isTaxExempt,
      'stockQuantity': stockQuantity,
      'isDisplayStockQuantity': isDisplayStockQuantity,
      'isPublished': isPublished,
      'isPackageProduct': isPackageProduct,
      'internalNotes': internalNotes,
      'isTemplate': isTemplate,
      'priceDiscountAmount': priceDiscountAmount,
      'isService': isService,
      'isWholeSaleProduct': isWholeSaleProduct,
      'productManufacturerSku': productManufacturerSku,
      'byOrderOnly': byOrderOnly,
      'score': score,
      'productCategoryId': productCategoryId,
      'mediaLibraryId': mediaLibraryId,
      'measurementUnitId': measurementUnitId,
      'currencyId': currencyId,
      'ratingLikeId': ratingLikeId,
      'contactId': contactId,
      'storeId': storeId,
      'pictureId': pictureId,
      'picture': picture,
      'id': id,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      shortDescription: map['shortDescription'] ?? '',
      description: map['description'] ?? '',
      sku: map['sku'] ?? '',
      url: map['url'] ?? '',
      seoTitle: map['seoTitle'] ?? '',
      metaKeywords: map['metaKeywords'] ?? '',
      metaDescription: map['metaDescription'] ?? '',
      regularPrice: map['regularPrice']?.toInt() ?? 0,
      salePrice: map['salePrice']?.toInt() ?? 0,
      priceDiscountPercentage: map['priceDiscountPercentage']?.toInt() ?? 0,
      callForPrice: map['callForPrice'] ?? false,
      unitPrice: map['unitPrice']?.toInt() ?? 0,
      measurementAmount: map['measurementAmount']?.toInt() ?? 0,
      isTaxExempt: map['isTaxExempt'] ?? false,
      stockQuantity: map['stockQuantity']?.toInt() ?? 0,
      isDisplayStockQuantity: map['isDisplayStockQuantity'] ?? false,
      isPublished: map['isPublished'] ?? false,
      isPackageProduct: map['isPackageProduct'] ?? false,
      internalNotes: map['internalNotes'] ?? '',
      isTemplate: map['isTemplate'] ?? false,
      priceDiscountAmount: map['priceDiscountAmount']?.toInt() ?? 0,
      isService: map['isService'] ?? false,
      isWholeSaleProduct: map['isWholeSaleProduct'] ?? false,
      productManufacturerSku: map['productManufacturerSku'] ?? '',
      byOrderOnly: map['byOrderOnly'] ?? false,
      score: map['score']?.toInt() ?? 0,
      productCategoryId: map['productCategoryId']?.toInt() ?? 0,
      mediaLibraryId: map['mediaLibraryId']?.toInt() ?? 0,
      measurementUnitId: map['measurementUnitId']?.toInt() ?? 0,
      currencyId: map['currencyId']?.toInt() ?? 0,
      ratingLikeId: map['ratingLikeId']?.toInt() ?? 0,
      contactId: map['contactId']?.toInt() ?? 0,
      storeId: map['storeId']?.toInt() ?? 0,
      pictureId: map['pictureId'] ?? '',
      picture: map['picture'] ?? '',
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(name: $name, shortDescription: $shortDescription, description: $description, sku: $sku, url: $url, seoTitle: $seoTitle, metaKeywords: $metaKeywords, metaDescription: $metaDescription, regularPrice: $regularPrice, salePrice: $salePrice, priceDiscountPercentage: $priceDiscountPercentage, callForPrice: $callForPrice, unitPrice: $unitPrice, measurementAmount: $measurementAmount, isTaxExempt: $isTaxExempt, stockQuantity: $stockQuantity, isDisplayStockQuantity: $isDisplayStockQuantity, isPublished: $isPublished, isPackageProduct: $isPackageProduct, internalNotes: $internalNotes, isTemplate: $isTemplate, priceDiscountAmount: $priceDiscountAmount, isService: $isService, isWholeSaleProduct: $isWholeSaleProduct, productManufacturerSku: $productManufacturerSku, byOrderOnly: $byOrderOnly, score: $score, productCategoryId: $productCategoryId, mediaLibraryId: $mediaLibraryId, measurementUnitId: $measurementUnitId, currencyId: $currencyId, ratingLikeId: $ratingLikeId, contactId: $contactId, storeId: $storeId, pictureId: $pictureId, picture: $picture, id: $id)';
  }

  @override
  List<Object> get props {
    return [
      name,
      shortDescription,
      description,
      sku,
      url,
      seoTitle,
      metaKeywords,
      metaDescription,
      regularPrice,
      salePrice,
      priceDiscountPercentage,
      callForPrice,
      unitPrice,
      measurementAmount,
      isTaxExempt,
      stockQuantity,
      isDisplayStockQuantity,
      isPublished,
      isPackageProduct,
      internalNotes,
      isTemplate,
      priceDiscountAmount,
      isService,
      isWholeSaleProduct,
      productManufacturerSku,
      byOrderOnly,
      score,
      productCategoryId,
      mediaLibraryId,
      measurementUnitId,
      currencyId,
      ratingLikeId,
      contactId,
      storeId,
      pictureId,
      picture,
      id,
    ];
  }
}

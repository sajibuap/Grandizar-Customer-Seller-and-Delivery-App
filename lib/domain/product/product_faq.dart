import 'dart:convert';

import 'package:equatable/equatable.dart';

class ProductFaq extends Equatable {
  final String question;
  final String answer;
  final bool template;
  final bool publish;
  final int productId;
  final int id;
  ProductFaq({
    required this.question,
    required this.answer,
    required this.template,
    required this.publish,
    required this.productId,
    required this.id,
  });

  ProductFaq copyWith({
    String? question,
    String? answer,
    bool? template,
    bool? publish,
    int? productId,
    int? id,
  }) {
    return ProductFaq(
      question: question ?? this.question,
      answer: answer ?? this.answer,
      template: template ?? this.template,
      publish: publish ?? this.publish,
      productId: productId ?? this.productId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'answer': answer,
      'template': template,
      'publish': publish,
      'productId': productId,
      'id': id,
    };
  }

  factory ProductFaq.fromMap(Map<String, dynamic> map) {
    return ProductFaq(
      question: map['question'] ?? '',
      answer: map['answer'] ?? '',
      template: map['template'] ?? false,
      publish: map['publish'] ?? false,
      productId: map['productId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductFaq.fromJson(String source) =>
      ProductFaq.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductFaq(question: $question, answer: $answer, template: $template, publish: $publish, productId: $productId, id: $id)';
  }

  @override
  List<Object> get props {
    return [
      question,
      answer,
      template,
      publish,
      productId,
      id,
    ];
  }
}

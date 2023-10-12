import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:grandizar_customer_v2/domain/hub/hub_item.dart';

class HubList extends Equatable {
  final int totalCount;
  final List<HubItem> items;
  HubList({
    required this.totalCount,
    required this.items,
  });

  HubList copyWith({
    int? totalCount,
    List<HubItem>? items,
  }) {
    return HubList(
      totalCount: totalCount ?? this.totalCount,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalCount': totalCount,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory HubList.fromMap(Map<String, dynamic> map) {
    return HubList(
      totalCount: map['totalCount']?.toInt() ?? 0,
      items: List<HubItem>.from(map['items']?.map((x) => HubItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory HubList.fromJson(String source) =>
      HubList.fromMap(json.decode(source));

  @override
  String toString() => 'HubList(totalCount: $totalCount, items: $items)';

  @override
  List<Object> get props => [totalCount, items];
}

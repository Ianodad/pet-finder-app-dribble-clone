// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Category {
  final String? id;
  final String? title;
  final int? total;
  final String? image;
  final Color? color;

  const Category({
    this.id,
    this.title,
    this.total,
    this.image,
    this.color,
  });

  Category copyWith({
    String? id,
    String? title,
    int? total,
    String? image,
    Color? color,
  }) {
    return Category(
      id: id ?? this.id,
      title: title ?? this.title,
      total: total ?? this.total,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'total': total,
      'image': image,
      'color': color?.value,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      total: map['total'] != null ? map['total'] as int : null,
      image: map['image'] != null ? map['image'] as String : null,
      color: map['color'] != null ? Color(map['color'] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Category(id: $id, title: $title, total: $total, image: $image, color: $color)';
  }

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.total == total &&
        other.image == image &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        total.hashCode ^
        image.hashCode ^
        color.hashCode;
  }
}

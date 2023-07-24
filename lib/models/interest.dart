// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Interest {
  String title;
  String imageUrl;
  Interest({
    required this.title,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'imageUrl': imageUrl,
    };
  }

  factory Interest.fromMap(Map<String, dynamic> map) {
    return Interest(
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Interest.fromJson(String source) =>
      Interest.fromMap(json.decode(source) as Map<String, dynamic>);
}

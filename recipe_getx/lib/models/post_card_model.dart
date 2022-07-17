import 'dart:convert';

class PostCardModel {
  PostCardModel({
    required this.profilePic,
    required this.profileName,
    required this.postPic,
    required this.postName,
    required this.category,
    required this.postTime,
    this.isLiked = false,
  });

  factory PostCardModel.fromJson(String source) => PostCardModel.fromMap(
        json.decode(source),
      );

  factory PostCardModel.fromMap(Map<String, dynamic> map) {
    return PostCardModel(
      profilePic: map['profilePic'] ?? '',
      profileName: map['profileName'] ?? '',
      postPic: map['postPic'] ?? '',
      postName: map['postName'] ?? '',
      category: map['category'] ?? '',
      postTime: map['postTime'] ?? '',
      isLiked: map['isLiked'],
    );
  }

  final String category;
  final bool? isLiked;
  final String postName;
  final String postPic;
  final String postTime;
  final String profileName;
  final String profilePic;

  PostCardModel copyWith({
    String? profilePic,
    String? profileName,
    String? postPic,
    String? postName,
    String? category,
    String? postTime,
    bool? isLiked,
  }) {
    return PostCardModel(
      profilePic: profilePic ?? this.profilePic,
      profileName: profileName ?? this.profileName,
      postPic: postPic ?? this.postPic,
      postName: postName ?? this.postName,
      category: category ?? this.category,
      postTime: postTime ?? this.postTime,
      isLiked: isLiked ?? this.isLiked,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'profilePic': profilePic});
    result.addAll({'profileName': profileName});
    result.addAll({'postPic': postPic});
    result.addAll({'postName': postName});
    result.addAll({'category': category});
    result.addAll({'postTime': postTime});
    if (isLiked != null) {
      result.addAll({'isLiked': isLiked});
    }

    return result;
  }

  String toJson() => json.encode(toMap());
}

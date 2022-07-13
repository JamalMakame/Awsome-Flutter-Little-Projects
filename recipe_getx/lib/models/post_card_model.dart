import 'dart:convert';

class PostCardModel {
  final String profilePic;
  final String profileName;
  final String postPic;
  final String postName;
  final String category;
  final String postTime;
  final bool? isLiked;
  PostCardModel({
    required this.profilePic,
    required this.profileName,
    required this.postPic,
    required this.postName,
    required this.category,
    required this.postTime,
    this.isLiked = false,
  });

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

  String toJson() => json.encode(toMap());

  factory PostCardModel.fromJson(String source) => PostCardModel.fromMap(
        json.decode(source),
      );

  @override
  String toString() {
    return 'PostCardModel(profilePic: $profilePic, profileName: $profileName, postPic: $postPic, postName: $postName, category: $category, postTime: $postTime, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostCardModel &&
        other.profilePic == profilePic &&
        other.profileName == profileName &&
        other.postPic == postPic &&
        other.postName == postName &&
        other.category == category &&
        other.postTime == postTime &&
        other.isLiked == isLiked;
  }

  @override
  int get hashCode {
    return profilePic.hashCode ^
        profileName.hashCode ^
        postPic.hashCode ^
        postName.hashCode ^
        category.hashCode ^
        postTime.hashCode ^
        isLiked.hashCode;
  }
}

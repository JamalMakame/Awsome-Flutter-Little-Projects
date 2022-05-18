import 'dart:convert';

class ProjectCardModel {
  ProjectCardModel({
    required this.projectNumber,
    required this.projectTitle,
    required this.projectDate,
  });

  final String projectDate;
  final int projectNumber;
  final String projectTitle;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'projectDate': projectDate});
    result.addAll({'projectNumber': projectNumber});
    result.addAll({'projectTitle': projectTitle});
  
    return result;
  }

  factory ProjectCardModel.fromMap(Map<String, dynamic> map) {
    return ProjectCardModel(
      projectDate: map['projectDate'] ?? '',
      projectNumber: map['projectNumber']?.toInt() ?? 0,
      projectTitle: map['projectTitle'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectCardModel.fromJson(String source) => ProjectCardModel.fromMap(json.decode(source));
}

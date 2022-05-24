import 'dart:convert';

class TaskModel {
  int? id;
  String? name;
  String? date;
  String? startTime;
  String? endTime;
  String? description;
  int? color;
  int? isCompleted;
  TaskModel({
    this.id,
    this.name,
    this.date,
    this.startTime,
    this.endTime,
    this.description,
    this.color,
    this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(date != null){
      result.addAll({'date': date});
    }
    if(startTime != null){
      result.addAll({'startTime': startTime});
    }
    if(endTime != null){
      result.addAll({'endTime': endTime});
    }
    if(description != null){
      result.addAll({'description': description});
    }
    if(color != null){
      result.addAll({'color': color});
    }
    if(isCompleted != null){
      result.addAll({'isCompleted': isCompleted});
    }
  
    return result;
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id']?.toInt(),
      name: map['name'],
      date: map['date'],
      startTime: map['startTime'],
      endTime: map['endTime'],
      description: map['description'],
      color: map['color']?.toInt(),
      isCompleted: map['isCompleted']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source));
}

import 'package:flutter/material.dart';

class Project {
  final String id;
  final String engineerId;
  final String name;
  final String description;
  final List<String> images;
  final DateTime startDate;
  final DateTime endDate;

  Project({
    required this.id,
    required this.engineerId,
    required this.name,
    required this.description,
    required this.images,
    required this.startDate,
    required this.endDate,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      engineerId: json['engineerId'],
      name: json['name'],
      description: json['description'],
      images: List<String>.from(json['images']),
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'engineerId': engineerId,
      'name': name,
      'description': description,
      'images': images,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
    };
  }
}

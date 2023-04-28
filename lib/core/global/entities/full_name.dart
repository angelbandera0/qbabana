import 'package:equatable/equatable.dart';

class FullName extends Equatable {
  FullName(this.name, this.lastName);

  final String name;
  final String lastName;

  Map<String, dynamic> toJson() => {
    'name': name,
    'lastName': lastName,
  };

  factory FullName.fromJson(Map<String, dynamic> json) {
    return FullName(json['name'] as String, json['lastName'] as String);
  }

  @override
  List<Object?> get props => [];
}

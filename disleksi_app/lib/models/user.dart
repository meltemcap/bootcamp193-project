import 'package:disleksi_app/providers/base.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final double? accuracyScore;
  final DateTime createdDate;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.accuracyScore,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [id, email];

  factory User.fromMap(ApiObject data) => User(
    id: data['id'],
    name: data['name'],
    email: data['email'],
    accuracyScore: data['accuracy_score'],
    createdDate: DateTime.parse(data['created_at']).toLocal(),
  );

  static List<User> fromList(List<ApiObject> dataList) => dataList.map((data) => User.fromMap(data)).toList();
}

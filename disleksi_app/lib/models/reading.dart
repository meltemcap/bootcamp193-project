import 'package:disleksi_app/providers/base.dart';
import 'package:equatable/equatable.dart';

class Reading extends Equatable {
  final int id;
  final int paragraphId;
  final int userId;
  final String readText;
  final DateTime createdDate;

  const Reading({
    required this.id,
    required this.paragraphId,
    required this.userId,
    required this.readText,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [id, createdDate];

  factory Reading.fromMap(ApiObject data) => Reading(
    id: data['id'],
    paragraphId: data['text'],
    userId: data['difficulty_level'],
    readText: data['language_code'],
    createdDate: data['created_at'],
  );

  static List<Reading> fromList(List<ApiObject> dataList) => dataList.map((data) => Reading.fromMap(data)).toList();
}

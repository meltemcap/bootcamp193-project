import 'package:disleksi_app/providers/base.dart';
import 'package:equatable/equatable.dart';

class Paragraph extends Equatable {
  final int id;
  final String text;
  final String difficultyLevel;
  final String languageCode;
  final DateTime createdDate;

  const Paragraph({
    required this.id,
    required this.text,
    required this.difficultyLevel,
    required this.languageCode,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [id, createdDate];

  factory Paragraph.fromMap(ApiObject data) => Paragraph(
    id: data['id'],
    text: data['text'],
    difficultyLevel: data['difficulty_level'],
    languageCode: data['language_code'],
    createdDate: DateTime.parse(data['created_at']).toLocal(),
  );

  static List<Paragraph> fromList(List<ApiObject> dataList) => dataList.map((data) => Paragraph.fromMap(data)).toList();
}

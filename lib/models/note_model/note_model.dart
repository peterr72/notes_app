import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  int color;
  NoteModel({required this.title, required this.description, required this.color});

  factory NoteModel.fromJson(Map json) {
    return NoteModel(
      title: json['title'],
      description: json['description'],
      color: json['color'],
    );
  }
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'color': color,
      };
}

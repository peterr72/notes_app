class NoteModel {
  String title;
  String description;
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

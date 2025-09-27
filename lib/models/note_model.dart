import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;
// non-final title & subtitle because they change when I edit any note...
  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}

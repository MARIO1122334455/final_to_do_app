class Task {
  String id;
  String title;
  String description;
  DateTime dateTime;
  bool isdone;

  Task(
      {this.id = '',
      required this.dateTime,
      required this.title,
      required this.description,
      
      this.isdone = false});
}

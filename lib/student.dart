class Student {
  final String id;
  final String name;
  final double gpa;
  Student(this.gpa, this.id, this.name);
  @override
  String toString() {
    return 'ID: $id | Name: $name | GPA: $gpa';
  }
}

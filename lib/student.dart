class Student {
  String? id, name;
  double? grade;
  Student(this.grade, this.id, this.name);
  @override
  String toString() {
    return 'The id is $id and the name is $name and the grade is $grade';
  }
}

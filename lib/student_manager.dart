import 'student.dart';
class StudentManager {
  List<Student> students = [];
  void addStudent(Student student) => students.add(student);
  void removeStudentById(String id) {
    students.removeWhere((student) => student.id == id);
  }
  void updateStudent(Student student) {
   int index = students.indexWhere((s) => s.id == student.id);
    if (index != -1) {
      students[index] = student;
    }
  }
  Student? getStudentById(String id) {
    for (Student student in students) {
      if (student.id == id) {
        return student;
      }
    }
    return null;
  }
  void showAllStuden() {
    students.forEach((student) => print(student));
  }
}
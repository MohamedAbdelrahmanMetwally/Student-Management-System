import 'dart:io';

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
   void loadFromFile(String path) {
    File file = File(path);
    if (!file.existsSync()) {
      print("File not found!");
      return;
    }
    List<String> lines = file.readAsLinesSync();
    students.clear();
    for (var line in lines) {
      if (line.trim().isEmpty) continue;
      List<String> parts = line.split(",");
      if (parts.length == 3) {
        students.add(
          Student(
            double.parse(parts[2]),
            parts[0],
            parts[1],
          ),
        );
      }
    }
    print("Loaded successfully from file.");
  }
  void saveToFile(String path) {
    File file = File(path);
    String buffer = "";
    for (var s in students) {
      buffer += "${s.id},${s.name},${s.grade}\n";
    }
    file.writeAsStringSync(buffer);
    print("Saved successfully to file.");
  }
}
import 'student.dart';
import 'dart:io';
class StudentManager {
  final List<Student> _students = [];
  bool _isIdTaken(String id) {
    return _students.any((s) => s.id == id);
  }
  bool _isValidGpa(double gpa) {
    return gpa >= 0.0 && gpa <= 4.0;
  }
  String addStudent(Student student) {
    if (_isIdTaken(student.id)) {
      return "Error: Student ID already exists!";
    }
    if (!_isValidGpa(student.gpa)) {
      return "Error: GPA must be between 0.0 and 4.0";
    }
    _students.add(student);
    return "Student added successfully.";
  }
  void removeStudentById(String id) {
     _students.removeWhere((s) => s.id == id);
  }
  String updateStudent(Student student) {
    final index = _students.indexWhere((s) => s.id == student.id);
    if (index == -1) {
      return "Error: Student not found.";
    }
    if (!_isValidGpa(student.gpa)) {
      return "Error: Invalid GPA.";
    }
    _students[index] = student;
    return "Student updated successfully.";
  }
   Student? getStudentById(String id) {
    for (Student student in _students) {
      if (student.id == id) {
        return student;
      }
    }
    return null;
  }
  void showAllStudents() {
    if (_students.isEmpty) {
      print("No students available.");
      return;
    }
    for (var student in _students) {
      print(student);
    }
  }
  void saveToFile(String path) {
    try {
      final file = File(path);
      final buffer = StringBuffer();
      for (var s in _students) {
        buffer.writeln("${s.id},${s.name},${s.gpa}");
      }
      file.writeAsStringSync(buffer.toString());
      print("Saved data successfully.");
    } catch (e) {
      print("Error saving file: $e");
    }
  }
  void loadFromFile(String path) {
    try {
      final file = File(path);

      if (!file.existsSync()) {
        print("File not found. Creating new one...");
        file.createSync(recursive: true);
        return;
      }
      final lines = file.readAsLinesSync();
      _students.clear(); 
      for (var line in lines) {
        if (line.trim().isEmpty) continue;
        final parts = line.split(",");
        if (parts.length != 3) continue;
        final id = parts[0];
        final name = parts[1];
        final gpa = double.tryParse(parts[2]) ?? -1;
        if (!_isValidGpa(gpa)) continue;
        _students.add(Student(gpa, id, name));
      }
      print("Loaded data successfully.");
    } catch (e) {
      print("Error loading file: $e");
    }
  }
}
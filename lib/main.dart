import 'dart:io';
import 'student.dart';
import 'student_manager.dart';

void main(List<String> args) {
  StudentManager studentManager = StudentManager();
  while (true) {
    print("a-add a student");
    print("b-remove a student");
    print("c-update a student");
    print("d-show all students");
    print("e-search for a student");
    print('f-load from file');
    print("g-add to file");
    print("h-exit");
    stdout.write("Enter your choice : ");
    String answer = stdin.readLineSync()!;
    if (answer == "a") {
      stdout.write("Enter the id : ");
      String id = stdin.readLineSync()!;
      stdout.write("Enter the name : ");
      String name = stdin.readLineSync()!;
      stdout.write("Enter the gpa : ");
      double gpa = double.parse(stdin.readLineSync()!);
      studentManager.addStudent(new Student(gpa, id, name));
      print("added succesfully");
    } else if (answer == "b") {
      stdout.write("Enter the id : ");
      String id = stdin.readLineSync()!;
      studentManager.removeStudentById(id);
      print("removed succesfully");
    } else if (answer == 'c') {
      stdout.write("Enter the id : ");
      String id = stdin.readLineSync()!;
      stdout.write("Enter the name : ");
      String name = stdin.readLineSync()!;
      stdout.write("Enter the gpa : ");
      double gpa = double.parse(stdin.readLineSync()!);
      studentManager.updateStudent(new Student(gpa, id, name));
      print("updated succesfully succesfully");
    } else if (answer == "d") {
      studentManager.showAllStuden();
    } else if (answer == "e") {
      stdout.write("Enter the id : ");
      String id = stdin.readLineSync()!;
      var student = studentManager.getStudentById(id);
      if (student == null) {
        print("Student not found.\n");
      } else {
        print(student);
        print("Search complete.\n");
      }
    } else if (answer == "f") {
      studentManager.loadFromFile('data/student.txt');
    } else if (answer == "g") {
      studentManager.saveToFile("data/student.txt");
    } else {
      print("Thanks for your time");
      break;
    }
  }
}

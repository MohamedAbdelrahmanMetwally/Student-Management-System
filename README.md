# Student Management System

A simple console-based **Student Management System** built with **Dart**.  
The system allows you to add, remove, update, search, display, load, and save student records using a text file.

---

## 📌 Features

- Add a student (ID, Name, GPA)
- Remove a student by ID
- Update an existing student
- Display all students
- Search for a student by ID
- Load student data from a text file
- Save student data to a text file

---

## 📁 Project Structure

<img width="356" height="291" alt="image" src="https://github.com/user-attachments/assets/e8c26c6c-2e93-4825-a20b-a7be344672b1" />

---

## 🚀 How to Run

1. Make sure you have **Dart SDK** installed.
2. Open your terminal inside the project folder.
3. Run the application:

   ```bash
   dart run main.dart
4. A menu will appear with options (a, b, c, d, e, f, g, h).
Choose an option to perform the desired operation.

---

## 📄 Data File Format
- Student data is stored in:
  data/student.json
- Each line represents a student:
  id,name,gpa


---

## 💾 Saving & Loading Data
<ul>
  <li>
Load data from file → Option f
Reads all students from data/student.txt and loads them into the system.
  </li>
  <li>
    Save data to file → Option g
Writes all current students to data/student.txt.
  </li>
</ul>

---
## screen shots
- ✅ Screenshot 1 — Main Menu
```
  ====== Student Management System ======
a - Add a student
b - Remove a student
c - Update a student
d - Show all students
e - Search for a student
f - Load from file
g - Save to file
h - Exit
Enter your choice:
```
- ✅ Screenshot 2 — Adding a Student
 ```
   Enter your choice: a
Enter ID: 101
Enter name: Ahmed
Enter GPA: 3.5
Student added successfully.
```
- ✅ Screenshot 3 — Showing All Students
```
Enter your choice: d
ID: 101 | Name: Ahmed | GPA: 3.5
ID: 102 | Name: Sara  | GPA: 3.9
ID: 103 | Name: Omar  | GPA: 2.8
```
- ✅ Screenshot 4 — Searching for a Student
```
  Enter your choice: e
Enter ID: 102
ID: 102 | Name: Sara | GPA: 3.9
Search complete.
```
- ✅ Screenshot 5 — Updating a Student
```
  Enter your choice: c
Enter ID: 101
Enter new name: Ahmed Ali
Enter new GPA: 3.8
Student updated successfully.
```
- ✅ Screenshot 6 — Removing a Student
 ```
  Enter your choice: b
Enter ID: 103
Student removed successfully.
```
---
## 🛠️ Requirements
<ul>
  <li>
Dart SDK installed
  </li>
  <li>
  Read/Write permission on the data/ folder
  </li>
</ul>

---

## 🌟 Future Improvements
<ul>
    <li>
Use JSON instead of plain text for more flexibility
  </li>
  <li>
  Add validation for inputs (e.g., unique ID, valid GPA)
  </li>
    <li>
Add sorting and filtering options
  </li>
  <li>
 Create a GUI version using Flutter
  </li>
    <li>
Store data in CSV or a real database like SQLite
  </li>
  <li>
 Add colors and formatting to the console menu
  </li>
</ul>

---

## 🤝 Contributing
- Contributions are welcome!
 <ol>
  <li>Fork the repository</li>
  <li>Create a new branch</li>
  <li>Implement your changes</li>
  <li>Open a pull request</li>
</ol>

---
## 📬 Contact
- GitHub: <a href="https://github.com/MohamedAbdelrahmanMetwally/">MohamedAbdelrahmanMetwally</a>


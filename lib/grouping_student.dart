import 'package:flutter/material.dart';

class StudentGrouping extends StatefulWidget {
  const StudentGrouping({super.key});

  @override
  State<StudentGrouping> createState() {
    return _StudentGroupingState();
  }
}

class _StudentGroupingState extends State<StudentGrouping> {
  final TextEditingController _nameController = TextEditingController();
  final List<String> _studentList = [];
  final List<List<String>> _randomGroups = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          style: const TextStyle(color: Color.fromARGB(223, 78, 137, 180)),
          controller: _nameController,
          decoration: const InputDecoration(
              labelText: 'Enter Student Name',
              labelStyle: TextStyle(
                  color: Color.fromARGB(133, 223, 228, 228),
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 200,
        ),
        ElevatedButton(
          onPressed: () {
            _addStudent();
          },
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 120, 54, 186),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Add Student'),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            _generateRandomGroups();
          },
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 120, 54, 186),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Generate Random Groups'),
        ),
      ],
    );
  }

  void _generateRandomGroups() {
    _randomGroups.clear();
    _studentList.shuffle();

    for (int i = 0; i < _studentList.length; i += 5) {
      int end = i + 5;
      List<String> group = _studentList.sublist(
          i, end > _studentList.length ? _studentList.length : end);
      _randomGroups.add(group);
    }
  }

  void _addStudent() {
    String newName = _nameController.text.trim();

    if (newName.isNotEmpty && !_studentList.contains(newName)) {
      setState(() {
        _studentList.add(newName);
        _nameController.clear();
      });
    }
  }
}

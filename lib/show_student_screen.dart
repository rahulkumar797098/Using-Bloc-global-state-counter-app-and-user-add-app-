import 'package:block_counter_app/student_block/student_bloc.dart';
import 'package:block_counter_app/student_block/student_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowStudentScreen extends StatelessWidget {
  const ShowStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List"),
      ),
      body: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          // Check if there are students in the state
          if (state.students.isEmpty) {
            return const Center(child: Text('No students available'));
          }

          return GridView.builder(
            itemCount: state.students.length, // Number of students
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Display 2 students per row
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.students[index].name, // Student's name
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      state.students[index].uid.toString(), // Convert int UID to String
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

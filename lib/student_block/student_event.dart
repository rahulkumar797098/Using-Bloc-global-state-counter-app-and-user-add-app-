import 'package:block_counter_app/student_block/student_model.dart';



abstract class StudentEvent {}

class AddStudentEvent extends StudentEvent {
  final StudentModel student;
  AddStudentEvent({required this.student});
}

class RemoveStudentEvent extends StudentEvent {
  final int uid;
  RemoveStudentEvent({required this.uid});
}

class UpdateStudentEvent extends StudentEvent {
  final StudentModel updateData ;
  final int uid ;
  UpdateStudentEvent({required this.updateData , required this.uid}) ;

}


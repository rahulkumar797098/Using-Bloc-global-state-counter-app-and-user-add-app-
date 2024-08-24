import 'package:flutter_bloc/flutter_bloc.dart';
import 'student_model.dart';
import 'student_state.dart';
import 'student_event.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState(students: [])) {


    on<AddStudentEvent>((event, emit) {
      var currentData = state.students ;
      currentData.add(event.student);
      emit(StudentState(students: currentData));
    }) ;


    on<UpdateStudentEvent>((event, emit) {
      var currentData = state.students ;
      currentData[event.uid] = event.updateData ;
      emit(StudentState(students: currentData));
    }) ;


    on<RemoveStudentEvent>((event, emit) {
      var currentData = state.students ;
      currentData.removeAt(event.uid) ;
      emit(StudentState(students: currentData));
    }) ;




  }
}

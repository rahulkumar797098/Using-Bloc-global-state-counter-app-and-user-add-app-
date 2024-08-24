import 'package:block_counter_app/bloc/counter_event.dart';
import 'package:block_counter_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent , CounterState> {
  CounterBloc():super(CounterState(count: 0)){
    
    on<IncrementCounterEvent>((event , emit) {
      emit(CounterState(count: state.count + 1)) ;
    }) ;

    on<DecrementCounterEvent>((event , emit) {
      if(state.count > 0 ) {
        emit(CounterState(count: state.count - 1));
      }
    }) ;
  }
}
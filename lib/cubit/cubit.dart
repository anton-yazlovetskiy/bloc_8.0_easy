import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lib/cubit/cubit_state.dart';

class ExampleCubit extends Cubit<CubitState> {
  ExampleCubit() : super(CubitState(counter: 10));

  void incrementCounter() {
    emit(CubitState(counter: state.counter + 1));
  }

  void decrementCounter() {
    emit(CubitState(counter: state.counter - 1));
  }
}

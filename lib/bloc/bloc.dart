//import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lib/bloc/bloc_events.dart';
import 'package:flutter_bloc_lib/bloc/bloc_state.dart';

class ExampleBloc extends Bloc<EventsBloc, BlocState> {
  ExampleBloc() : super(BlocState(counter: -10)) {
    //Задаем начальное состояние
    on<EventIncrement>((event, emit) async {
      //Обрабатываем события
      //debugPrint('EventInkrement');
      emit(BlocState(counter: state.counter + 1));
    });
    on<EventDecrement>((event, emit) async {
      //Обрабатываем события
      //debugPrint('EventDekrement');
      emit(BlocState(counter: state.counter - 1));
    });
  }
}

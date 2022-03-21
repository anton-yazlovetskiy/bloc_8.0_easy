import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lib/cubit/cubit.dart';
import 'package:flutter_bloc_lib/cubit/cubit_state.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExampleCubit(),
      child: const _CubitScaffold(),
    );
  }
}

class _CubitScaffold extends StatelessWidget {
  const _CubitScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit counter'),
      ),
      body: Center(
        child: BlocBuilder<ExampleCubit, CubitState>(
          builder: (context, state) => Text(
            '${state.counter}',
            style: const TextStyle(fontSize: 28.0),
          ),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          heroTag: "btn3",
          onPressed: () {
            context.read<ExampleCubit>().incrementCounter();
            //_bloc.add(ColorEvent.eventRed);
          },
          child: const Text('+'),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          heroTag: "btn4",
          onPressed: () {
            context.read<ExampleCubit>().decrementCounter();
            //_bloc.add(ColorEvent.eventGreen);
          },
          child: const Text('-'),
        ),
      ]),
    );
  }
}

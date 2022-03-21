import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lib/bloc/bloc.dart';
import 'package:flutter_bloc_lib/bloc/bloc_events.dart';
import 'package:flutter_bloc_lib/bloc/bloc_state.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExampleBloc>(
      create: (context) => ExampleBloc(),
      child: const _BlocScaffold(),
    );
  }
}

class _BlocScaffold extends StatelessWidget {
  const _BlocScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc counter'),
      ),
      body: BlocBuilder<ExampleBloc, BlocState>(builder: (context, state) {
        return Center(
          child: Text(
            '${state.counter}',
            style: const TextStyle(fontSize: 28.0),
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              context.read<ExampleBloc>().add(EventIncrement());
            },
            child: const Text('+'),
          ),
          const SizedBox(height: 50.0),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              context.read<ExampleBloc>().add(EventDecrement());
            },
            child: const Text('-'),
          ),
        ],
      ),
    );
  }
}

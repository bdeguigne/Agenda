import 'package:agenda/application/homework/homework_watcher/homework_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskPage extends StatelessWidget {
  final Function() onSignOutPressed;

  const TaskPage({
    Key key,
    @required this.onSignOutPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeworkWatcherBloc, HomeworkWatcherState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(
            child: Text("Load homeworks..."),
          ),
          loadSuccess: (success) {
            print("HOME LOADED ${success.homeworks}");
            return const Center(
              child: Text("Homework loaded"),
            );
          },
          loadFailure: (_) => const Center(
            child: Text("Homework failed to load"),
          ),
        );

        // return Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Center(
        //       child: Text("Task"),
        //     ),
        //     ElevatedButton(
        //       onPressed: () => onSignOutPressed(),
        //       child: const Text("Sign out"),
        //     ),
        //   ],
        // );
      },
    );
  }
}

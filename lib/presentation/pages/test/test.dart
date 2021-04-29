import 'package:agenda/application/test/bloc_test_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test page"),
      ),
      body: BlocProvider(
        create: (context) => BlocTestBloc(),
        child: BlocConsumer<BlocTestBloc, BlocTestState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.emailTest
                      .fold(() => "no value", (a) => a.getOrCrash())),
                  ElevatedButton(
                    onPressed: () => context
                        .read<BlocTestBloc>()
                        .add(const BlocTestEvent.started()),
                    child: const Text("Change value"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

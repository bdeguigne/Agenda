import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/navigation/navigation_bloc.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/presentation/pages/home/widgets/bottom_navigation.dart';
import 'package:agenda/presentation/pages/home/widgets/home_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:agenda/presentation/routes/router.gr.dart';

class Navigation extends StatelessWidget {
  final User user;

  const Navigation({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: user.isTeacher
          ? SizedBox(
              child: FloatingActionButton(
                onPressed: () => context.read<NavigationBloc>().add(
                      const NavigationEvent.homeworkFormShowed(),
                    ),
                child: const Icon(Icons.add),
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigation(
        onTasksPageSelected: () => context.read<NavigationBloc>().add(
              const NavigationEvent.taskPageShowed(),
            ),
        onCalendarPageSelected: () => context.read<NavigationBloc>().add(
              const NavigationEvent.calendarPageShowed(),
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 72,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                ),
                onPressed: () =>
                    ExtendedNavigator.of(context).pushProfilePage()),
          ),
        ],
      ),
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            taskPage: (_) => HomeWidget(
              onSignOutPressed: () =>
                  context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            ),
            calendarPage: (_) => const Center(
              child: Text("Calendar page"),
            ),
            homeworkForm: (_) => const Center(
              child: Text("Create homework form"),
            ),
          );
        },
      ),
    );
  }
}

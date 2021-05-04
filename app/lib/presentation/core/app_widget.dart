import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/sign_in/sign_in_page.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  Widget buildContent() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: ExtendedNavigator.builder(router: AppRouter()),
        home: SignInPage(),
      ),
    );
  }

  Widget iniatialzeApp(AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.hasError) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text("Error"),
          ),
        ),
      );
    }
    if (snapshot.connectionState == ConnectionState.done) {
      return buildContent();
    }

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Loading for Firebase..."),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        return iniatialzeApp(snapshot);
      },
    );
  }
}

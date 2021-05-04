import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  final bool showErrorMessages;
  final Function(String) onEmailChanged;
  final String Function() onEmailValidate;
  final Function(String) onPasswordChanged;
  final String Function() onPasswordValidate;
  final Function() onSignIn;

  const SignInForm({
    Key key,
    @required this.showErrorMessages,
    @required this.onEmailChanged,
    @required this.onEmailValidate,
    @required this.onPasswordChanged,
    @required this.onPasswordValidate,
    @required this.onSignIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f5fa),
      body: Center(
        child: Container(
          width: 400,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 50.0,
                  spreadRadius: -12,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Form(
              autovalidateMode: showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Agenda - Web Admin Console",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    autocorrect: false,
                    autofocus: true,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                        labelText: "Email"),
                    onChanged: (value) => onEmailChanged(value),
                    validator: (_) => onEmailValidate(),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    autocorrect: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        border: OutlineInputBorder(),
                        labelText: "Password"),
                    onChanged: (value) => onPasswordChanged(value),
                    validator: (_) => onPasswordValidate(),
                  ),
                  const SizedBox(height: 26),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => onSignIn(),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("Sign In"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  final bool autoValidate;
  final void Function(String value) onEmailChanged;
  final String Function() onEmailValidate;
  final void Function(String value) onPasswordChanged;
  final String Function() onPasswordValidate;
  final void Function() onSignInPressed;
  final void Function() onRegisterPressed;
  final void Function() onSignUpPressed;
  final void Function() onGoogleSignInPressed;

  const SignInForm({
    Key key,
    @required this.autoValidate,
    @required this.onEmailChanged,
    @required this.onEmailValidate,
    @required this.onPasswordChanged,
    @required this.onPasswordValidate,
    @required this.onSignInPressed,
    @required this.onRegisterPressed,
    @required this.onSignUpPressed,
    @required this.onGoogleSignInPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Form(
        autovalidateMode:
            autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: ListView(
          children: [
            const SizedBox(height: 32),
            const SizedBox(
              height: 250,
              child: Center(
                child: Text(
                  "📝",
                  style: TextStyle(fontSize: 150),
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (value) => onEmailChanged(value),
              validator: (_) => onEmailValidate(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              onChanged: (value) => onPasswordChanged(value),
              validator: (_) => onPasswordValidate(),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () => onSignInPressed(),
                  child: const Text("Sign In"),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: SizedBox(
                height: 45,
                child: OutlinedButton(
                  onPressed: () => onSignUpPressed(),
                  child: const Text("Sign Up"),
                ),
              ),
            ),
            const SizedBox(height: 22),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text("Or"),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () => onGoogleSignInPressed(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      width: 30,
                      image: AssetImage('assets/google.png'),
                    ),
                    SizedBox(width: 22),
                    Text(
                      "Sign In with Google",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

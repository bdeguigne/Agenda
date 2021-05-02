import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {

  final bool autoValidate;
  final void Function(String value) onFNameChanged;
  final String Function() onFNameValidate;
  final void Function(String value) onLNameChanged;
  final String Function() onLNameValidate;
  final void Function(String value) onEmailChanged;
  final String Function() onEmailValidate;
  final void Function(String value) onPasswordChanged;
  final String Function() onPasswordValidate;
  final void Function() onSignInPressed;
  final void Function() onSignUpPressed;

  const RegisterWidget({
    @required this.onFNameChanged,
    @required this.onFNameValidate,
    @required this.onLNameChanged,
    @required this.onLNameValidate,
    @required this.autoValidate,
    @required this.onEmailChanged,
    @required this.onEmailValidate,
    @required this.onPasswordChanged,
    @required this.onPasswordValidate,
    @required this.onSignInPressed,
    @required this.onSignUpPressed,
    Key key,
  }) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Form(
        autovalidateMode: AutovalidateMode.disabled,
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
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
              onChanged: (value) => widget.onFNameChanged(value),
              validator: (_) => widget.onFNameValidate(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
              onChanged: (value) => widget.onLNameChanged(value),
              validator: (_) => widget.onFNameValidate(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onChanged: (value) => widget.onEmailChanged(value),
              validator: (_) => widget.onEmailValidate(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              onChanged: (value) => widget.onPasswordChanged(value),
              validator: (_) => widget.onPasswordValidate(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm password',
              ),
              onChanged: (value) => widget.onPasswordChanged(value),
              validator: (_) => widget.onPasswordValidate(),
            ),
            new DropdownButton<String>(
              items: <String>['Teacher', 'Student',].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () => widget.onSignUpPressed,
                child: const Text("Sign Up"),
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
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}

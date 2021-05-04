import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  final bool autoValidate;
  final void Function(String value) onFNameChanged;
  final String Function() onFNameValidate;
  final void Function(String value) onLNameChanged;
  final String Function() onLNameValidate;
  final void Function(String value) onEmailChanged;
  final String Function() onEmailValidate;
  final void Function(String value) onPasswordChanged;
  final void Function(String value) onPasswordConfirmChanged;
  final String Function() onPasswordValidate;
  final String Function() onPasswordConfirmValidate;
  final void Function(String value) onRoleChanged;
  final void Function() onSignUpPressed;

  const RegisterForm({
    @required this.onFNameChanged,
    @required this.onFNameValidate,
    @required this.onLNameChanged,
    @required this.onLNameValidate,
    @required this.autoValidate,
    @required this.onEmailChanged,
    @required this.onEmailValidate,
    @required this.onPasswordChanged,
    @required this.onPasswordConfirmChanged,
    @required this.onPasswordValidate,
    @required this.onPasswordConfirmValidate,
    @required this.onRoleChanged,
    @required this.onSignUpPressed,
    Key key,
  }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String dropdownValue = 'Student';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: Form(
          autovalidateMode: widget.autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
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
                validator: (_) => widget.onLNameValidate(),
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
                onChanged: (value) => widget.onPasswordConfirmChanged(value),
                validator: (_) => widget.onPasswordConfirmValidate(),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 60,
                child: DropdownButton<String>(
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  value: dropdownValue,
                  items: <String>[
                    'Student',
                    'Teacher',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                    widget.onRoleChanged(newValue);
                  },
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () => widget.onSignUpPressed(),
                  child: const Text("Sign Up"),
                ),
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderRadius: BorderRadius.circular(2));
    const formFieldHeight = 80.0;

    validateUsername(String? value) {
      if (value == null || value.isEmpty) {
        return 'Invalid username';
      }
      if (value.length < 6) {
        return 'Username must be at least 6 characters.';
      }
      if (value.length > 20) {
        return 'Username must be no more than 20 characters.';
      }

      return null;
    }

    validatePassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Invalid password';
      }
      if (value.length < 6) {
        return 'Password must be at least 6 characters.';
      }
      if (value.length > 20) {
        return 'Password must be no more than 20 characters.';
      }

      return null;
    }

    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: formFieldHeight,
              child: TextFormField(
                  validator: validateUsername,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 11, right: 3, top: 14, bottom: 14),
                      errorStyle: const TextStyle(fontSize: 11, height: 0.3),
                      border: inputBorder,
                      labelText: 'Username')),
            ),
            SizedBox(
              height: formFieldHeight,
              child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  validator: validatePassword,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 11, right: 3, top: 14, bottom: 14),
                      errorStyle: const TextStyle(fontSize: 11, height: 0.3),
                      border: inputBorder,
                      labelText: 'Password')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // todo
                  } else {}
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text('Log in'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // todo
                  } else {}
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text('New Account'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

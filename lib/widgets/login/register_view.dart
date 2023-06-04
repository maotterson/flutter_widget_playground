import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController _password = TextEditingController();
    final TextEditingController _confirmPassword = TextEditingController();
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

    validateConfirmPassword(String? value) {
      if (_password.text != value) return 'Passwords do not match';
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
                      labelText: 'Username',
                      hintText: 'Create a username')),
            ),
            SizedBox(
              height: formFieldHeight,
              child: TextFormField(
                  controller: _password,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  validator: validatePassword,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 11, right: 3, top: 14, bottom: 14),
                      errorStyle: const TextStyle(fontSize: 11, height: 0.3),
                      border: inputBorder,
                      labelText: 'Password',
                      hintText: 'Choose a password')),
            ),
            SizedBox(
              height: formFieldHeight,
              child: TextFormField(
                  controller: _confirmPassword,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  validator: validateConfirmPassword,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 11, right: 3, top: 14, bottom: 14),
                    errorStyle: const TextStyle(fontSize: 11, height: 0.3),
                    border: inputBorder,
                    labelText: 'Confirm Password',
                  )),
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
                  child: Text('Create Account'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

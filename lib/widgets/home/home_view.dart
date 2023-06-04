import 'package:flutter/material.dart';
import 'package:flutter_widget_playground/widgets/login/login_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: !loggedIn ? const LoginView() : const Text("logged in"));
  }
}
